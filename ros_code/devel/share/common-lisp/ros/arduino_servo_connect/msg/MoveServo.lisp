; Auto-generated. Do not edit!


(cl:in-package arduino_servo_connect-msg)


;//! \htmlinclude MoveServo.msg.html

(cl:defclass <MoveServo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (servoId
    :reader servoId
    :initarg :servoId
    :type cl:fixnum
    :initform 0)
   (targetPos
    :reader targetPos
    :initarg :targetPos
    :type cl:fixnum
    :initform 0)
   (delay
    :reader delay
    :initarg :delay
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoveServo (<MoveServo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveServo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveServo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-msg:<MoveServo> is deprecated: use arduino_servo_connect-msg:MoveServo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-msg:header-val is deprecated.  Use arduino_servo_connect-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'servoId-val :lambda-list '(m))
(cl:defmethod servoId-val ((m <MoveServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-msg:servoId-val is deprecated.  Use arduino_servo_connect-msg:servoId instead.")
  (servoId m))

(cl:ensure-generic-function 'targetPos-val :lambda-list '(m))
(cl:defmethod targetPos-val ((m <MoveServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-msg:targetPos-val is deprecated.  Use arduino_servo_connect-msg:targetPos instead.")
  (targetPos m))

(cl:ensure-generic-function 'delay-val :lambda-list '(m))
(cl:defmethod delay-val ((m <MoveServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-msg:delay-val is deprecated.  Use arduino_servo_connect-msg:delay instead.")
  (delay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveServo>) ostream)
  "Serializes a message object of type '<MoveServo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servoId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'targetPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveServo>) istream)
  "Deserializes a message object of type '<MoveServo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servoId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'targetPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveServo>)))
  "Returns string type for a message object of type '<MoveServo>"
  "arduino_servo_connect/MoveServo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveServo)))
  "Returns string type for a message object of type 'MoveServo"
  "arduino_servo_connect/MoveServo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveServo>)))
  "Returns md5sum for a message object of type '<MoveServo>"
  "a4ff497aa19abc6e9d982bd9133ef9b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveServo)))
  "Returns md5sum for a message object of type 'MoveServo"
  "a4ff497aa19abc6e9d982bd9133ef9b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveServo>)))
  "Returns full string definition for message of type '<MoveServo>"
  (cl:format cl:nil "# Move Servo msg, include three param: servoid, targetPos, delay~%Header header~%~%uint8 servoId~%uint16 targetPos~%uint8 delay~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveServo)))
  "Returns full string definition for message of type 'MoveServo"
  (cl:format cl:nil "# Move Servo msg, include three param: servoid, targetPos, delay~%Header header~%~%uint8 servoId~%uint16 targetPos~%uint8 delay~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveServo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveServo>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveServo
    (cl:cons ':header (header msg))
    (cl:cons ':servoId (servoId msg))
    (cl:cons ':targetPos (targetPos msg))
    (cl:cons ':delay (delay msg))
))
