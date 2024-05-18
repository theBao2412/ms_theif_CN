package com.Nexon.MapleThief;

import android.content.res.AssetManager;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import android.widget.ProgressBar;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;

class BNVInstaller
{
  private static final int DATA_VERSION = 1;
  private static final int RESULT_IOEXCEPTION = 3;
  private static final int RESULT_NO_MEMORY = 2;
  private static final int RESULT_SUCCESS = 1;
  private static final int RESULT_WRITE_FAILED = 4;
  private static int m_nResult = 0;
  public static String m_strResultMessage = "";
  
  public static boolean CheckAlzza(String paramString)
  {
    paramString = paramString + File.separator + "prov.txt";
    try
    {
      paramString = new FileReader(paramString);
      if (paramString.read() == 1)
      {
        paramString.close();
        return true;
      }
      paramString.close();
      return false;
    }
    catch (IOException paramString) {}
    return false;
  }
  
  public static boolean CheckResource(String paramString)
  {
    paramString = paramString + File.separator + "Install.txt";
    try
    {
      paramString = new FileReader(paramString);
      if (paramString.read() == 1)
      {
        paramString.close();
        return true;
      }
      paramString.close();
      return false;
    }
    catch (IOException paramString) {}
    return false;
  }
  
  public static boolean InstallResource(AssetManager paramAssetManager, String paramString, ProgressBar paramProgressBar)
  {
    String str = paramString + File.separator + "Install.txt";
    for (int j = 0;; j = k)
    {
      try
      {
        if (getAvailableInternalMemorySize() < 20971520L)
        {
          Log.e("Zip", "available memory size < zip uncompress size");
          SetResult(2, "게임설치에 필요한 용량이 부족합니다. 메모리용량 확보후 재설치해주세요");
          return false;
        }
        i = 0;
        if (i <= 43) {}
      }
      catch (IOException paramAssetManager)
      {
        int i;
        Object localObject;
        InputStream localInputStream;
        int k;
        byte[] arrayOfByte;
        int m;
        Log.e("Zip", "Throw IOException, unpack zip file");
        SetResult(3, "인스톨 과정에서 에러가 발생하였습니다. 다시 설치해주시기 바랍니다.");
        return false;
      }
      try
      {
        paramAssetManager = new FileWriter(str);
        paramAssetManager.write(1);
        paramAssetManager.close();
        paramProgressBar.setProgress(100);
        SetResult(1, "게임설치 성공.");
        return true;
      }
      catch (IOException paramAssetManager)
      {
        Log.e("Zip", "Throw IOException, cannot create 'install.txt' file");
        SetResult(4, "인스톨 과정에서 에러가 발생하였습니다. 다시 설치해주시기 바랍니다.");
      }
      localObject = "snd" + File.separator + Integer.toString(i) + ".ogg";
      localInputStream = paramAssetManager.open((String)localObject);
      k = localInputStream.available();
      arrayOfByte = new byte[k];
      localInputStream.read(arrayOfByte);
      localInputStream.close();
      localObject = paramString + File.separator + "Resource" + File.separator + (String)localObject;
      new File((String)localObject).getParentFile().mkdirs();
      localObject = new FileOutputStream((String)localObject);
      ((FileOutputStream)localObject).write(arrayOfByte, 0, k);
      ((FileOutputStream)localObject).close();
      arrayOfByte = (byte[])null;
      m = (int)(i / 43.0F * 100.0F);
      k = j;
      if (j != m)
      {
        paramProgressBar.setProgress(m);
        k = m;
      }
      i += 1;
    }
    return false;
  }
  
  private static void SetResult(int paramInt, String paramString)
  {
    m_nResult = paramInt;
    m_strResultMessage = paramString + " Error Code(" + paramInt + ")";
  }
  
  public static boolean externalMemoryAvailable()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static long getAvailableExternalMemorySize()
  {
    if (externalMemoryAvailable())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l = localStatFs.getBlockSize();
      return localStatFs.getAvailableBlocks() * l;
    }
    return -1L;
  }
  
  public static long getAvailableInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = localStatFs.getBlockSize();
    return localStatFs.getAvailableBlocks() * l;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.BNVInstaller
 * JD-Core Version:    0.7.0.1
 */