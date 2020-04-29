#!/bin/bash

cd
cd face_tracker&&git pull origin kinetic-devel
cd ros_code&&catkin_make
source devel/setup.bash
roslaunch face_tracker_bringup face_tracker_bringup.launch

exit 0
