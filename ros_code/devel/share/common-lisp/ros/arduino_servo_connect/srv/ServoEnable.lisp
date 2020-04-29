; Auto-generated. Do not edit!


(cl:in-package arduino_servo_connect-srv)


;//! \htmlinclude ServoEnable-request.msg.html

(cl:defclass <ServoEnable-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServoEnable-request (<ServoEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<ServoEnable-request> is deprecated: use arduino_servo_connect-srv:ServoEnable-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ServoEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:id-val is deprecated.  Use arduino_servo_connect-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <ServoEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:flag-val is deprecated.  Use arduino_servo_connect-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoEnable-request>) ostream)
  "Serializes a message object of type '<ServoEnable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoEnable-request>) istream)
  "Deserializes a message object of type '<ServoEnable-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoEnable-request>)))
  "Returns string type for a service object of type '<ServoEnable-request>"
  "arduino_servo_connect/ServoEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoEnable-request)))
  "Returns string type for a service object of type 'ServoEnable-request"
  "arduino_servo_connect/ServoEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoEnable-request>)))
  "Returns md5sum for a message object of type '<ServoEnable-request>"
  "bdf13954fac71cd1ad130cc58e64cb5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoEnable-request)))
  "Returns md5sum for a message object of type 'ServoEnable-request"
  "bdf13954fac71cd1ad130cc58e64cb5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoEnable-request>)))
  "Returns full string definition for message of type '<ServoEnable-request>"
  (cl:format cl:nil "uint8 id~%uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoEnable-request)))
  "Returns full string definition for message of type 'ServoEnable-request"
  (cl:format cl:nil "uint8 id~%uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoEnable-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoEnable-request
    (cl:cons ':id (id msg))
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude ServoEnable-response.msg.html

(cl:defclass <ServoEnable-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ServoEnable-response (<ServoEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<ServoEnable-response> is deprecated: use arduino_servo_connect-srv:ServoEnable-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoEnable-response>) ostream)
  "Serializes a message object of type '<ServoEnable-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoEnable-response>) istream)
  "Deserializes a message object of type '<ServoEnable-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoEnable-response>)))
  "Returns string type for a service object of type '<ServoEnable-response>"
  "arduino_servo_connect/ServoEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoEnable-response)))
  "Returns string type for a service object of type 'ServoEnable-response"
  "arduino_servo_connect/ServoEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoEnable-response>)))
  "Returns md5sum for a message object of type '<ServoEnable-response>"
  "bdf13954fac71cd1ad130cc58e64cb5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoEnable-response)))
  "Returns md5sum for a message object of type 'ServoEnable-response"
  "bdf13954fac71cd1ad130cc58e64cb5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoEnable-response>)))
  "Returns full string definition for message of type '<ServoEnable-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoEnable-response)))
  "Returns full string definition for message of type 'ServoEnable-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoEnable-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoEnable-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServoEnable)))
  'ServoEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServoEnable)))
  'ServoEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoEnable)))
  "Returns string type for a service object of type '<ServoEnable>"
  "arduino_servo_connect/ServoEnable")