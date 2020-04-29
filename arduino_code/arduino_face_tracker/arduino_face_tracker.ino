/********************************************************************************
  Description:
       使用dfrobot的arduino UNO开发板，再接扩展板。当然其他公司的UNO板也行，这里代码还
    兼容其他型号的arduino板，包括arduino Mega2560, arduino DUE等。可以在相应版的扩展板
    上接了两个舵机，这样就可以组成二自由度的云台。通过串口可以发送命令控制两个舵机的旋转，在
    控制转动前需要先使能指定pwm引脚上的舵机，具体操作命令格式如下：
    (0).使能pwm 2号引脚上的舵机,该引脚舵机索引值为0,因为为了兼容UNO,Mega2560,DUE板，就
      把所有pwm引脚全都包含了，Mega2560和DUE都有12个PWM引脚，分别为2,3,4,5,6,7,8,9,10,
      11,12,13，这样2号引脚上的舵机索引就是0。第2个参数表明使能（非0）或禁用（0）：
      e 0 1
    (1).控制云台旋转，舵机索引分别为为0（左右旋转），1（上下旋转）:
      w 0 90 20:该串口命令中w表示写入，0表示0号舵机，90表示旋转到90度,每次移动延时20ms
      w 1 30 50:表示1号舵机移动到30度,每个移动周期延时50ms.
    (2).读取指定舵机ID的当前角度：
      r 0:串口输入该命令，则返回90,表示0号舵机当前在90度位置.
      r 1:输入该命令后，返回30,表示1号舵机当前在30度位置。
    (3).获取所有舵机的使能状态命令s:
      s:0 0 0 1 0 0 0 0 0 0 0 0：返回的一串数字表明第几个舵机使能。
    (4).获取所有舵机的角度p:
      p: 0 0 0 90 0 0 0 0 0 0 0 0:第4个舵机当前在90度位置。

********************************************************************************/
#define  FIRMWARE_VERSION   1
#define  CONNECT_BAUDRATE   57600

#include <Servo.h>
#include "serialData.h"
#include "commands.h"
#include "servos.h"

/* Run a command.  Commands char are defined in commands.h */
void runCommand(void)
{
  serialObj.arg1 = atoi(serialObj.argv1);
  serialObj.arg2 = atoi(serialObj.argv2);
  serialObj.arg3 = atoi(serialObj.argv3);

  switch (serialObj.cmd_chr)
  {
    case GET_CONNECT_BAUDRATE:  // 'b'
      Serial.println(CONNECT_BAUDRATE);
      break;

    case SET_ONE_SERVO_ENABLE:  // 'e'
      myServos[serialObj.arg1].setEnable(serialObj.arg2);
      Serial.println("OK");
      break;

    case SET_ONE_SERVO_POS:   // 'w'
      myServos[serialObj.arg1].setTargetPos(serialObj.arg2, serialObj.arg3);
      Serial.println("OK");
      break;

    case GET_ONE_SERVO_POS:   // 'r'
      Serial.println(myServos[serialObj.arg1].getServoObj().read());
      break;

    case GET_ALL_SERVOS_POS: // 'p'
      for (byte i = 0; i < N_SERVOS; i++)
      {
        Serial.print(myServos[i].getCurrentPos());
        Serial.print(' ');
      }
      Serial.println("");
      break;

    case GET_ALL_SERVOS_ENABLE: // 's'
      for (byte i = 0; i < N_SERVOS; i++)
      {
        Serial.print(myServos[i].isEnabled());
        Serial.print(' ');
      }
      Serial.println("");
      break;

    case GET_FIRMWARE_VERSION:  // 'v'
      Serial.println(FIRMWARE_VERSION);
      break;

    default:
      Serial.println("Invalid Command");
      break;
  }
}

/* Setup function--runs once at startup. */
void setup()
{
  Serial.begin(CONNECT_BAUDRATE);
  serialObj.resetCmdParam();

  /* when power on init all servos position */
  for (byte i = 0; i < N_SERVOS; i++)
  {
    myServos[i].initServo(myServoPins[i], servoInitPosition[i], 0);
  }
}

/* Enter the main loop.  Read and parse input from the serial port
   and run any valid commands.
*/
void loop()
{
  while (Serial.available() > 0)
  {
    char tmp_chr = Serial.read(); // Read the next character
    
    if (tmp_chr == 13) // Terminate a command with a CR
    {
      runCommand();
      serialObj.resetCmdParam();
    }
    else if (tmp_chr == ' ') // Use spaces to delimit parts of the command
    {
      serialObj.argCnt++;
      serialObj.argIndex = 0;
    }
    else // get valid param
    {
      if (serialObj.argCnt == 0) // The first arg is the single-letter command
      {
        serialObj.cmd_chr = tmp_chr;
      }
      else if (serialObj.argCnt == 1) // Get after cmd first param
      {
        serialObj.argv1[serialObj.argIndex] = tmp_chr;
        serialObj.argIndex++;
      }
      else if (serialObj.argCnt == 2)
      {
        serialObj.argv2[serialObj.argIndex] = tmp_chr;
        serialObj.argIndex++;
      }
      else if (serialObj.argCnt == 3)
      {
        serialObj.argv3[serialObj.argIndex] = tmp_chr;
        serialObj.argIndex++;
      }
    }
  } //end while

  // Check everyone servos isEnabled, when true will move servo. Other don't move servo.
  for (byte i = 0; i < N_SERVOS; i++)
  {
    if (myServos[i].isEnabled())
    {
      myServos[i].moveServo();
    }
  }
}//end loop
