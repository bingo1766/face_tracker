#!/usr/bin/env python
# _*_ coding:utf-8 _*_

"""
  Description:
    A ROS Node for the Arduino microcontroller.

"""

import os,rospy
from std_msgs.msg import UInt16
from arduino_driver import Arduino
from arduino_servo_connect.srv import *
from arduino_servo_connect.msg import *
from serial.serialutil import SerialException
import dynamic_reconfigure.client as DynamicReconfig

class ArduinoROS():
    def __init__(self):
        rospy.init_node('arduino_servo_node', log_level=rospy.INFO)
        self.dynamic_client = DynamicReconfig.Client("arduino_dynamic_reconfig",timeout=10,config_callback=self.dynamic_callBack)

        # Get the actual node name in case it is set in the launch file
        self.name = rospy.get_name()
        rospy.on_shutdown(self.shutdown)

        # Get all param
        self.getAllParams()

        #subscrib topic to move servo
        rospy.Subscriber(self.moveServoTopic, MoveServo, self.moveServoCB)

        #define publisher to pub arduino firmware version
        self.versionPub = rospy.Publisher(self.firmwareVerTopic, UInt16, queue_size=1)

        #define all services
        self.defineAllServices()

        # Initialize the controlller
        self.controller = Arduino(self.port, self.baud, self.timeout)
        self.controller.connect()
        rospy.loginfo("Connected to Arduino on port:" + self.port + " at " + str(self.baud) + " baud")

        # Enable servo x and servo y
        self.controller.servo_enable(self.servo_x_id, 1)
        self.controller.servo_enable(self.servo_y_id, 1)

        # while loop
        while not rospy.is_shutdown():
            rate = rospy.Rate(self.pubRate)
            firmwareVersion = self.controller.get_firmware_version()
            self.versionPub.publish(firmwareVersion)
            rate.sleep()


    def dynamicReconfig(self, paramList):
        self.pubRate = paramList['firmware_pub_rate']
        self.default_x_deg = paramList['default_x_deg']
        self.default_y_deg = paramList['default_y_deg']
        self.move_delay    = paramList['servo_move_delay']
        #rospy.loginfo("(%f,%d,%d,%d)" %(self.pubRate,self.default_x_deg,self.default_y_deg,self.move_delay))

    def dynamic_callBack(self, config):
        dynamic_param = self.dynamic_client.get_configuration(timeout=3)
        self.dynamicReconfig(dynamic_param)

    def defineAllServices(self):
        # Two services to position/read postion a PWM servo
        rospy.Service('~servo_write', ServoWrite, self.ServoWriteHandler)
        rospy.Service('~servo_read',  ServoRead,  self.ServoReadHandler)

        # Service to enable a servo
        rospy.Service('~servo_enable', ServoEnable, self.ServoEnableHandler)

        # Two services to get all servos position and enabled status
        rospy.Service('~get_all_servos_pos',    GetAllServoPos,    self.GetAllServoPosHandler)
        rospy.Service('~get_all_servos_enable', GetAllServoEnable, self.GetAllServoEnableHandler)

    def moveServoCB(self, msgData):
        self.moveServo(msgData.servoId, msgData.targetPos, msgData.delay)

    def getAllParams(self):
        self.port = rospy.get_param("~port", "/dev/ttyUSB0")
        self.baud = int(rospy.get_param("~baud", 57600))
        self.timeout = rospy.get_param("~timeout", 0.5)
        self.servo_x_id = rospy.get_param("~servo_x_id", 3)
        self.servo_y_id = rospy.get_param("~servo_y_id", 4)
        self.pubRate = rospy.get_param("~version_pub_rate", 0.1)
        self.move_delay = rospy.get_param("~servo_move_delay", 60)
        self.moveServoTopic = rospy.get_param("~move_servo_topic", "/arduino_servo_node/moveServoTopic")
        self.firmwareVerTopic = rospy.get_param("~firmware_version_topic", "/arduino_servo_node/firmwareVersionTopic")
        self.default_x_deg = rospy.get_param("~default_x_deg", 90)
        self.default_y_deg = rospy.get_param("~default_y_deg", 0)

    # Service callback functions
    def ServoWriteHandler(self, req):
        self.controller.servo_write(req.id, req.value, req.delay)
        return ServoWriteResponse()

    def ServoReadHandler(self, req):
        pos = self.controller.servo_read(req.id)
        return ServoReadResponse(pos)

    def ServoEnableHandler(self, req):
        self.controller.servo_enable(req.id, req.flag)
        return ServoEnableResponse()

    def GetAllServoPosHandler(self, req):
        positions = []
        positions = self.controller.getAllServosPos()
        return GetAllServoPosResponse(positions)

    def GetAllServoEnableHandler(self, req):
        enabled = []
        enabled = self.controller.getAllServosEnabled()
        return GetAllServoEnableResponse(enabled)

    def moveServo(self, servo_id, move_angular, move_delay):
        self.controller.servo_write(servo_id, move_angular, move_delay)

    def enableServoByID(self, servo_id, flag):
        self.controller.servo_enable(servo_id, flag)

    def shutdown(self):
        rospy.logwarn("Shutting down arduino_servo_node ...")
        # init servo position to origin
        self.moveServo(self.servo_x_id, self.default_x_deg, self.move_delay)
        self.moveServo(self.servo_y_id, self.default_y_deg, self.move_delay)

        # Close the serial port
        try:
            self.controller.close()
        except:
            pass
        finally:
            rospy.logwarn("Arduino serial port closed.")
            os._exit(0)

if __name__ == '__main__':
    try:
        myArduino = ArduinoROS()
    except SerialException:
        rospy.logerr("Serial exception trying to open port.")
        os._exit(1)

