package com.kaf.app;

import android.content.Context;

public abstract class IPackageManager
{
  public IPackageManager() {}
  
  public IPackageManager(Context paramContext) {}
  
  public int installPackage(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5, boolean paramBoolean, String paramString6)
  {
    return 0;
  }
  
  public int installPackage(String paramString1, String paramString2, boolean paramBoolean)
  {
    return 0;
  }
  
  public int installPackage(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    return 0;
  }
  
  public int uninstallPackage(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4, boolean paramBoolean, String paramString5)
  {
    return 0;
  }
  
  public int uninstallPackage(String paramString, boolean paramBoolean)
  {
    return 0;
  }
  
  public int uninstallPackage(String paramString1, boolean paramBoolean, String paramString2)
  {
    return 0;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.app.IPackageManager
 * JD-Core Version:    0.7.0.1
 */