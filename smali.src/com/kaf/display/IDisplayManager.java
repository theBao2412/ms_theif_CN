package com.kaf.display;

public abstract class IDisplayManager
{
  public int getMainLCDColorDepth()
  {
    return -1;
  }
  
  public int getMainLCDHeight()
  {
    return -1;
  }
  
  public int getMainLCDWidth()
  {
    return -1;
  }
  
  public int getSubLCDColorDepth()
  {
    return -1;
  }
  
  public int getSubLCDHeight()
  {
    return -1;
  }
  
  public int getSubLCDWidth()
  {
    return -1;
  }
  
  public boolean isSupportTouch()
  {
    return false;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.display.IDisplayManager
 * JD-Core Version:    0.7.0.1
 */