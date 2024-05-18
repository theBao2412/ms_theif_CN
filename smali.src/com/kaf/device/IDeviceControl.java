package com.kaf.device;

public abstract class IDeviceControl
{
  public int getBatteryStatus()
  {
    return -1;
  }
  
  public String[] getExternalStorageVolumes()
  {
    return null;
  }
  
  public int getMountedVolumeCount()
  {
    return -1;
  }
  
  public boolean vibrate(long[] paramArrayOfLong, int paramInt)
  {
    return false;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.device.IDeviceControl
 * JD-Core Version:    0.7.0.1
 */