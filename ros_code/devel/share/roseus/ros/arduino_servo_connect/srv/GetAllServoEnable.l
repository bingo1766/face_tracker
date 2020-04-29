;; Auto-generated. Do not edit!


(when (boundp 'arduino_servo_connect::GetAllServoEnable)
  (if (not (find-package "ARDUINO_SERVO_CONNECT"))
    (make-package "ARDUINO_SERVO_CONNECT"))
  (shadow 'GetAllServoEnable (find-package "ARDUINO_SERVO_CONNECT")))
(unless (find-package "ARDUINO_SERVO_CONNECT::GETALLSERVOENABLE")
  (make-package "ARDUINO_SERVO_CONNECT::GETALLSERVOENABLE"))
(unless (find-package "ARDUINO_SERVO_CONNECT::GETALLSERVOENABLEREQUEST")
  (make-package "ARDUINO_SERVO_CONNECT::GETALLSERVOENABLEREQUEST"))
(unless (find-package "ARDUINO_SERVO_CONNECT::GETALLSERVOENABLERESPONSE")
  (make-package "ARDUINO_SERVO_CONNECT::GETALLSERVOENABLERESPONSE"))

(in-package "ROS")





(defclass arduino_servo_connect::GetAllServoEnableRequest
  :super ros::object
  :slots ())

(defmethod arduino_servo_connect::GetAllServoEnableRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arduino_servo_connect::GetAllServoEnableResponse
  :super ros::object
  :slots (_enables ))

(defmethod arduino_servo_connect::GetAllServoEnableResponse
  (:init
   (&key
    ((:enables __enables) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _enables __enables)
   self)
  (:enables
   (&optional __enables)
   (if __enables (setq _enables __enables)) _enables)
  (:serialization-length
   ()
   (+
    ;; int32[] _enables
    (* 4    (length _enables)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _enables
     (write-long (length _enables) s)
     (dotimes (i (length _enables))
       (write-long (elt _enables i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _enables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enables (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _enables i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arduino_servo_connect::GetAllServoEnable
  :super ros::object
  :slots ())

(setf (get arduino_servo_connect::GetAllServoEnable :md5sum-) "fb3e3dbce60e36b185d663dfe470ce14")
(setf (get arduino_servo_connect::GetAllServoEnable :datatype-) "arduino_servo_connect/GetAllServoEnable")
(setf (get arduino_servo_connect::GetAllServoEnable :request) arduino_servo_connect::GetAllServoEnableRequest)
(setf (get arduino_servo_connect::GetAllServoEnable :response) arduino_servo_connect::GetAllServoEnableResponse)

(defmethod arduino_servo_connect::GetAllServoEnableRequest
  (:response () (instance arduino_servo_connect::GetAllServoEnableResponse :init)))

(setf (get arduino_servo_connect::GetAllServoEnableRequest :md5sum-) "fb3e3dbce60e36b185d663dfe470ce14")
(setf (get arduino_servo_connect::GetAllServoEnableRequest :datatype-) "arduino_servo_connect/GetAllServoEnableRequest")
(setf (get arduino_servo_connect::GetAllServoEnableRequest :definition-)
      "---
int32[] enables

")

(setf (get arduino_servo_connect::GetAllServoEnableResponse :md5sum-) "fb3e3dbce60e36b185d663dfe470ce14")
(setf (get arduino_servo_connect::GetAllServoEnableResponse :datatype-) "arduino_servo_connect/GetAllServoEnableResponse")
(setf (get arduino_servo_connect::GetAllServoEnableResponse :definition-)
      "---
int32[] enables

")



(provide :arduino_servo_connect/GetAllServoEnable "fb3e3dbce60e36b185d663dfe470ce14")


