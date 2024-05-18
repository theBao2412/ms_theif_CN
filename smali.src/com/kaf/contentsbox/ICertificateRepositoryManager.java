package com.kaf.contentsbox;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.io.FileDescriptor;

public abstract class ICertificateRepositoryManager
{
  public ICertificateRepositoryManager() {}
  
  public ICertificateRepositoryManager(Context paramContext) {}
  
  public ICertificateRepositoryManager(Context paramContext, ICertificateRepositoryManager.ServiceConnectionListener paramServiceConnectionListener) {}
  
  public void closeCertFile(int paramInt1, FileDescriptor paramFileDescriptor, int paramInt2) {}
  
  public boolean connect()
  {
    return false;
  }
  
  public int deleteCertInfo(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public void disconnect() {}
  
  public Cursor getCertInfo(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public int insertCertInfo(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public FileDescriptor openCertFile(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public int updateCertInfo(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.contentsbox.ICertificateRepositoryManager
 * JD-Core Version:    0.7.0.1
 */