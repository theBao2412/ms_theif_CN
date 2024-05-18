package com.Nexon.MapleThief;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

class BNVSoundPool
{
  private static final int MAX_CHANNEL = 2;
  private AudioManager m_AudioManager;
  private Context m_Context;
  private ArrayList<BNVPlaySoundInfo> m_PlaySoundMap;
  private HashMap<Integer, Integer> m_SoundMap;
  private SoundPool m_SoundPool;
  private float m_fVolume = 0.0F;
  private boolean m_isSetVolume = false;
  private String m_strRootPath;
  
  public BNVSoundPool(Context paramContext, String paramString)
  {
    this.m_Context = paramContext;
    this.m_strRootPath = paramString;
    this.m_AudioManager = ((AudioManager)this.m_Context.getSystemService("audio"));
    this.m_SoundPool = new SoundPool(2, 3, 0);
    this.m_SoundMap = new HashMap();
    this.m_PlaySoundMap = new ArrayList();
  }
  
  public boolean Load(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramInt < 0)) {
      return false;
    }
    if (this.m_strRootPath != null) {
      paramString = this.m_strRootPath + File.separator + paramString;
    }
    for (;;)
    {
      try
      {
        localFile = new File(paramString);
      }
      catch (FileNotFoundException localFileNotFoundException2)
      {
        File localFile;
        FileInputStream localFileInputStream;
        int i;
        continue;
      }
      try
      {
        localFileInputStream = new FileInputStream(localFile);
        try
        {
          FileDescriptor localFileDescriptor = localFileInputStream.getFD();
          i = this.m_SoundPool.load(localFileDescriptor, 0L, localFile.length(), 0);
          if (i != 0) {
            continue;
          }
          Log.v("Debug_Android", "[BNVSoundPool]Load - Return 0 : " + paramString);
          return false;
        }
        catch (IOException localIOException3)
        {
          try
          {
            localFileInputStream.close();
            return false;
          }
          catch (IOException localIOException1)
          {
            Log.v("Debug_Android", "[BNVSoundPool]Load - Cannot close file : " + paramString);
          }
        }
        catch (FileNotFoundException localFileNotFoundException1) {}
      }
      catch (FileNotFoundException localFileNotFoundException3) {}
    }
    Log.v("Debug_Android", "[BNVSoundPool]Load - Cannot find file : " + paramString);
    return false;
    this.m_SoundMap.put(Integer.valueOf(paramInt), Integer.valueOf(i));
    try
    {
      localFileNotFoundException1.close();
      return true;
    }
    catch (IOException localIOException2)
    {
      Log.v("Debug_Android", "[BNVSoundPool]Load - Cannot find file : " + paramString);
      return false;
    }
  }
  
  public void Pause(int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size()) {
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      if (localBNVPlaySoundInfo.m_nKey == paramInt)
      {
        this.m_SoundPool.pause(localBNVPlaySoundInfo.m_nPlayID);
        return;
      }
      i += 1;
    }
  }
  
  public void PauseAll()
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size()) {
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      this.m_SoundPool.pause(localBNVPlaySoundInfo.m_nPlayID);
      i += 1;
    }
  }
  
  public boolean Play(int paramInt, boolean paramBoolean)
  {
    Log.e("Debug_Android", "[BNVSoundPool]Play - Key(" + paramInt + ") is come ! \n");
    if (this.m_PlaySoundMap.size() >= 2)
    {
      localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(0);
      this.m_SoundPool.stop(localBNVPlaySoundInfo.m_nPlayID);
      this.m_PlaySoundMap.remove(0);
    }
    if (this.m_isSetVolume) {}
    for (float f = this.m_fVolume;; f = this.m_AudioManager.getStreamVolume(3) / this.m_AudioManager.getStreamMaxVolume(3))
    {
      i = ((Integer)this.m_SoundMap.get(Integer.valueOf(paramInt))).intValue();
      if (i != 0) {
        break;
      }
      Log.e("Debug_Android", "[BNVSoundPool]Play - Key(" + paramInt + ") is wrong key value ! \n");
      return false;
    }
    int i = this.m_SoundPool.play(i, f, f, 1, 0, 1.0F);
    if (i == 0)
    {
      Log.e("Debug_Android", "[BNVSoundPool]Play - soundpool play function return failed ! \n");
      return false;
    }
    BNVPlaySoundInfo localBNVPlaySoundInfo = new BNVPlaySoundInfo();
    localBNVPlaySoundInfo.m_nKey = paramInt;
    localBNVPlaySoundInfo.m_nPlayID = i;
    this.m_PlaySoundMap.add(localBNVPlaySoundInfo);
    return true;
  }
  
  public void Release(int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size()) {
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      if (localBNVPlaySoundInfo.m_nKey == paramInt)
      {
        this.m_SoundPool.stop(localBNVPlaySoundInfo.m_nPlayID);
        this.m_SoundPool.unload(localBNVPlaySoundInfo.m_nKey);
        this.m_SoundMap.remove(Integer.valueOf(localBNVPlaySoundInfo.m_nKey));
        this.m_PlaySoundMap.remove(i);
        return;
      }
      i += 1;
    }
  }
  
  public void ReleaseAll()
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size())
      {
        this.m_SoundMap.clear();
        this.m_PlaySoundMap.clear();
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      this.m_SoundPool.stop(localBNVPlaySoundInfo.m_nPlayID);
      this.m_SoundPool.unload(localBNVPlaySoundInfo.m_nKey);
      i += 1;
    }
  }
  
  public void Resume(int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size()) {
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      if (localBNVPlaySoundInfo.m_nKey == paramInt)
      {
        this.m_SoundPool.resume(localBNVPlaySoundInfo.m_nPlayID);
        return;
      }
      i += 1;
    }
  }
  
  public void ResumeAll()
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size()) {
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      this.m_SoundPool.resume(localBNVPlaySoundInfo.m_nPlayID);
      i += 1;
    }
  }
  
  public void SetVolume(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F))
    {
      this.m_isSetVolume = true;
      this.m_fVolume = paramFloat;
      return;
    }
    this.m_isSetVolume = false;
    this.m_fVolume = 0.0F;
  }
  
  public void Stop(int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size()) {
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      if (localBNVPlaySoundInfo.m_nKey == paramInt)
      {
        this.m_SoundPool.stop(localBNVPlaySoundInfo.m_nPlayID);
        this.m_PlaySoundMap.remove(i);
        return;
      }
      i += 1;
    }
  }
  
  public void StopAll()
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.m_PlaySoundMap.size())
      {
        this.m_PlaySoundMap.clear();
        return;
      }
      BNVPlaySoundInfo localBNVPlaySoundInfo = (BNVPlaySoundInfo)this.m_PlaySoundMap.get(i);
      this.m_SoundPool.stop(localBNVPlaySoundInfo.m_nPlayID);
      i += 1;
    }
  }
  
  class BNVPlaySoundInfo
  {
    int m_nKey = 0;
    int m_nPlayID = 0;
    
    BNVPlaySoundInfo() {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.BNVSoundPool
 * JD-Core Version:    0.7.0.1
 */