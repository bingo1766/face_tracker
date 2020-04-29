#!/bin/bash


# Description: Uninstall face_tracker service.


pid=`ps -ef|grep face_tracker_bringup|grep -v grep|awk '{print $2}'`
if [ -n "$pid" ]
then
    /usr/sbin/face_tracker_stop
fi

sudo systemctl disable face_tracker.service

sudo rm /usr/sbin/face_tracker_start
sudo rm /usr/sbin/face_tracker_stop
sudo rm /usr/sbin/face_tracker_restart

sudo rm /lib/systemd/system/face_tracker.service

exit 0
