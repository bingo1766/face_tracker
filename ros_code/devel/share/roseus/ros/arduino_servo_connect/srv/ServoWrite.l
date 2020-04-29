;; Auto-generated. Do not edit!


(when (boundp 'arduino_servo_connect::ServoWrite)
  (if (not (find-package "ARDUINO_SERVO_CONNECT"))
    (make-package "ARDUINO_SERVO_CONNECT"))
  (shadow 'ServoWrite (find-package "ARDUINO_SERVO_CONNECT")))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOWRITE")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOWRITE"))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOWRITEREQUEST")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOWRITEREQUEST"))
(unless (find-package "ARDUINO_SERVO_CONNECT::SERVOWRITERESPONSE")
  (make-package "ARDUINO_SERVO_CONNECT::SERVOWRITERESPONSE"))

(in-package "ROS")





(defclass arduino_servo_connect::ServoWriteRequest
  :super ros::object
  :slots (_id _value _delay ))

(defmethod arduino_servo_connect::ServoWriteRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:value __value) 0)
    ((:delay __delay) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _value (round __value))
   (setq _delay (round __delay))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:delay
   (&optional __delay)
   (if __delay (setq _delay __delay)) _delay)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int32 _value
    4
    ;; uint8 _delay
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int32 _value
       (write-long _value s)
     ;; uint8 _delay
       (write-byte _delay s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _delay
     (setq _delay (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass arduino_servo_connect::ServoWriteResponse
  :super ros::object
  :slots ())

(defmethod arduino_servo_connect::ServoWriteResponse
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

(defclass arduino_servo_connect::ServoWrite
  :super ros::object
  :slots ())

(setf (get arduino_servo_connect::ServoWrite :md5sum-) "cfb890a96d9d635807919eed49fd22d8")
(setf (get arduino_servo_connect::ServoWrite :datatype-) "arduino_servo_connect/ServoWrite")
(setf (get arduino_servo_connect::ServoWrite :request) arduino_servo_connect::ServoWriteRequest)
(setf (get arduino_servo_connect::ServoWrite :response) arduino_servo_connect::ServoWriteResponse)

(defmethod arduino_servo_connect::ServoWriteRequest
  (:response () (instance arduino_servo_connect::ServoWriteResponse :init)))

(setf (get arduino_servo_connect::ServoWriteRequest :md5sum-) "cfb890a96d9d635807919eed49fd22d8")
(setf (get arduino_servo_connect::ServoWriteRequest :datatype-) "arduino_servo_connect/ServoWriteRequest")
(setf (get arduino_servo_connect::ServoWriteRequest :definition-)
      "uint8 id
int32 value
uint8 delay
---

")

(setf (get arduino_servo_connect::ServoWriteResponse :md5sum-) "cfb890a96d9d635807919eed49fd22d8")
(setf (get arduino_servo_connect::ServoWriteResponse :datatype-) "arduino_servo_connect/ServoWriteResponse")
(setf (get arduino_servo_connect::ServoWriteResponse :definition-)
      "uint8 id
int32 value
uint8 delay
---

")



(provide :arduino_servo_connect/ServoWrite "cfb890a96d9d635807919eed49fd22d8")


