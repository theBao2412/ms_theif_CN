package com.kaf.sound;

import android.content.Context;

public abstract class ISound
{
  public void SetContext(Context paramContext) {}
  
  public boolean setBeepSound(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean setDefaultRingtone(String paramString)
  {
    return false;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.sound.ISound
 * JD-Core Version:    0.7.0.1
 */