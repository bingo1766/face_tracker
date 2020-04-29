#!/bin/bash

# Description: install face tracker service to /lib/systemd/system,this will
#    auto roslaunch face_tracker when poweron.


sudo cp ./face_tracker_service/face_tracker_start /usr/sbin/
sudo cp ./face_tracker_service/face_tracker_stop /usr/sbin/
sudo cp ./face_tracker_service/face_tracker_restart /usr/sbin/
sudo cp ./face_tracker_service/face_tracker.service /lib/systemd/system/

sudo systemctl enable face_tracker.service

exit 0
