# Install script for directory: /home/bingo/face_tracker/ros_code/src/arduino_servo_connect

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bingo/face_tracker/ros_code/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_servo_connect/msg" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_servo_connect/srv" TYPE FILE FILES
    "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv"
    "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv"
    "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv"
    "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv"
    "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_servo_connect/cmake" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/build/arduino_servo_connect/catkin_generated/installspace/arduino_servo_connect-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bingo/face_tracker/ros_code/devel/include/arduino_servo_connect")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bingo/face_tracker/ros_code/devel/share/roseus/ros/arduino_servo_connect")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bingo/face_tracker/ros_code/devel/share/common-lisp/ros/arduino_servo_connect")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bingo/face_tracker/ros_code/devel/share/gennodejs/ros/arduino_servo_connect")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/bingo/face_tracker/ros_code/devel/lib/python2.7/dist-packages/arduino_servo_connect")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/bingo/face_tracker/ros_code/devel/lib/python2.7/dist-packages/arduino_servo_connect")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/arduino_servo_connect" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/devel/include/arduino_servo_connect/arduino_paramsConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/arduino_servo_connect" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/devel/lib/python2.7/dist-packages/arduino_servo_connect/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/bingo/face_tracker/ros_code/devel/lib/python2.7/dist-packages/arduino_servo_connect/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/arduino_servo_connect" TYPE DIRECTORY FILES "/home/bingo/face_tracker/ros_code/devel/lib/python2.7/dist-packages/arduino_servo_connect/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/build/arduino_servo_connect/catkin_generated/installspace/arduino_servo_connect.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_servo_connect/cmake" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/build/arduino_servo_connect/catkin_generated/installspace/arduino_servo_connect-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_servo_connect/cmake" TYPE FILE FILES
    "/home/bingo/face_tracker/ros_code/build/arduino_servo_connect/catkin_generated/installspace/arduino_servo_connectConfig.cmake"
    "/home/bingo/face_tracker/ros_code/build/arduino_servo_connect/catkin_generated/installspace/arduino_servo_connectConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_servo_connect" TYPE FILE FILES "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/package.xml")
endif()

