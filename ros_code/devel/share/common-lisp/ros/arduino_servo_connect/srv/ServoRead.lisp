; Auto-generated. Do not edit!


(cl:in-package arduino_servo_connect-srv)


;//! \htmlinclude ServoRead-request.msg.html

(cl:defclass <ServoRead-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServoRead-request (<ServoRead-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoRead-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoRead-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<ServoRead-request> is deprecated: use arduino_servo_connect-srv:ServoRead-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ServoRead-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:id-val is deprecated.  Use arduino_servo_connect-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoRead-request>) ostream)
  "Serializes a message object of type '<ServoRead-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoRead-request>) istream)
  "Deserializes a message object of type '<ServoRead-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoRead-request>)))
  "Returns string type for a service object of type '<ServoRead-request>"
  "arduino_servo_connect/ServoReadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoRead-request)))
  "Returns string type for a service object of type 'ServoRead-request"
  "arduino_servo_connect/ServoReadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoRead-request>)))
  "Returns md5sum for a message object of type '<ServoRead-request>"
  "da1b9d707f4bc75aeccfced2e0cd2663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoRead-request)))
  "Returns md5sum for a message object of type 'ServoRead-request"
  "da1b9d707f4bc75aeccfced2e0cd2663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoRead-request>)))
  "Returns full string definition for message of type '<ServoRead-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoRead-request)))
  "Returns full string definition for message of type 'ServoRead-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoRead-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoRead-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoRead-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ServoRead-response.msg.html

(cl:defclass <ServoRead-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass ServoRead-response (<ServoRead-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoRead-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoRead-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<ServoRead-response> is deprecated: use arduino_servo_connect-srv:ServoRead-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ServoRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:value-val is deprecated.  Use arduino_servo_connect-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoRead-response>) ostream)
  "Serializes a message object of type '<ServoRead-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoRead-response>) istream)
  "Deserializes a message object of type '<ServoRead-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoRead-response>)))
  "Returns string type for a service object of type '<ServoRead-response>"
  "arduino_servo_connect/ServoReadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoRead-response)))
  "Returns string type for a service object of type 'ServoRead-response"
  "arduino_servo_connect/ServoReadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoRead-response>)))
  "Returns md5sum for a message object of type '<ServoRead-response>"
  "da1b9d707f4bc75aeccfced2e0cd2663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoRead-response)))
  "Returns md5sum for a message object of type 'ServoRead-response"
  "da1b9d707f4bc75aeccfced2e0cd2663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoRead-response>)))
  "Returns full string definition for message of type '<ServoRead-response>"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoRead-response)))
  "Returns full string definition for message of type 'ServoRead-response"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoRead-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoRead-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoRead-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServoRead)))
  'ServoRead-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServoRead)))
  'ServoRead-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoRead)))
  "Returns string type for a service object of type '<ServoRead>"
  "arduino_servo_connect/ServoRead")