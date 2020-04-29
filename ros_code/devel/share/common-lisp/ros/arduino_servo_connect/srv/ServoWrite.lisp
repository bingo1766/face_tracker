; Auto-generated. Do not edit!


(cl:in-package arduino_servo_connect-srv)


;//! \htmlinclude ServoWrite-request.msg.html

(cl:defclass <ServoWrite-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (delay
    :reader delay
    :initarg :delay
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServoWrite-request (<ServoWrite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoWrite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoWrite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<ServoWrite-request> is deprecated: use arduino_servo_connect-srv:ServoWrite-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ServoWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:id-val is deprecated.  Use arduino_servo_connect-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ServoWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:value-val is deprecated.  Use arduino_servo_connect-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'delay-val :lambda-list '(m))
(cl:defmethod delay-val ((m <ServoWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:delay-val is deprecated.  Use arduino_servo_connect-srv:delay instead.")
  (delay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoWrite-request>) ostream)
  "Serializes a message object of type '<ServoWrite-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoWrite-request>) istream)
  "Deserializes a message object of type '<ServoWrite-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoWrite-request>)))
  "Returns string type for a service object of type '<ServoWrite-request>"
  "arduino_servo_connect/ServoWriteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoWrite-request)))
  "Returns string type for a service object of type 'ServoWrite-request"
  "arduino_servo_connect/ServoWriteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoWrite-request>)))
  "Returns md5sum for a message object of type '<ServoWrite-request>"
  "cfb890a96d9d635807919eed49fd22d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoWrite-request)))
  "Returns md5sum for a message object of type 'ServoWrite-request"
  "cfb890a96d9d635807919eed49fd22d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoWrite-request>)))
  "Returns full string definition for message of type '<ServoWrite-request>"
  (cl:format cl:nil "uint8 id~%int32 value~%uint8 delay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoWrite-request)))
  "Returns full string definition for message of type 'ServoWrite-request"
  (cl:format cl:nil "uint8 id~%int32 value~%uint8 delay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoWrite-request>))
  (cl:+ 0
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoWrite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoWrite-request
    (cl:cons ':id (id msg))
    (cl:cons ':value (value msg))
    (cl:cons ':delay (delay msg))
))
;//! \htmlinclude ServoWrite-response.msg.html

(cl:defclass <ServoWrite-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ServoWrite-response (<ServoWrite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoWrite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoWrite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<ServoWrite-response> is deprecated: use arduino_servo_connect-srv:ServoWrite-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoWrite-response>) ostream)
  "Serializes a message object of type '<ServoWrite-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoWrite-response>) istream)
  "Deserializes a message object of type '<ServoWrite-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoWrite-response>)))
  "Returns string type for a service object of type '<ServoWrite-response>"
  "arduino_servo_connect/ServoWriteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoWrite-response)))
  "Returns string type for a service object of type 'ServoWrite-response"
  "arduino_servo_connect/ServoWriteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoWrite-response>)))
  "Returns md5sum for a message object of type '<ServoWrite-response>"
  "cfb890a96d9d635807919eed49fd22d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoWrite-response)))
  "Returns md5sum for a message object of type 'ServoWrite-response"
  "cfb890a96d9d635807919eed49fd22d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoWrite-response>)))
  "Returns full string definition for message of type '<ServoWrite-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoWrite-response)))
  "Returns full string definition for message of type 'ServoWrite-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoWrite-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoWrite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoWrite-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServoWrite)))
  'ServoWrite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServoWrite)))
  'ServoWrite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoWrite)))
  "Returns string type for a service object of type '<ServoWrite>"
  "arduino_servo_connect/ServoWrite")