package com.skt.arm;

public class ArmProt
{
  public static int REQ_SEED_APP_NEW_VER = 16418;
  public static byte SIZE_DEVICECODE;
  public static byte SIZE_MDN = 12;
  public static byte SIZE_MDN_MACADDRESS;
  public static byte SIZE_OSVERSION;
  public static byte SIZE_SEED_TYPE;
  
  static
  {
    SIZE_DEVICECODE = 4;
    SIZE_SEED_TYPE = 20;
    SIZE_MDN_MACADDRESS = 28;
    SIZE_OSVERSION = 30;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.ArmProt
 * JD-Core Version:    0.7.0.1
 */