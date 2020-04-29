/***************************************************************
 Description:
    定义舵机操作的类SweepServo,舵机连接的引脚和初始的舵机角度.在这里连接
    的两个舵机分别连接5,6两个引脚,5号引脚连接左右旋转的舵机,6号引脚连接
    上下移动的舵机.其中设置左右旋转的舵机初始角度为90度,上下转动舵机的初始
    角度为0度.在代码里总共可以连接12个舵机,当然你的舵机可以根据arduino板
    的不同来连接不同的引脚,同时修改引脚的初始角度即可.
*************************************************************/
#ifndef _SERVOS_H_
#define _SERVOS_H_

#define  N_SERVOS  12

#define  SERVO_ENABLE   1
#define  SERVO_DISABLE  0

//Define All Servos's Pins
byte myServoPins[N_SERVOS] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};

// Initial Servo Position [0, 180] degrees
int servoInitPosition[N_SERVOS] = {0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0};

class SweepServo
{
  public:
    SweepServo();
    void initServo(int servoPin, unsigned int initPosition, unsigned int stepDelayMs);
    void setTargetPos(unsigned int targetPos, unsigned int stepDelayMs);
    int getCurrentPos(void);
    void setEnable(byte flag);
    void moveServo(void);
    byte isEnabled(void);
    Servo getServoObj();

  private:
    Servo servo;
    unsigned int stepDelayMs;
    unsigned long lastMoveTime;
    int currentPosDegrees;
    int targetPosDegrees;
    byte enabled;
};

SweepServo myServos[N_SERVOS];

#endif
