/***************************************************************

  Description:
    用于arduino的串口获得命令类中函数的实现.
*************************************************************/
void serialData::resetCmdParam()
{
  this->cmd_chr = ENTER_CHAR;
  
  memset(this->argv1, ENTER_CHAR, sizeof(this->argv1));
  memset(this->argv2, ENTER_CHAR, sizeof(this->argv2));
  memset(this->argv3, ENTER_CHAR, sizeof(this->argv3));

  this->argCnt   = 0;
  this->argIndex = 0;
}
