
(cl:in-package :asdf)

(defsystem "arduino_servo_connect-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MoveServo" :depends-on ("_package_MoveServo"))
    (:file "_package_MoveServo" :depends-on ("_package"))
  ))