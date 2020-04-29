;; Auto-generated. Do not edit!


(when (boundp 'arduino_servo_connect::MoveServo)
  (if (not (find-package "ARDUINO_SERVO_CONNECT"))
    (make-package "ARDUINO_SERVO_CONNECT"))
  (shadow 'MoveServo (find-package "ARDUINO_SERVO_CONNECT")))
(unless (find-package "ARDUINO_SERVO_CONNECT::MOVESERVO")
  (make-package "ARDUINO_SERVO_CONNECT::MOVESERVO"))

(in-package "ROS")
;;//! \htmlinclude MoveServo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass arduino_servo_connect::MoveServo
  :super ros::object
  :slots (_header _servoId _targetPos _delay ))

(defmethod arduino_servo_connect::MoveServo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:servoId __servoId) 0)
    ((:targetPos __targetPos) 0)
    ((:delay __delay) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _servoId (round __servoId))
   (setq _targetPos (round __targetPos))
   (setq _delay (round __delay))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:servoId
   (&optional __servoId)
   (if __servoId (setq _servoId __servoId)) _servoId)
  (:targetPos
   (&optional __targetPos)
   (if __targetPos (setq _targetPos __targetPos)) _targetPos)
  (:delay
   (&optional __delay)
   (if __delay (setq _delay __delay)) _delay)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _servoId
    1
    ;; uint16 _targetPos
    2
    ;; uint8 _delay
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _servoId
       (write-byte _servoId s)
     ;; uint16 _targetPos
       (write-word _targetPos s)
     ;; uint8 _delay
       (write-byte _delay s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _servoId
     (setq _servoId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _targetPos
     (setq _targetPos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _delay
     (setq _delay (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get arduino_servo_connect::MoveServo :md5sum-) "a4ff497aa19abc6e9d982bd9133ef9b7")
(setf (get arduino_servo_connect::MoveServo :datatype-) "arduino_servo_connect/MoveServo")
(setf (get arduino_servo_connect::MoveServo :definition-)
      "# Move Servo msg, include three param: servoid, targetPos, delay
Header header

uint8 servoId
uint16 targetPos
uint8 delay

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :arduino_servo_connect/MoveServo "a4ff497aa19abc6e9d982bd9133ef9b7")


