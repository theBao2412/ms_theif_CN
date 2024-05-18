package com.Nexon.MapleThief;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.util.Log;

class BNVMediaPlayer
{
  private AudioManager m_AudioManager;
  private Context m_Context;
  private MediaPlayer m_MediaPlayer;
  private float m_fVolume = 0.0F;
  private boolean m_isPlay = false;
  private boolean m_isSetVolume = false;
  private String m_strRootPath;
  
  public BNVMediaPlayer(Context paramContext, String paramString)
  {
    this.m_Context = paramContext;
    this.m_strRootPath = paramString;
    this.m_AudioManager = ((AudioManager)this.m_Context.getSystemService("audio"));
  }
  
  /* Error */
  public boolean Load(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: aload_0
    //   7: getfield 36	com/Nexon/MapleThief/BNVMediaPlayer:m_strRootPath	Ljava/lang/String;
    //   10: ifnull +130 -> 140
    //   13: new 57	java/lang/StringBuilder
    //   16: dup
    //   17: aload_0
    //   18: getfield 36	com/Nexon/MapleThief/BNVMediaPlayer:m_strRootPath	Ljava/lang/String;
    //   21: invokestatic 63	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   24: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: getstatic 71	java/io/File:separator	Ljava/lang/String;
    //   30: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_1
    //   34: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: astore_1
    //   41: new 68	java/io/File
    //   44: dup
    //   45: aload_1
    //   46: invokespecial 80	java/io/File:<init>	(Ljava/lang/String;)V
    //   49: astore_2
    //   50: new 82	java/io/FileInputStream
    //   53: dup
    //   54: aload_2
    //   55: invokespecial 85	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   58: astore_2
    //   59: aload_2
    //   60: invokevirtual 89	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   63: astore_3
    //   64: aload_0
    //   65: new 91	android/media/MediaPlayer
    //   68: dup
    //   69: invokespecial 92	android/media/MediaPlayer:<init>	()V
    //   72: putfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   75: aload_0
    //   76: getfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   79: aload_3
    //   80: invokevirtual 98	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;)V
    //   83: aload_0
    //   84: getfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   87: fconst_1
    //   88: fconst_1
    //   89: invokevirtual 102	android/media/MediaPlayer:setVolume	(FF)V
    //   92: aload_0
    //   93: getfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   96: invokevirtual 105	android/media/MediaPlayer:prepare	()V
    //   99: aload_0
    //   100: iconst_0
    //   101: putfield 32	com/Nexon/MapleThief/BNVMediaPlayer:m_isPlay	Z
    //   104: aload_0
    //   105: getfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   108: new 6	com/Nexon/MapleThief/BNVMediaPlayer$1
    //   111: dup
    //   112: aload_0
    //   113: invokespecial 108	com/Nexon/MapleThief/BNVMediaPlayer$1:<init>	(Lcom/Nexon/MapleThief/BNVMediaPlayer;)V
    //   116: invokevirtual 112	android/media/MediaPlayer:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
    //   119: aload_0
    //   120: getfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   123: new 8	com/Nexon/MapleThief/BNVMediaPlayer$2
    //   126: dup
    //   127: aload_0
    //   128: invokespecial 113	com/Nexon/MapleThief/BNVMediaPlayer$2:<init>	(Lcom/Nexon/MapleThief/BNVMediaPlayer;)V
    //   131: invokevirtual 117	android/media/MediaPlayer:setOnPreparedListener	(Landroid/media/MediaPlayer$OnPreparedListener;)V
    //   134: aload_2
    //   135: invokevirtual 120	java/io/FileInputStream:close	()V
    //   138: iconst_1
    //   139: ireturn
    //   140: goto -99 -> 41
    //   143: astore_3
    //   144: aload_2
    //   145: invokevirtual 120	java/io/FileInputStream:close	()V
    //   148: iconst_0
    //   149: ireturn
    //   150: astore_2
    //   151: ldc 122
    //   153: new 57	java/lang/StringBuilder
    //   156: dup
    //   157: ldc 124
    //   159: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload_1
    //   163: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 130	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   172: pop
    //   173: iconst_0
    //   174: ireturn
    //   175: astore_2
    //   176: ldc 122
    //   178: new 57	java/lang/StringBuilder
    //   181: dup
    //   182: ldc 132
    //   184: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   187: aload_1
    //   188: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 130	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   197: pop
    //   198: iconst_0
    //   199: ireturn
    //   200: astore_1
    //   201: aload_0
    //   202: aconst_null
    //   203: putfield 94	com/Nexon/MapleThief/BNVMediaPlayer:m_MediaPlayer	Landroid/media/MediaPlayer;
    //   206: ldc 122
    //   208: ldc 134
    //   210: invokestatic 130	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   213: pop
    //   214: iconst_0
    //   215: ireturn
    //   216: astore_2
    //   217: ldc 122
    //   219: new 57	java/lang/StringBuilder
    //   222: dup
    //   223: ldc 132
    //   225: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   228: aload_1
    //   229: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: invokestatic 130	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   238: pop
    //   239: iconst_0
    //   240: ireturn
    //   241: astore_2
    //   242: goto -66 -> 176
    //   245: astore_2
    //   246: goto -70 -> 176
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	this	BNVMediaPlayer
    //   0	249	1	paramString	String
    //   49	96	2	localObject	Object
    //   150	1	2	localIOException1	java.io.IOException
    //   175	1	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   216	1	2	localIOException2	java.io.IOException
    //   241	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   245	1	2	localFileNotFoundException3	java.io.FileNotFoundException
    //   63	17	3	localFileDescriptor	java.io.FileDescriptor
    //   143	1	3	localIOException3	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   59	64	143	java/io/IOException
    //   144	148	150	java/io/IOException
    //   59	64	175	java/io/FileNotFoundException
    //   144	148	175	java/io/FileNotFoundException
    //   151	173	175	java/io/FileNotFoundException
    //   64	134	200	java/io/IOException
    //   134	138	216	java/io/IOException
    //   41	50	241	java/io/FileNotFoundException
    //   50	59	245	java/io/FileNotFoundException
  }
  
  public native void OnCompleteCallback();
  
  public native void OnPreparedCallback();
  
  public void Pause()
  {
    if (this.m_MediaPlayer == null) {
      Log.e("Debug_Android", "[BNVMediaPlayer]Pause - not sound loaded \n");
    }
    while ((!this.m_MediaPlayer.isPlaying()) || (!this.m_isPlay)) {
      return;
    }
    this.m_MediaPlayer.pause();
  }
  
  public boolean Play(boolean paramBoolean)
  {
    if (this.m_MediaPlayer == null) {
      Log.e("Debug_Android", "[BNVMediaPlayer]Play - not sound loaded \n");
    }
    while (this.m_MediaPlayer.isPlaying()) {
      return false;
    }
    if (this.m_isSetVolume) {}
    for (float f = this.m_fVolume;; f = this.m_AudioManager.getStreamVolume(3) / this.m_AudioManager.getStreamMaxVolume(3))
    {
      this.m_MediaPlayer.setVolume(f, f);
      this.m_MediaPlayer.setLooping(paramBoolean);
      this.m_MediaPlayer.start();
      this.m_isPlay = true;
      return true;
    }
  }
  
  public void Release()
  {
    if (this.m_MediaPlayer != null)
    {
      this.m_MediaPlayer.release();
      this.m_MediaPlayer = null;
      this.m_isPlay = false;
    }
  }
  
  public void Resume()
  {
    if (this.m_MediaPlayer == null) {
      Log.e("Debug_Android", "[BNVMediaPlayer]Resume - not sound loaded \n");
    }
    while ((this.m_MediaPlayer.isPlaying()) || (!this.m_isPlay)) {
      return;
    }
    this.m_MediaPlayer.start();
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
  
  public void Stop()
  {
    if (this.m_MediaPlayer == null) {
      Log.e("Debug_Android", "[BNVMediaPlayer]Stop - not sound loaded \n");
    }
    while (!this.m_MediaPlayer.isPlaying()) {
      return;
    }
    this.m_MediaPlayer.pause();
    this.m_MediaPlayer.seekTo(0);
    this.m_isPlay = false;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.BNVMediaPlayer
 * JD-Core Version:    0.7.0.1
 */