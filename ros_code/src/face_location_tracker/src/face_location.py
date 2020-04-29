#!/usr/bin/env python
# _*_ coding:utf-8 _*_

"""
  Description:
    This is a demo of running face recognition on live video from your webcam. It includes some
    basic performance tweaks to make things run a lot faster:
    (1). Process each video frame at 1/4 resolution (though still display it at full resolution)
    (2). Only detect faces in every other frame of video.
    (3). At same time only detect one face.

"""
import rospy
import os,cv2
#import os
#import cv2
import face_recognition
from arduino_servo_connect.srv import *
from arduino_servo_connect.msg import *
import dynamic_reconfigure.client as DynamicReconfig

class FaceLocation():
    def __init__(self):
        rospy.init_node('face_location_node', log_level=rospy.INFO)
        self.name = rospy.get_name()
        rospy.on_shutdown(self.shutdown)

        self.get_config_param()
        self.dynamic_client = DynamicReconfig.Client("face_dynamic_reconfig",timeout=10,config_callback=self.dynamicCallBack)

        # define move servo topic publisher
        self.moveServoPub = rospy.Publisher(self.moveServoTopic, MoveServo, queue_size=2)

        # Get a reference to webcam #0 (the default one)
        self.video_capture = cv2.VideoCapture(self.camera_ID)

        # Initialize some variables
        face_locations = []
        process_this_frame = 0
        top = 0
        right = 0
        bottom = 0
        left = 0
        onceMoveOrgDeg = False
        recordTime = 0.0

        while not rospy.is_shutdown():
            ret, frame = self.video_capture.read()

            # Resize frame of video to 1/4 size for faster face recognition processing
            small_frame = cv2.resize(frame, (0, 0), fx=0.25, fy=0.25)

            # Convert the image from BGR color (which OpenCV uses) to RGB color (which face_recognition uses)
            rgb_small_frame = small_frame[:, :, ::-1]

            # Only process every other frame of video
            if process_this_frame % self.face_tracker_speed == 0:
                process_this_frame = 0
                # Find all the faces in the current frame of video
                face_locations = face_recognition.face_locations(rgb_small_frame)

            process_this_frame = process_this_frame + 1

            if (len(face_locations) == 0 and (not onceMoveOrgDeg)):
                checkTime = rospy.get_time()
                if((checkTime-recordTime) > self.face_detect_timeout):
                    self.moveServoOrgDeg()
                    onceMoveOrgDeg = True

            # calculate face center ready to move servo
            for (top, right, bottom, left) in face_locations:
                onceMoveOrgDeg = False
                recordTime = rospy.get_time()
                # Scale back up face locations since the frame we detected in was scaled to 1/4 size
                top    *= 4
                right  *= 4
                bottom *= 4
                left   *= 4

                # print the face center postion
                center_x = left+(right-left)/2
                center_y = top+(bottom-top)/2
                #rospy.loginfo("(%d,%d)" %(center_x, center_y))
                self.check_face_move_servo(center_x, center_y)
                break # at same time only recognize one face

    def dynamicCallBack(self, config):
        paramList = self.dynamic_client.get_configuration(timeout = 3)
        self.servo_x_min_pose = paramList['def_servo_x_min']
        self.servo_x_max_pose = paramList['def_servo_x_max']
        self.servo_y_min_pose = paramList['def_servo_y_min']
        self.servo_y_max_pose = paramList['def_servo_y_max']

        self.servo_move_step = paramList['def_servo_move_step']
        self.servo_move_delay = paramList['face_tracker_move_delay']
        self.image_center_x = paramList['def_image_center_x']
        self.image_center_y = paramList['def_image_center_y']
        self.check_tolerance = paramList['def_check_tolerance']
        self.face_detect_timeout = paramList['face_detect_timeout']
        self.topicMoveServoFlag = paramList['topic_move_servo']
        self.face_tracker_speed = paramList['face_tracker_speed']

    def get_config_param(self):
        self.camera_ID = rospy.get_param("~camera_id", 1)
        self.servo_x_ID = rospy.get_param("~servo_x_id", 3)
        self.servo_y_ID = rospy.get_param("~servo_y_id", 4)
        self.servo_x_org_deg = rospy.get_param("~default_servo_x_deg", 90)
        self.servo_y_org_deg = rospy.get_param("~default_servo_y_deg", 0)
        self.servo_x_pose = self.servo_x_org_deg
        self.servo_y_pose = self.servo_y_org_deg

        self.servo_x_min_pose = rospy.get_param("~default_servo_x_min", 0)
        self.servo_x_max_pose = rospy.get_param("~default_servo_x_max", 180)
        self.servo_y_min_pose = rospy.get_param("~default_servo_y_min", 0)
        self.servo_y_max_pose = rospy.get_param("~default_servo_y_max", 90)

        self.servo_move_step = rospy.get_param("~default_servo_move_step", 1)
        self.servo_move_delay = rospy.get_param("~face_tracker_move_delay", 0)
        self.image_center_x = rospy.get_param("~default_image_center_x", 320)
        self.image_center_y = rospy.get_param("~default_image_center_y", 240)
        self.check_tolerance = rospy.get_param("~default_check_tolerance", 65)
        self.moveServoTopic = rospy.get_param("~move_servo_topic", "/arduino_servo_node/moveServoTopic")
        self.topicMoveServoFlag = rospy.get_param("~topic_move_servo", True)
        self.face_tracker_speed = rospy.get_param("~face_tracker_speed", 5)
        self.face_detect_timeout = rospy.get_param("~face_detect_timeout", 3.0)

    def moveServoOrgDeg(self):
        self.move_servo(self.servo_x_ID, self.servo_x_org_deg, self.servo_move_delay+30)
        self.move_servo(self.servo_y_ID, self.servo_y_org_deg, self.servo_move_delay+30)
        self.servo_x_pose = self.servo_x_org_deg
        self.servo_y_pose = self.servo_y_org_deg

    def move_servo(self, servoId, position, delay):
        if self.topicMoveServoFlag:
            self.topic_move_servo(servoId, position, delay)
        else:
            self.server_move_servo(servoId, position, delay)

    def server_move_servo(self, servo_id, position, delay):
        rospy.wait_for_service('/arduino_servo_node/servo_write')
        try:
            move_servo_service = rospy.ServiceProxy("/arduino_servo_node/servo_write", ServoWrite)
            move_servo_service(servo_id, position, delay)
        except rospy.ServiceException:
            rospy.logerr("move servo service call failed ! " )

    def topic_move_servo(self, servo_id, position, delay):
        moveServoMsg = MoveServo()
        moveServoMsg.header.frame_id = "base_link"
        moveServoMsg.header.stamp = rospy.Time.now()
        moveServoMsg.servoId = servo_id
        moveServoMsg.targetPos = position
        moveServoMsg.delay = delay

        self.moveServoPub.publish(moveServoMsg)

    def check_face_move_servo(self, center_x, center_y):
        check_move_right = self.image_center_x - self.check_tolerance
        check_move_left  = self.image_center_x + self.check_tolerance
        self.check_move_x(center_x, check_move_right, check_move_left)

        check_move_up   = self.image_center_y - self.check_tolerance
        check_move_down = self.image_center_y + self.check_tolerance
        self.check_move_y(center_y, check_move_up, check_move_down)

    def check_move_y(self, center_y, move_up, move_down):
        if center_y < move_up:
            if self.servo_y_pose < self.servo_y_max_pose:
                self.servo_y_pose += self.servo_move_step
                self.move_servo(self.servo_y_ID, self.servo_y_pose, self.servo_move_delay)
            rospy.loginfo("Move up:%d" %(self.servo_y_pose))
        elif center_y > move_down:
            if self.servo_y_pose > self.servo_y_min_pose:
                self.servo_y_pose -= self.servo_move_step
                self.move_servo(self.servo_y_ID, self.servo_y_pose, self.servo_move_delay)
            rospy.loginfo("Move down:%d" %(self.servo_y_pose))
        #else:
            #don't move,do nothing only print log info msg.
            #rospy.loginfo("keep axis-y position")

    def check_move_x(self, center_x, move_right, move_left):
        if center_x < move_right:
            if self.servo_x_pose < self.servo_x_max_pose:
                self.servo_x_pose += self.servo_move_step
                self.move_servo(self.servo_x_ID, self.servo_x_pose, self.servo_move_delay)
            rospy.loginfo("Move right:%d" %(self.servo_x_pose))
        elif center_x > move_left:
            if self.servo_x_pose > self.servo_x_min_pose:
                self.servo_x_pose -= self.servo_move_step
                self.move_servo(self.servo_x_ID, self.servo_x_pose, self.servo_move_delay)
            rospy.loginfo("Move left:%d" %(self.servo_x_pose))
        #else:
            #don't move
            #rospy.loginfo("keep axis-x position")

    def shutdown(self):
        # Release handle to the webcam
        rospy.logwarn("now will shutdown face_location_node ...")
        self.video_capture.release()
        cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        face_location = FaceLocation()
        rospy.spin()
    except Exception as e:
        rospy.logerr("%s", str(e))
        os._exit(1)

