; Auto-generated. Do not edit!


(cl:in-package arduino_servo_connect-srv)


;//! \htmlinclude GetAllServoEnable-request.msg.html

(cl:defclass <GetAllServoEnable-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAllServoEnable-request (<GetAllServoEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllServoEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllServoEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<GetAllServoEnable-request> is deprecated: use arduino_servo_connect-srv:GetAllServoEnable-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllServoEnable-request>) ostream)
  "Serializes a message object of type '<GetAllServoEnable-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllServoEnable-request>) istream)
  "Deserializes a message object of type '<GetAllServoEnable-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllServoEnable-request>)))
  "Returns string type for a service object of type '<GetAllServoEnable-request>"
  "arduino_servo_connect/GetAllServoEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllServoEnable-request)))
  "Returns string type for a service object of type 'GetAllServoEnable-request"
  "arduino_servo_connect/GetAllServoEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllServoEnable-request>)))
  "Returns md5sum for a message object of type '<GetAllServoEnable-request>"
  "fb3e3dbce60e36b185d663dfe470ce14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllServoEnable-request)))
  "Returns md5sum for a message object of type 'GetAllServoEnable-request"
  "fb3e3dbce60e36b185d663dfe470ce14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllServoEnable-request>)))
  "Returns full string definition for message of type '<GetAllServoEnable-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllServoEnable-request)))
  "Returns full string definition for message of type 'GetAllServoEnable-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllServoEnable-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllServoEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllServoEnable-request
))
;//! \htmlinclude GetAllServoEnable-response.msg.html

(cl:defclass <GetAllServoEnable-response> (roslisp-msg-protocol:ros-message)
  ((enables
    :reader enables
    :initarg :enables
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetAllServoEnable-response (<GetAllServoEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllServoEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllServoEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<GetAllServoEnable-response> is deprecated: use arduino_servo_connect-srv:GetAllServoEnable-response instead.")))

(cl:ensure-generic-function 'enables-val :lambda-list '(m))
(cl:defmethod enables-val ((m <GetAllServoEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:enables-val is deprecated.  Use arduino_servo_connect-srv:enables instead.")
  (enables m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllServoEnable-response>) ostream)
  "Serializes a message object of type '<GetAllServoEnable-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'enables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'enables))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllServoEnable-response>) istream)
  "Deserializes a message object of type '<GetAllServoEnable-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'enables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'enables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllServoEnable-response>)))
  "Returns string type for a service object of type '<GetAllServoEnable-response>"
  "arduino_servo_connect/GetAllServoEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllServoEnable-response)))
  "Returns string type for a service object of type 'GetAllServoEnable-response"
  "arduino_servo_connect/GetAllServoEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllServoEnable-response>)))
  "Returns md5sum for a message object of type '<GetAllServoEnable-response>"
  "fb3e3dbce60e36b185d663dfe470ce14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllServoEnable-response)))
  "Returns md5sum for a message object of type 'GetAllServoEnable-response"
  "fb3e3dbce60e36b185d663dfe470ce14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllServoEnable-response>)))
  "Returns full string definition for message of type '<GetAllServoEnable-response>"
  (cl:format cl:nil "int32[] enables~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllServoEnable-response)))
  "Returns full string definition for message of type 'GetAllServoEnable-response"
  (cl:format cl:nil "int32[] enables~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllServoEnable-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'enables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllServoEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllServoEnable-response
    (cl:cons ':enables (enables msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAllServoEnable)))
  'GetAllServoEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAllServoEnable)))
  'GetAllServoEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllServoEnable)))
  "Returns string type for a service object of type '<GetAllServoEnable>"
  "arduino_servo_connect/GetAllServoEnable")