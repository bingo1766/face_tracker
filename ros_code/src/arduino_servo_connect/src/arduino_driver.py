#!/usr/bin/env python
# _*_ coding:utf-8 _*_

"""

  Description:
    A Python driver for the Arduino microcontroller.

"""

import rospy
import thread
import serial
import os, sys, time, traceback
from exceptions import Exception
from serial.serialutil import SerialException, SerialTimeoutException


SERVO_COUNT = 12

class CmdErrCode:
    SUCCESS = 0
    TIMEOUT = 1
    NOVALUE = 2
    SERIALERROR = 3

    ErrCodeStr = ['SUCCESS', 'TIMEOUT', 'NOVALUE', 'SERIALERROR']


class CmdException(Exception):
    def __init__(self, code):
        self.code = code

    def __str__(self):
        return repr(self.code)


class Arduino:
    ''' Configuration Connect Parameters
    '''
    def __init__(self, port="/dev/ttyUSB0", baudrate=57600, timeout=0.5):
        self.port = port
        self.baudrate = baudrate
        self.timeout  = timeout
        self.interCharTimeout = timeout / 30.
        # Keep things thread safe
        self.mutex = thread.allocate_lock()

    def connect(self):
        try:
            rospy.loginfo("Connecting to Arduino on port: " + self.port)
            #The port has to be open once with default baud before opening again for real
            self.serial_port = serial.Serial(port=self.port)
            self.serial_port = serial.Serial(port=self.port, baudrate=self.baudrate, timeout=max(1.0, self.timeout))

            #Take time for serial port to wake up
            maxAttempts = 10
            attempts = 0
            timeout  = self.timeout

            self.serial_port.write('\r')
            time.sleep(timeout)
            test = self.serial_port.read()

            # Wakeup the serial port
            while attempts < maxAttempts and test == '':
                attempts += 1
                self.serial_port.write('\r')
                time.sleep(timeout)
                test = self.serial_port.read()
                rospy.loginfo("Waking up serial port attempts " + str(attempts) + "/" + str(maxAttempts))

            if test == '':
                raise SerialException

            # Reset timeout to the user specified timeout
            self.serial_port.timeout = self.timeout
            self.serial_port.writeTimeout = self.timeout

            attempts = 0
            while self.get_baud() != self.baudrate and attempts < maxAttempts:
                attempts += 1
                self.serial_port.flushInput()
                self.serial_port.flushOutput()
                time.sleep(timeout)

            try:
                self.serial_port.inWaiting()
                rospy.loginfo("Arduino connect successfully !")
            except IOError:
                raise SerialException

        except SerialException:
            rospy.logerr("Serial Exception:")
            rospy.logerr(sys.exc_info())
            rospy.logerr("Traceback follows:")
            traceback.print_exc(file=sys.stdout)
            rospy.logerr("Can't connect to Arduino ! Make sure it is plugged:" + self.port)
            return False

        return True

    def close_port(self):
        self.serial_port.close()

    def execute(self, cmd, timeout=0.5):
        ''' Thread safe execution of "cmd" on the Arduino returning a single integer value.
        '''
        self.mutex.acquire()

        value = None
        error = None
        try:
            start = time.time()
            self.serial_port.flushInput()
            self.serial_port.flushOutput()
            self.serial_port.write(cmd + '\r')
            value = self.serial_port.readline().strip('\n').strip('\r')
        except SerialException:
            self.logerr("cmd:" + str(cmd) + " filed with serial excption!")
            error = CmdErrCode.SERIALERROR
        except SerialTimeoutException:
            self.logerr("cmd:" + str(cmd) + " time out!")
            error = CmdErrCode.TIMEOUT

        duration = time.time() - start

        if error is None and (value is None or len(value) == 0):
            duration = time.time() - start
            if duration > timeout:
                self.logerr("cmd:" + str(cmd) + " time out!")
                error = CmdErrCode.TIMEOUT
            else:
                self.logerr("cmd:" + str(cmd) + " didn't return a value")
                error = CmdErrCode.NOVALUE

        self.mutex.release()
        if error:
            raise CmdException(error)

        return value

    def execute_ack(self, cmd):
        ''' Thread safe execution of "cmd" on the Arduino returning True if response is ACK.
        '''
        try:
            ack = self.execute(cmd)
            return ack == "OK"
        except CmdException as e:
            return False

    def execute_array(self, cmd):
        try:
            values = self.execute(cmd).split()
        except Exception:
            values = None
            rospy.logerr("Error ! When get array return ...")

        return values

    def get_baud(self):
        ''' Get the current baud rate on the serial port.
        '''
        try:
            return int(self.execute('b'));
        except:
            return None

    def get_firmware_version(self):
        ''' Get the current arduino firmware version.
        '''
        try:
            return int(self.execute('v'));
        except:
            return None

    def servo_enable(self, id, flag):
        ''' Enable or Disable servo by id
        '''
        return self.execute_ack('e %d %d' %(id, flag))

    def servo_write(self, servoId, pos, delay):
        ''' Usage: servo_write(id, pos, delay)
            Position is given in radians and converted to degrees before sending
        '''
        return self.execute_ack('w %d %d %d' %(servoId, pos, delay))

    def servo_read(self, servoid):
        ''' Usage: servo_read(id)
            The returned position is converted from degrees to radians
        '''
        return int(self.execute('r %d' %servoid))

    def getAllServosEnabled(self):
        values = self.execute_array('s')

        if len(values) != SERVO_COUNT:
            return None
        else:
            return map(int, values)

    def getAllServosPos(self):
        values = self.execute_array('p')

        if len(values) != SERVO_COUNT:
            return None
        else:
            return map(int, values)

""" Basic test for connectivity """
if __name__ == "__main__":
    portName = "/dev/ttyUSB0"
    baudRate = 57600
    delay = 50
    servo_x_id = 3
    servo_y_id = 4

    myArduino = Arduino(port=portName, baudrate=baudRate, timeout=0.5)
    myArduino.connect()

    print "Get arduino firmware version: " + str(myArduino.get_firmware_version())

    print "Enable all servos..."
    for i in range(SERVO_COUNT):
        myArduino.servo_enable(i, 1)

    print "Check if enable all servos ..."
    status = []
    status = myArduino.getAllServosEnabled()
    for i in range(SERVO_COUNT):
        if 1 != status[i]:
            print "ERROR! " + str(status[i]) + " servo can't enable..."
            myArduino.close_port()
            os._exit(1)
    print "All servos be enabled !"

    print "Start to test servo..."
    degrees = []

    print "1.Test left right move servo "
    deg = 90
    while deg < 190:
        myArduino.servo_write(servo_x_id, deg, delay)
        time.sleep(0.6)
        val = myArduino.servo_read(servo_x_id)
        if deg == val:
            print 'o:'+str(deg)
        else:
            print 'x(set='+str(deg)+',read='+str(val)+')'
        deg += 10
        degrees = myArduino.getAllServosPos()
        print degrees

    deg = 180
    while deg > 0:
        myArduino.servo_write(servo_x_id, deg, delay)
        time.sleep(0.6)
        val = myArduino.servo_read(servo_x_id)
        if deg == val:
            print 'o:'+str(deg)
        else:
            print 'x(set='+str(deg)+',read='+str(val)+')'
        deg -= 10
        degrees = myArduino.getAllServosPos()
        print degrees

    deg = 0
    while deg < 100:
        myArduino.servo_write(servo_x_id, deg, delay)
        time.sleep(0.6)
        val = myArduino.servo_read(servo_x_id)
        if deg == val:
            print 'o:'+str(deg)
        else:
            print 'x(set='+str(deg)+',read='+str(val)+')'
        deg += 10
        degrees = myArduino.getAllServosPos()
        print degrees

    print ''
    print "Sleeping for 1 second..."
    time.sleep(1)
    print "2.Test up down move servo "
    deg = 0
    while deg < 100:
        myArduino.servo_write(servo_y_id, deg, delay)
        time.sleep(0.6)
        val = myArduino.servo_read(servo_y_id)
        if deg == val:
            print 'o:'+str(deg)
        else:
            print 'x(set='+str(deg)+',read='+str(val)+')'
        deg += 10
        degrees = myArduino.getAllServosPos()
        print degrees

    deg = 90
    while deg > -10:
        myArduino.servo_write(servo_y_id, deg, delay)
        time.sleep(0.6)
        val = myArduino.servo_read(servo_y_id)
        if deg == val:
            print 'o:'+str(deg)
        else:
            print 'x(set='+str(deg)+',read='+str(val)+')'
        deg -= 10
        degrees = myArduino.getAllServosPos()
        print degrees

    print ''
    print "Disable all servo..."
    for i in range(12):
        myArduino.servo_enable(i, 0)

    print "Connection test over ! Shutting down arduino ..."

    myArduino.close_port()
