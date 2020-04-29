;; Auto-generated. Do not edit!


(when (boundp 'arduino_servo_connect::GetAllServoPos)
  (if (not (find-package "ARDUINO_SERVO_CONNECT"))
    (make-package "ARDUINO_SERVO_CONNECT"))
  (shadow 'GetAllServoPos (find-package "ARDUINO_SERVO_CONNECT")))
(unless (find-package "ARDUINO_SERVO_CONNECT::GETALLSERVOPOS")
  (make-package "ARDUINO_SERVO_CONNECT::GETALLSERVOPOS"))
(unless (find-package "ARDUINO_SERVO_CONNECT::GETALLSERVOPOSREQUEST")
  (make-package "ARDUINO_SERVO_CONNECT::GETALLSERVOPOSREQUEST"))
(unless (find-package "ARDUINO_SERVO_CONNECT::GETALLSERVOPOSRESPONSE")
  (make-package "ARDUINO_SERVO_CONNECT::GETALLSERVOPOSRESPONSE"))

(in-package "ROS")





(defclass arduino_servo_connect::GetAllServoPosRequest
  :super ros::object
  :slots ())

(defmethod arduino_servo_connect::GetAllServoPosRequest
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

(defclass arduino_servo_connect::GetAllServoPosResponse
  :super ros::object
  :slots (_positions ))

(defmethod arduino_servo_connect::GetAllServoPosResponse
  (:init
   (&key
    ((:positions __positions) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _positions __positions)
   self)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; int32[] _positions
    (* 4    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (write-long (elt _positions i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arduino_servo_connect::GetAllServoPos
  :super ros::object
  :slots ())

(setf (get arduino_servo_connect::GetAllServoPos :md5sum-) "a2a9139ca9bf4352767912894c0d0ece")
(setf (get arduino_servo_connect::GetAllServoPos :datatype-) "arduino_servo_connect/GetAllServoPos")
(setf (get arduino_servo_connect::GetAllServoPos :request) arduino_servo_connect::GetAllServoPosRequest)
(setf (get arduino_servo_connect::GetAllServoPos :response) arduino_servo_connect::GetAllServoPosResponse)

(defmethod arduino_servo_connect::GetAllServoPosRequest
  (:response () (instance arduino_servo_connect::GetAllServoPosResponse :init)))

(setf (get arduino_servo_connect::GetAllServoPosRequest :md5sum-) "a2a9139ca9bf4352767912894c0d0ece")
(setf (get arduino_servo_connect::GetAllServoPosRequest :datatype-) "arduino_servo_connect/GetAllServoPosRequest")
(setf (get arduino_servo_connect::GetAllServoPosRequest :definition-)
      "---
int32[] positions

")

(setf (get arduino_servo_connect::GetAllServoPosResponse :md5sum-) "a2a9139ca9bf4352767912894c0d0ece")
(setf (get arduino_servo_connect::GetAllServoPosResponse :datatype-) "arduino_servo_connect/GetAllServoPosResponse")
(setf (get arduino_servo_connect::GetAllServoPosResponse :definition-)
      "---
int32[] positions

")



(provide :arduino_servo_connect/GetAllServoPos "a2a9139ca9bf4352767912894c0d0ece")


