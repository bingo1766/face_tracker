#!/usr/bin/env python
# _*_ coding:utf-8 _*_

'''
  Description:
      人脸跟踪时arduino节点代码可以使用dynamic_reconfigure来动态更新
    节点参数。
'''

import rospy

from dynamic_reconfigure.server import Server
from arduino_servo_connect.cfg import arduino_servoConfig

def callback(config, level):
    rospy.loginfo("pub_rate:{firmware_pub_rate},x_deg:{default_x_deg},y_deg:{default_y_deg},move_delay:{servo_move_delay}".format(**config))
    return config

if __name__ == "__main__":
    rospy.init_node("arduino_dynamic_reconfig", anonymous=False)

    Server(arduino_servoConfig, callback)
    rospy.spin()
