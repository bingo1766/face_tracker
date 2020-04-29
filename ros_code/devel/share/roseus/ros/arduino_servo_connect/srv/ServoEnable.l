;; Auto-generated. Do not edit!


(when (boundp 'arduino_servo_connect::ServoEnable)
  (if (not (find-package "ARDUINO_SERVO_CONNECT"))
    (make-package "ARDUINO_SERVO_CONNECT"))
  (shadow 'ServoEnable (find-package "ARDUINO_SERVO_CONNECT")))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOENABLE")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOENABLE"))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOENABLEREQUEST")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOENABLEREQUEST"))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOENABLERESPONSE")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOENABLERESPONSE"))

(in-package "ROS")





(defclass arduino_servo_connect::ServoEnableRequest
  :super ros::object
  :slots (_id _flag ))

(defmethod arduino_servo_connect::ServoEnableRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _flag (round __flag))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass arduino_servo_connect::ServoEnableResponse
  :super ros::object
  :slots ())

(defmethod arduino_servo_connect::ServoEnableResponse
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

(defclass arduino_servo_connect::ServoEnable
  :super ros::object
  :slots ())

(setf (get arduino_servo_connect::ServoEnable :md5sum-) "bdf13954fac71cd1ad130cc58e64cb5e")
(setf (get arduino_servo_connect::ServoEnable :datatype-) "arduino_servo_connect/ServoEnable")
(setf (get arduino_servo_connect::ServoEnable :request) arduino_servo_connect::ServoEnableRequest)
(setf (get arduino_servo_connect::ServoEnable :response) arduino_servo_connect::ServoEnableResponse)

(defmethod arduino_servo_connect::ServoEnableRequest
  (:response () (instance arduino_servo_connect::ServoEnableResponse :init)))

(setf (get arduino_servo_connect::ServoEnableRequest :md5sum-) "bdf13954fac71cd1ad130cc58e64cb5e")
(setf (get arduino_servo_connect::ServoEnableRequest :datatype-) "arduino_servo_connect/ServoEnableRequest")
(setf (get arduino_servo_connect::ServoEnableRequest :definition-)
      "uint8 id
uint8 flag
---

")

(setf (get arduino_servo_connect::ServoEnableResponse :md5sum-) "bdf13954fac71cd1ad130cc58e64cb5e")
(setf (get arduino_servo_connect::ServoEnableResponse :datatype-) "arduino_servo_connect/ServoEnableResponse")
(setf (get arduino_servo_connect::ServoEnableResponse :definition-)
      "uint8 id
uint8 flag
---

")



(provide :arduino_servo_connect/ServoEnable "bdf13954fac71cd1ad130cc58e64cb5e")


