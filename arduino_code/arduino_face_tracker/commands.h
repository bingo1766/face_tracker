/**********************************************************************
 Description:
   Define single-letter commands that will be sent by the PC over the
   serial link.

*/
#ifndef _COMMANDS_H_
#define _COMMANDS_H_

#define  GET_CONNECT_BAUDRATE   'b'
#define  SET_ONE_SERVO_ENABLE   'e'
#define  SET_ONE_SERVO_POS      'w'
#define  GET_ONE_SERVO_POS      'r'
#define  GET_ALL_SERVOS_POS     'p'
#define  GET_ALL_SERVOS_ENABLE  's'
#define  GET_FIRMWARE_VERSION   'v'

#endif
