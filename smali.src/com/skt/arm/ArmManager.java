package com.skt.arm;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import com.skt.arm.aidl.IArmService;
import com.skt.arm.aidl.IArmService.Stub;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

public class ArmManager
{
  private static final String ARM_SERVICE_PACKAGE = "com.skt.skaf.OA00018282";
  private static final String TAG = ArmLog.tag;
  private static final String TSTORE_PACKAGE = "com.skt.skaf.A000Z00040";
  private static ArmConnection mArmConn;
  protected static ArmListener mArmListener;
  private static Context mContext;
  private static IArmService mService;
  private final int COMPONENT_ENABLED_STATE_DISABLED_USER = 3;
  private final int ERR_CODE_FAIL_BY_TOOLS = 10001;
  private final int ERR_CODE_NEED_CHANGE_SETTINGS = 42;
  private final int ERR_CODE_NEED_DECLARE_USES_PERMSSION = 43;
  private final int ERR_CODE_NEED_TSTORE = 40;
  private final int ERR_CODE_NEED_UPDATE_ARM = 41;
  private final int ERR_CODE_NETWORK_DISCONNECT = 30;
  private final int ERR_CODE_NOT_FOUND_BY_TOOLS = 10002;
  private final int ERR_CODE_UNKNOWN = 20;
  private String LIB_FILE_PATH;
  private String LIB_FILE_PATH_MARMALADE;
  ArmSeedCheck asc;
  private IBinder mBoundService;
  public int nNetState;
  public String nResAID;
  public int nResCode;
  public String sAID;
  public String sMaskAID;
  public String sResMsg;
  
  public ArmManager(Context paramContext)
  {
    ArmLog.d(TAG, toString() + " ArmManager Create");
    mContext = paramContext;
    this.LIB_FILE_PATH = ("/data/data/" + mContext.getPackageName() + "/lib/libARMPlugin.so");
    this.LIB_FILE_PATH_MARMALADE = ("/data/data/" + mContext.getPackageName() + "/lib/libarmplugin.so");
    this.asc = new ArmSeedCheck(paramContext);
  }
  
  private native String ARMPluginGetMaskString();
  
  private native String ARMPluginMakeChallenge(String paramString);
  
  private native int ARMPluginProcessResponse(int paramInt);
  
  private int ARMServiceExecute(String paramString)
  {
    int i = -1;
    try
    {
      int j = mService.executeArm(paramString);
      i = j;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    ArmLog.d(TAG, "execute nRet = " + i);
    return i;
  }
  
  /* Error */
  private int ARMServiceLastVersionInstall(Context paramContext)
  {
    // Byte code:
    //   0: bipush 30
    //   2: istore_2
    //   3: ldc 162
    //   5: ldc 164
    //   7: invokestatic 111	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   10: ldc 166
    //   12: invokestatic 169	com/skt/arm/ArmSeedCheck:getProductID	(Ljava/lang/String;)Ljava/lang/String;
    //   15: astore 4
    //   17: aload 4
    //   19: ifnull +16 -> 35
    //   22: aload 4
    //   24: astore_3
    //   25: aload 4
    //   27: ldc 171
    //   29: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +31 -> 63
    //   35: ldc 177
    //   37: invokestatic 169	com/skt/arm/ArmSeedCheck:getProductID	(Ljava/lang/String;)Ljava/lang/String;
    //   40: astore 4
    //   42: aload 4
    //   44: ifnull +244 -> 288
    //   47: aload 4
    //   49: astore_3
    //   50: aload 4
    //   52: ldc 171
    //   54: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifeq +6 -> 63
    //   60: bipush 30
    //   62: ireturn
    //   63: ldc 162
    //   65: new 87	java/lang/StringBuilder
    //   68: dup
    //   69: ldc 179
    //   71: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: aload_3
    //   75: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 111	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: aload_1
    //   85: ldc 23
    //   87: invokestatic 185	com/skt/arm/ArmUtil:isInstalledCombinedTstore	(Landroid/content/Context;Ljava/lang/String;)Z
    //   90: ifeq +79 -> 169
    //   93: ldc 162
    //   95: ldc 187
    //   97: invokestatic 111	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: new 189	android/content/Intent
    //   103: dup
    //   104: invokespecial 190	android/content/Intent:<init>	()V
    //   107: astore 4
    //   109: aload 4
    //   111: ldc 192
    //   113: invokevirtual 196	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   116: pop
    //   117: aload 4
    //   119: bipush 32
    //   121: invokevirtual 200	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   124: pop
    //   125: aload 4
    //   127: ldc 202
    //   129: ldc 19
    //   131: invokevirtual 206	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   134: pop
    //   135: aload 4
    //   137: ldc 208
    //   139: aload_3
    //   140: invokevirtual 206	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   143: pop
    //   144: aload_1
    //   145: aload 4
    //   147: invokevirtual 212	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   150: bipush 41
    //   152: ireturn
    //   153: astore_1
    //   154: getstatic 62	com/skt/arm/ArmManager:TAG	Ljava/lang/String;
    //   157: ldc 214
    //   159: invokestatic 111	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload_1
    //   163: invokevirtual 158	java/lang/Exception:printStackTrace	()V
    //   166: bipush 30
    //   168: ireturn
    //   169: ldc 162
    //   171: ldc 216
    //   173: invokestatic 111	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: new 87	java/lang/StringBuilder
    //   179: dup
    //   180: ldc 218
    //   182: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_3
    //   186: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc 220
    //   191: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: astore_3
    //   198: ldc 162
    //   200: new 87	java/lang/StringBuilder
    //   203: dup
    //   204: ldc 222
    //   206: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: aload_3
    //   210: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 111	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: new 224	android/content/ComponentName
    //   222: dup
    //   223: ldc 226
    //   225: ldc 228
    //   227: invokespecial 230	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   230: astore 4
    //   232: new 189	android/content/Intent
    //   235: dup
    //   236: ldc 232
    //   238: invokespecial 233	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   241: astore 5
    //   243: aload 5
    //   245: ldc 235
    //   247: aload_3
    //   248: invokevirtual 239	java/lang/String:getBytes	()[B
    //   251: invokevirtual 242	android/content/Intent:putExtra	(Ljava/lang/String;[B)Landroid/content/Intent;
    //   254: pop
    //   255: aload 5
    //   257: ldc 244
    //   259: invokevirtual 247	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   262: pop
    //   263: aload 5
    //   265: aload 4
    //   267: invokevirtual 251	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   270: pop
    //   271: aload_1
    //   272: aload 5
    //   274: invokevirtual 254	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   277: goto -127 -> 150
    //   280: astore_1
    //   281: aload_1
    //   282: invokevirtual 158	java/lang/Exception:printStackTrace	()V
    //   285: bipush 20
    //   287: istore_2
    //   288: iload_2
    //   289: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	290	0	this	ArmManager
    //   0	290	1	paramContext	Context
    //   2	287	2	i	int
    //   24	224	3	localObject1	Object
    //   15	251	4	localObject2	Object
    //   241	32	5	localIntent	Intent
    // Exception table:
    //   from	to	target	type
    //   10	17	153	java/lang/Exception
    //   25	35	153	java/lang/Exception
    //   35	42	153	java/lang/Exception
    //   50	60	153	java/lang/Exception
    //   63	84	153	java/lang/Exception
    //   84	150	280	java/lang/Exception
    //   169	277	280	java/lang/Exception
  }
  
  private String GetMakeChallenge(String paramString)
  {
    String str = "";
    ArmLog.d(TAG, toString() + " GetMakeChallenge");
    this.nResCode = -1;
    if (existFile(this.LIB_FILE_PATH))
    {
      ArmLog.d(TAG, toString() + " - Load JNI LIBRARY[LIB_FILE_PATH]");
      System.load(this.LIB_FILE_PATH);
      str = ARMPluginMakeChallenge(paramString);
    }
    while (!existFile(this.LIB_FILE_PATH_MARMALADE)) {
      return str;
    }
    ArmLog.d(TAG, toString() + " - Load JNI LIBRARY[LIB_FILE_PATH_MARMALADE]");
    System.load(this.LIB_FILE_PATH_MARMALADE);
    return ARMPluginMakeChallenge(paramString);
  }
  
  private int GetProcessResponse(int paramInt)
  {
    return ARMPluginProcessResponse(paramInt);
  }
  
  private void ReturnService()
  {
    mArmListener.onArmResult();
    DisconnectService();
  }
  
  private boolean existFile(String paramString)
  {
    return new File(paramString).exists();
  }
  
  private void procErrorMsg(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramBoolean1 = ArmUtil.getLanguageSet(mContext).equals("ko");
    switch (paramInt)
    {
    default: 
      if (paramBoolean1) {
        this.sResMsg = "T store가 제대로 설치되어 있지 않습니다. T store를 삭제 후 재설치 하신 다음 어플리케이션을 재실행 해주시기 바랍니다.(20)";
      }
      break;
    }
    for (;;)
    {
      Log.d(ArmLog.tag, "sResMsg[" + this.sResMsg + "]");
      if (paramBoolean2)
      {
        TimerTask local2 = new TimerTask()
        {
          public void run()
          {
            Process.killProcess(Process.myPid());
          }
        };
        new Timer().schedule(local2, 2000L, 3000L);
        ReturnService();
      }
      return;
      if (paramBoolean1)
      {
        this.sResMsg = "T store가 제대로 설치되어 있지 않습니다. T store를 삭제 후 재설치 하신 다음 어플리케이션을 재실행 해주시기 바랍니다.(20)";
      }
      else
      {
        this.sResMsg = "The 'T store' application is not installed properly. After deleting and reinstalling it, run this application again.(20)";
        continue;
        if (paramBoolean1)
        {
          this.sResMsg = "네트워크에 연결할 수 없습니다. 네트워크 접속 상태를 확인 후 다시 시도해 주십시오.(30)";
        }
        else
        {
          this.sResMsg = "Your phone is disconnected to the network. Check the status of network connection and try again after connected to the network.(30)";
          continue;
          if (paramBoolean1)
          {
            this.sResMsg = "T store가 설치되지 않았습니다. T store 설치 후 다시 실행 해주시기 바랍니다.(40)";
          }
          else
          {
            this.sResMsg = "The 'T store' application is not installed. After installing it, run this application again.(40)";
            continue;
            if (paramBoolean1)
            {
              this.sResMsg = "T store ARM 업데이트가 필요합니다. 설치 완료 후 다시 실행 해주시기 바랍니다..(41)";
            }
            else
            {
              this.sResMsg = "Your 'T store ARM' application needs to be updated to upper version to run this applicatioin. Please update it and then run this application again.(41)";
              continue;
              if (paramBoolean1)
              {
                this.sResMsg = "T store ARM이 '사용안함' 설정되어 있습니다. 해당 기능을 '사용' 설정으로 변경 후 다시 실행해 주십시오.(42)";
              }
              else
              {
                this.sResMsg = "Your 'T store ARM' set 'Disable'. Check application detail infomation and set 'Enable' please.(42)";
                continue;
                if (paramBoolean1)
                {
                  this.sResMsg = ("해당 퍼미션이 존재하지 않으므로 어플리케이션을 종료합니다 \n" + ArmUtil.getNotPermissionMsg(mContext));
                }
                else
                {
                  this.sResMsg = ("Your Application Needs Permissions \n" + ArmUtil.getNotPermissionMsg(mContext));
                  continue;
                  this.sResMsg = "The 'T store' application is not installed properly. After deleting and reinstalling it, run this application again.(20)";
                }
              }
            }
          }
        }
      }
    }
  }
  
  public void ARM_Plugin_ExecuteARM(String paramString)
  {
    this.nNetState = 20;
    do
    {
      try
      {
        if (ArmUtil.getServiceState(mContext) == 3)
        {
          ArmUtil.ShowAppDetailPage(mContext);
          procErrorMsg(42, true, true);
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        procErrorMsg(20, true, true);
        return;
      }
      try
      {
        if (!ArmUtil.getPermissionCheck(mContext))
        {
          procErrorMsg(43, true, true);
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        procErrorMsg(20, true, true);
        return;
      }
      try
      {
        if (ArmUtil.checkNeedUpdateARMService(mContext, "com.skt.skaf.OA00018282")) {
          continue;
        }
        paramString = ArmUtil.getApplicationVersion(mContext, "com.skt.skaf.OA00018282");
        if ((paramString == null) || (paramString.equals(""))) {
          this.nNetState = 3;
        }
        if (ArmUtil.checkTStoreInstalled(mContext, "com.skt.skaf.A000Z00040"))
        {
          new Thread()
          {
            public void run()
            {
              this.val$handler.post(new Runnable()
              {
                public void run()
                {
                  int i = ArmManager.this.ARMServiceLastVersionInstall(ArmManager.mContext);
                  ArmManager.this.procErrorMsg(i, true, true);
                }
              });
            }
          }.start();
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        procErrorMsg(20, true, true);
        return;
      }
      procErrorMsg(40, true, true);
      return;
    } while (ARM_Plugin_ExecuteARM2(paramString));
    procErrorMsg(20, true, true);
  }
  
  public boolean ARM_Plugin_ExecuteARM2(String paramString)
  {
    ArmLog.d(TAG, toString() + " ARMPlugin ConnectService");
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool1 = bool4;
    try
    {
      if (mArmConn == null)
      {
        bool1 = bool4;
        mArmConn = new ArmConnection(null);
      }
      boolean bool2 = bool3;
      bool1 = bool4;
      if (mArmConn != null)
      {
        bool2 = bool3;
        bool1 = bool4;
        if (paramString.length() == 10)
        {
          bool1 = bool4;
          this.sAID = paramString;
          bool2 = bool3;
          bool1 = bool4;
          if (ArmUtil.ARMServiceCheck(mContext, "com.skt.skaf.OA00018282"))
          {
            bool1 = bool4;
            paramString = new Intent(IArmService.class.getName());
            bool1 = bool4;
            paramString.putExtra("PackageName", mContext.getPackageName());
            bool1 = bool4;
            ArmLog.d(ArmLog.tag, "putExtra PackageName:" + mContext.getPackageName());
            bool1 = bool4;
            bool2 = mContext.bindService(paramString, mArmConn, 1);
            bool1 = bool2;
            ArmLog.d(ArmLog.tag, "bindService Result[" + bool2 + "]");
          }
        }
      }
      return bool2;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return bool1;
  }
  
  public void DisconnectService()
  {
    ArmLog.d(TAG, toString() + " ARMPlugin DisconnectService");
    if (mArmConn != null) {
      mArmConn = null;
    }
  }
  
  public void setArmListener(ArmListener paramArmListener)
  {
    mArmListener = paramArmListener;
  }
  
  private class ArmConnection
    implements ServiceConnection
  {
    private ArmConnection() {}
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      ArmManager.this.mBoundService = paramIBinder;
      ArmManager.this.nNetState = 20;
      new AsyncTask()
      {
        protected String doInBackground(String... paramAnonymousVarArgs)
        {
          i = -1;
          ArmLog.d(ArmManager.TAG, toString() + " onServiceConnected");
          ArmManager.mService = IArmService.Stub.asInterface(ArmManager.this.mBoundService);
          paramAnonymousVarArgs = ArmManager.this.GetMakeChallenge(ArmManager.this.sAID);
          if (paramAnonymousVarArgs != "")
          {
            j = ArmManager.this.ARMServiceExecute(paramAnonymousVarArgs);
            Log.d("ArmLog", "ArmServiceExecute nRet = " + j);
            i = j;
            if (j != 10001)
            {
              i = j;
              if (j != 10002)
              {
                j = ArmManager.this.GetProcessResponse(j);
                Log.d("ArmLog", "GetProcessResponse nRet = " + j);
                i = j;
                if (j == 1) {}
              }
            }
          }
          try
          {
            ((Activity)ArmManager.mContext).moveTaskToBack(true);
            i = j;
          }
          catch (Exception paramAnonymousVarArgs)
          {
            try
            {
              for (;;)
              {
                ArmManager.mContext.unbindService(ArmManager.mArmConn);
                return null;
                paramAnonymousVarArgs = paramAnonymousVarArgs;
                ArmLog.d(ArmManager.TAG, toString() + " Not ACTIVITY");
                i = j;
                continue;
                if (i == 10002) {
                  ArmManager.this.nNetState = 3;
                } else {
                  ArmManager.this.nNetState = 20;
                }
              }
            }
            catch (Exception paramAnonymousVarArgs)
            {
              for (;;)
              {
                paramAnonymousVarArgs.printStackTrace();
              }
            }
          }
          if (i == 1) {
            ArmManager.this.nNetState = 1;
          }
        }
        
        protected void onPostExecute(String paramAnonymousString)
        {
          super.onPostExecute(paramAnonymousString);
          ArmManager.this.ReturnService();
        }
      }.execute(new String[] { "" });
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      ArmManager.this.ReturnService();
      ArmLog.d(ArmManager.TAG, toString() + " onServiceDisconnected");
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.ArmManager
 * JD-Core Version:    0.7.0.1
 */