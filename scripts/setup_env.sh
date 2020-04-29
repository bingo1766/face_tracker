#!/bin/bash

#################################################
#################################################
# Description: 该脚本是为了能够正常运行人脸识别
#  所需要安装的必要软件包.dlib和face_recognition
#  这两个软件包,其中dlib使用源码编译安装.
#################################################

#################################################
SCRIPTS_PATH=$(dirname $(readlink -f "$0"))
WS_PATH=${SCRIPTS_PATH%scripts}

cd ../prerequire_pkg/

#download dlib library source code
git clone https://github.com/davisking/dlib.git
cd dlib
mkdir build; cd build; cmake ..; cmake --build .
cd ..
sudo python setup.py install

#install face_recognition for pip2(python2.7)
sudo -H pip install --upgrade pip

cd ..
sudo -H pip install face_recognition

#make ros code
cd ../ros_code
catkin_make

#config env to .bashrc file
source devel/setup.bash
echo "#config face_tracker project env by corvin" >>~/.bashrc
echo "source ${WS_PATH}ros_code/devel/setup.bash" >> ~/.bashrc
