package com.kaf.app;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.lang.reflect.Method;

public abstract class IAppManager
{
  public IAppManager() {}
  
  public IAppManager(Context paramContext) {}
  
  public IAppManager(Context paramContext, Object paramObject, Method paramMethod, IAppManager.ServiceConnectionListener paramServiceConnectionListener) {}
  
  public boolean connect()
  {
    return false;
  }
  
  public int deleteApplicationInfo(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public void disconnect() {}
  
  public Cursor getAccessLevel(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public Cursor getAccessLevelFromContentsProvider(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public Cursor getApplicationInfo(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public Cursor getApplicationInfoFromContentsProvider(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public int insertApplicationInfo(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int updateAccessLevel(String paramString)
  {
    return -1;
  }
  
  public int updateApplicationInfo(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.app.IAppManager
 * JD-Core Version:    0.7.0.1
 */