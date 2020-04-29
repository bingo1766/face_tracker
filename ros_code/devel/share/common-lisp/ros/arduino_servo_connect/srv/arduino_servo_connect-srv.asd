
(cl:in-package :asdf)

(defsystem "arduino_servo_connect-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetAllServoEnable" :depends-on ("_package_GetAllServoEnable"))
    (:file "_package_GetAllServoEnable" :depends-on ("_package"))
    (:file "GetAllServoPos" :depends-on ("_package_GetAllServoPos"))
    (:file "_package_GetAllServoPos" :depends-on ("_package"))
    (:file "ServoEnable" :depends-on ("_package_ServoEnable"))
    (:file "_package_ServoEnable" :depends-on ("_package"))
    (:file "ServoRead" :depends-on ("_package_ServoRead"))
    (:file "_package_ServoRead" :depends-on ("_package"))
    (:file "ServoWrite" :depends-on ("_package_ServoWrite"))
    (:file "_package_ServoWrite" :depends-on ("_package"))
  ))