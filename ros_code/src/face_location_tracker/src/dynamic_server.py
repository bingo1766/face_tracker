#!/usr/bin/env python
# _*_ coding:utf-8 _*_

'''

  Description:
      人脸跟踪时face_location节点代码可以使用dynamic_reconfigure来动态更新的
    节点参数。

'''
import rospy
from dynamic_reconfigure.server import Server
from face_location_tracker.cfg import faceLocationConfig

def callback(config, level):
    rospy.loginfo("x_min:{def_servo_x_min},x_max:{def_servo_x_max},y_min:{def_servo_y_min},y_max:{def_servo_y_max},\
move_step:{def_servo_move_step},move_delay:{face_tracker_move_delay},image_center_x:{def_image_center_x},\
image_center_y:{def_image_center_y},check_tolerance:{def_check_tolerance},topic_move_servo:{topic_move_servo},\
face_detect_timeout:{face_detect_timeout},face_tracker_speed:{face_tracker_speed}".format(**config))
    return config

if __name__ == "__main__":
    rospy.init_node("face_dynamic_reconfig", anonymous=False)
    Server(faceLocationConfig, callback)
    rospy.spin()
