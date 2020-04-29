# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arduino_servo_connect: 1 messages, 5 services")

set(MSG_I_FLAGS "-Iarduino_servo_connect:/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arduino_servo_connect_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" NAME_WE)
add_custom_target(_arduino_servo_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_servo_connect" "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" ""
)

get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" NAME_WE)
add_custom_target(_arduino_servo_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_servo_connect" "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" ""
)

get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" NAME_WE)
add_custom_target(_arduino_servo_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_servo_connect" "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" ""
)

get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" NAME_WE)
add_custom_target(_arduino_servo_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_servo_connect" "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" ""
)

get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" NAME_WE)
add_custom_target(_arduino_servo_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_servo_connect" "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" NAME_WE)
add_custom_target(_arduino_servo_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_servo_connect" "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
)

### Generating Services
_generate_srv_cpp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_cpp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_cpp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_cpp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_cpp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
)

### Generating Module File
_generate_module_cpp(arduino_servo_connect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arduino_servo_connect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arduino_servo_connect_generate_messages arduino_servo_connect_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_cpp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_cpp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_cpp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_cpp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_cpp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_cpp _arduino_servo_connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_servo_connect_gencpp)
add_dependencies(arduino_servo_connect_gencpp arduino_servo_connect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_servo_connect_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
)

### Generating Services
_generate_srv_eus(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_eus(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_eus(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_eus(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_eus(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
)

### Generating Module File
_generate_module_eus(arduino_servo_connect
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(arduino_servo_connect_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(arduino_servo_connect_generate_messages arduino_servo_connect_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_eus _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_eus _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_eus _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_eus _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_eus _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_eus _arduino_servo_connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_servo_connect_geneus)
add_dependencies(arduino_servo_connect_geneus arduino_servo_connect_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_servo_connect_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
)

### Generating Services
_generate_srv_lisp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_lisp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_lisp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_lisp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_lisp(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
)

### Generating Module File
_generate_module_lisp(arduino_servo_connect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arduino_servo_connect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arduino_servo_connect_generate_messages arduino_servo_connect_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_lisp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_lisp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_lisp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_lisp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_lisp _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_lisp _arduino_servo_connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_servo_connect_genlisp)
add_dependencies(arduino_servo_connect_genlisp arduino_servo_connect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_servo_connect_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
)

### Generating Services
_generate_srv_nodejs(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_nodejs(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_nodejs(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_nodejs(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_nodejs(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
)

### Generating Module File
_generate_module_nodejs(arduino_servo_connect
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(arduino_servo_connect_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(arduino_servo_connect_generate_messages arduino_servo_connect_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_nodejs _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_nodejs _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_nodejs _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_nodejs _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_nodejs _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_nodejs _arduino_servo_connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_servo_connect_gennodejs)
add_dependencies(arduino_servo_connect_gennodejs arduino_servo_connect_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_servo_connect_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
)

### Generating Services
_generate_srv_py(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_py(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_py(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_py(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
)
_generate_srv_py(arduino_servo_connect
  "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
)

### Generating Module File
_generate_module_py(arduino_servo_connect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arduino_servo_connect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arduino_servo_connect_generate_messages arduino_servo_connect_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoRead.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_py _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoPos.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_py _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/GetAllServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_py _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoEnable.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_py _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg/MoveServo.msg" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_py _arduino_servo_connect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/srv/ServoWrite.srv" NAME_WE)
add_dependencies(arduino_servo_connect_generate_messages_py _arduino_servo_connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_servo_connect_genpy)
add_dependencies(arduino_servo_connect_genpy arduino_servo_connect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_servo_connect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_servo_connect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arduino_servo_connect_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_servo_connect
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(arduino_servo_connect_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_servo_connect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arduino_servo_connect_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_servo_connect
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(arduino_servo_connect_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_servo_connect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arduino_servo_connect_generate_messages_py std_msgs_generate_messages_py)
endif()
