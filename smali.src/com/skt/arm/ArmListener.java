package com.skt.arm;

public abstract interface ArmListener
{
  public static final int SERVICE_CONNECT = 1;
  public static final int SERVICE_FAIL = 20;
  public static final int SERVICE_NOT_EXIST = 3;
  
  public abstract void onArmResult();
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.ArmListener
 * JD-Core Version:    0.7.0.1
 */