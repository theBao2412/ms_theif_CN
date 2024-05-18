package com.kaf.contentsbox;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;

public abstract class IContentsBoxManager
{
  public IContentsBoxManager() {}
  
  public IContentsBoxManager(Context paramContext) {}
  
  public IContentsBoxManager(Context paramContext, IContentsBoxManager.ServiceConnectionListener paramServiceConnectionListener) {}
  
  public void closeContentFile(int paramInt1, FileDescriptor paramFileDescriptor, int paramInt2) {}
  
  public void closeIconFile(int paramInt, FileDescriptor paramFileDescriptor) {}
  
  public void closeThumbnail(int paramInt, FileDescriptor paramFileDescriptor) {}
  
  public boolean connectService()
  {
    return false;
  }
  
  public boolean createThumbnail(int paramInt)
  {
    return false;
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deleteAppWidgetInfo(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deleteCategory(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deleteContentsInfo(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deleteDownloadUrl(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deleteMimeType(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deletePlayListConts(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int deletePlayListInfo(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public void disconnectService() {}
  
  public Intent executeCommand(Intent paramIntent)
  {
    return null;
  }
  
  public Cursor getAppWidgetInfo(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public String[] getAudioMetadata(int paramInt)
  {
    return null;
  }
  
  public Cursor getCategory(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public String[] getContentsBoxName(int paramInt)
  {
    return null;
  }
  
  public Cursor getContentsInfo(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public Cursor getDownloadUrl(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public String getExternalVolumeSerial(String paramString)
  {
    return null;
  }
  
  public String getExternalVolumnSerial(String paramString)
  {
    return null;
  }
  
  public Cursor getMimeType(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public Cursor getPlayListConts(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public Cursor getPlayListInfo(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public IStatContentsBoxFs getStorageCapacity(int paramInt, String paramString)
  {
    return null;
  }
  
  public int insert(Uri paramUri, ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertAppWidgetInfo(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertCategory(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertContentsInfo(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertDownloadUrl(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertMimeType(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertPlayListConts(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public int insertPlayListInfo(ContentValues paramContentValues)
  {
    return -1;
  }
  
  public FileDescriptor openContentFile(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public FileDescriptor openIconFile(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public FileDescriptor openThumbnail(int paramInt)
  {
    return null;
  }
  
  public FileDescriptor openThumbnail(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public boolean reducePlayCount(int paramInt)
  {
    return false;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updateAppWidgetInfo(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updateCategory(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updateContentsInfo(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updateDownloadUrl(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updateMimeType(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updatePlayListConts(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int updatePlayListInfo(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public Cursor updateRingtone(int paramInt1, int paramInt2)
  {
    return null;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.contentsbox.IContentsBoxManager
 * JD-Core Version:    0.7.0.1
 */