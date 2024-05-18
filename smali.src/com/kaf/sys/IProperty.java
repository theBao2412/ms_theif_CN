package com.kaf.sys;

public abstract class IProperty
{
  public String encryptPassword(String paramString)
  {
    return null;
  }
  
  public String getCellID()
  {
    return null;
  }
  
  public String getDeviceType()
  {
    return null;
  }
  
  public String getFwVersion()
  {
    return null;
  }
  
  public AccountInfo getHdsAccountInfo()
  {
    return null;
  }
  
  public AccountInfo getHdsAccountInfoForHDS()
  {
    return null;
  }
  
  public boolean getHdsTestServer()
  {
    return true;
  }
  
  public boolean getHdsTestServerForHDS()
  {
    return true;
  }
  
  public String getHwVersion()
  {
    return null;
  }
  
  public long getICCID(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    return 10L;
  }
  
  public long getIMSI(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    return 10L;
  }
  
  public String getKafVersion()
  {
    return null;
  }
  
  public String getLAC()
  {
    return null;
  }
  
  public String getMCC()
  {
    return null;
  }
  
  public long getMDN(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    return 10L;
  }
  
  public String getMNC()
  {
    return null;
  }
  
  public long getMSISDN(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    return 10L;
  }
  
  public String getManufacturer()
  {
    return null;
  }
  
  public String getModelName()
  {
    return null;
  }
  
  public String getOsVersion()
  {
    return null;
  }
  
  public long getPUID(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    return 10L;
  }
  
  public String getPhoneNumber()
  {
    return null;
  }
  
  public long getPinStatus(int paramInt, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    return 10L;
  }
  
  public String getProperty(String paramString1, String paramString2)
  {
    return null;
  }
  
  public AccountInfo getShowAccountInfo()
  {
    return null;
  }
  
  public AccountInfo getSipAccountInfo()
  {
    return null;
  }
  
  public String getSwBuildtimeInfo()
  {
    return null;
  }
  
  public String getSwVersion()
  {
    return null;
  }
  
  public long getUsimAuth(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int[] paramArrayOfInt)
  {
    return 10L;
  }
  
  public long getUsimModelName(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    return 10L;
  }
  
  public AccountInfo getWibroAccountInfo()
  {
    return new AccountInfo();
  }
  
  public String getWibroMacAddress()
  {
    return null;
  }
  
  public String getWifiMacAddress()
  {
    return null;
  }
  
  public boolean setAccountInfo(String paramString1, String paramString2, String paramString3)
  {
    return true;
  }
  
  public boolean setHdsTestServer(boolean paramBoolean)
  {
    return true;
  }
  
  public boolean setShowAccountInfo(String paramString1, String paramString2)
  {
    return false;
  }
  
  public boolean setWibroAccountInfo(String paramString1, String paramString2)
  {
    return true;
  }
  
  public long ucaClose(byte paramByte)
  {
    return 10L;
  }
  
  public long ucaOpen(byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    return 10L;
  }
  
  public long ucaTransmit(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2, int[] paramArrayOfInt)
  {
    return 10L;
  }
  
  public String updateWibroMacAddress()
  {
    return null;
  }
  
  public String updateWifiMacAddress()
  {
    return null;
  }
  
  public long verifyPin(int paramInt, String paramString, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    return 10L;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.sys.IProperty
 * JD-Core Version:    0.7.0.1
 */