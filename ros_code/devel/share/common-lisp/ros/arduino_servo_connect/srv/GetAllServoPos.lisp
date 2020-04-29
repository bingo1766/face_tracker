; Auto-generated. Do not edit!


(cl:in-package arduino_servo_connect-srv)


;//! \htmlinclude GetAllServoPos-request.msg.html

(cl:defclass <GetAllServoPos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAllServoPos-request (<GetAllServoPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllServoPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllServoPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<GetAllServoPos-request> is deprecated: use arduino_servo_connect-srv:GetAllServoPos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllServoPos-request>) ostream)
  "Serializes a message object of type '<GetAllServoPos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllServoPos-request>) istream)
  "Deserializes a message object of type '<GetAllServoPos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllServoPos-request>)))
  "Returns string type for a service object of type '<GetAllServoPos-request>"
  "arduino_servo_connect/GetAllServoPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllServoPos-request)))
  "Returns string type for a service object of type 'GetAllServoPos-request"
  "arduino_servo_connect/GetAllServoPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllServoPos-request>)))
  "Returns md5sum for a message object of type '<GetAllServoPos-request>"
  "a2a9139ca9bf4352767912894c0d0ece")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllServoPos-request)))
  "Returns md5sum for a message object of type 'GetAllServoPos-request"
  "a2a9139ca9bf4352767912894c0d0ece")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllServoPos-request>)))
  "Returns full string definition for message of type '<GetAllServoPos-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllServoPos-request)))
  "Returns full string definition for message of type 'GetAllServoPos-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllServoPos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllServoPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllServoPos-request
))
;//! \htmlinclude GetAllServoPos-response.msg.html

(cl:defclass <GetAllServoPos-response> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetAllServoPos-response (<GetAllServoPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllServoPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllServoPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_servo_connect-srv:<GetAllServoPos-response> is deprecated: use arduino_servo_connect-srv:GetAllServoPos-response instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <GetAllServoPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_servo_connect-srv:positions-val is deprecated.  Use arduino_servo_connect-srv:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllServoPos-response>) ostream)
  "Serializes a message object of type '<GetAllServoPos-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
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
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllServoPos-response>) istream)
  "Deserializes a message object of type '<GetAllServoPos-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllServoPos-response>)))
  "Returns string type for a service object of type '<GetAllServoPos-response>"
  "arduino_servo_connect/GetAllServoPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllServoPos-response)))
  "Returns string type for a service object of type 'GetAllServoPos-response"
  "arduino_servo_connect/GetAllServoPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllServoPos-response>)))
  "Returns md5sum for a message object of type '<GetAllServoPos-response>"
  "a2a9139ca9bf4352767912894c0d0ece")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllServoPos-response)))
  "Returns md5sum for a message object of type 'GetAllServoPos-response"
  "a2a9139ca9bf4352767912894c0d0ece")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllServoPos-response>)))
  "Returns full string definition for message of type '<GetAllServoPos-response>"
  (cl:format cl:nil "int32[] positions~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllServoPos-response)))
  "Returns full string definition for message of type 'GetAllServoPos-response"
  (cl:format cl:nil "int32[] positions~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllServoPos-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllServoPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllServoPos-response
    (cl:cons ':positions (positions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAllServoPos)))
  'GetAllServoPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAllServoPos)))
  'GetAllServoPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllServoPos)))
  "Returns string type for a service object of type '<GetAllServoPos>"
  "arduino_servo_connect/GetAllServoPos")