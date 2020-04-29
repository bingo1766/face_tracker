;; Auto-generated. Do not edit!


(when (boundp 'arduino_servo_connect::ServoRead)
  (if (not (find-package "ARDUINO_SERVO_CONNECT"))
    (make-package "ARDUINO_SERVO_CONNECT"))
  (shadow 'ServoRead (find-package "ARDUINO_SERVO_CONNECT")))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOREAD")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOREAD"))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOREADREQUEST")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOREADREQUEST"))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOREADRESPONSE")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOREADRESPONSE"))

(in-package "ROS")





(defclass arduino_servo_connect::ServoReadRequest
  :super ros::object
  :slots (_id ))

(defmethod arduino_servo_connect::ServoReadRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass arduino_servo_connect::ServoReadResponse
  :super ros::object
  :slots (_value ))

(defmethod arduino_servo_connect::ServoReadResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass arduino_servo_connect::ServoRead
  :super ros::object
  :slots ())

(setf (get arduino_servo_connect::ServoRead :md5sum-) "da1b9d707f4bc75aeccfced2e0cd2663")
(setf (get arduino_servo_connect::ServoRead :datatype-) "arduino_servo_connect/ServoRead")
(setf (get arduino_servo_connect::ServoRead :request) arduino_servo_connect::ServoReadRequest)
(setf (get arduino_servo_connect::ServoRead :response) arduino_servo_connect::ServoReadResponse)

(defmethod arduino_servo_connect::ServoReadRequest
  (:response () (instance arduino_servo_connect::ServoReadResponse :init)))

(setf (get arduino_servo_connect::ServoReadRequest :md5sum-) "da1b9d707f4bc75aeccfced2e0cd2663")
(setf (get arduino_servo_connect::ServoReadRequest :datatype-) "arduino_servo_connect/ServoReadRequest")
(setf (get arduino_servo_connect::ServoReadRequest :definition-)
      "uint8 id
---
int32 value

")

(setf (get arduino_servo_connect::ServoReadResponse :md5sum-) "da1b9d707f4bc75aeccfced2e0cd2663")
(setf (get arduino_servo_connect::ServoReadResponse :datatype-) "arduino_servo_connect/ServoReadResponse")
(setf (get arduino_servo_connect::ServoReadResponse :definition-)
      "uint8 id
---
int32 value

")



(provide :arduino_servo_connect/ServoRead "da1b9d707f4bc75aeccfced2e0cd2663")


