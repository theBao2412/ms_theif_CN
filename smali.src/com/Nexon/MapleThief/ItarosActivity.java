package com.Nexon.MapleThief;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Instrumentation;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.chartboost.sdk.ChartBoost;
import com.chartboost.sdk.ChartBoostDelegateBase;
import com.feelingk.iap.IAPLib.OnClientListener;
import com.feelingk.iap.net.ItemAuth;
import com.feelingk.iap.net.ItemAuthInfo;
import com.feelingk.iap.net.ItemUse;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.kt.olleh.inapp.OnInAppListener;
import com.kt.olleh.inapp.net.Response;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoyNotifier;
import com.tapjoy.TapjoySpendPointsNotifier;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;
import net.daum.adam.publisher.AdView.AnimationType;
import net.daum.adam.publisher.AdView.OnAdClickedListener;
import net.daum.adam.publisher.AdView.OnAdClosedListener;
import net.daum.adam.publisher.AdView.OnAdFailedListener;
import net.daum.adam.publisher.AdView.OnAdLoadedListener;
import net.daum.adam.publisher.AdView.OnAdWillLoadListener;
import net.daum.adam.publisher.impl.AdError;

public class ItarosActivity
  extends Activity
  implements TapjoyNotifier, TapjoySpendPointsNotifier
{
  private static final int DIALOG_ARMERROR_BOX = 4;
  private static final int DIALOG_ARMNOTINSTALL_BOX = 5;
  private static final int DIALOG_BILLING_NOT_SUPPORTED_ID = 199;
  private static final int DIALOG_ERROR_BOX = 2;
  private static final int DIALOG_EXIT_BOX = 3;
  private static final int DIALOG_INITFAIL_BOX = 100;
  private static final int DIALOG_INIT_BOX = 102;
  private static final int DIALOG_INSTALL_FILES = 1;
  private static final int DIALOG_LGTPAY_BOX = 200;
  private static final int DIALOG_LIMIT_DAY = 96;
  private static final int DIALOG_LIMIT_MONTH = 97;
  private static final int DIALOG_TAPJOY_REWARDOK = 777;
  private static final int DIALOG_USIM_BOX = 101;
  public static final int GOOGLE = 3;
  private static final int HANDLER_INSTALL_FAILED = 2;
  private static final int HANDLER_INSTALL_SUCCESS = 1;
  private static final String LOGTAG = "BannerTypeJava";
  private static final int MAX_RANDOM_VALUE = 1000;
  public static final int OLLEH = 1;
  public static final int OZSTORE = 2;
  public static final int STORETYPE = 3;
  public static final int TSTORE = 0;
  public static int rLevyResult = 0;
  public String OZStoreArmID = "AQ00102034";
  public String OllehAID = "8100E664";
  public String PID = "";
  public ProgressBar PercentBar;
  public String TstoreAID = "OA00303854";
  private net.daum.adam.publisher.AdView adView = null;
  private com.google.ads.AdView admobView = null;
  private boolean firstLoading = false;
  private String gAppID;
  private String gIP;
  private int gPORT;
  private int gPrice;
  private String gSendPhoneNum;
  private int gTouchMoveNum = 0;
  private int gettingPoint;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 1) {
        ItarosActivity.this.Create();
      }
      while (paramAnonymousMessage.what != 2) {
        return;
      }
      ItarosActivity.this.showDialog(2);
    }
  };
  private BillingService mBillingService;
  IAPLib.OnClientListener mClientListener = new IAPLib.OnClientListener()
  {
    public void onDlgAutoPurchaseInfoCancel()
    {
      NativeClass.OnNativeBuyResult(99, "item buy cancel");
    }
    
    public void onDlgError()
    {
      NativeClass.OnNativeBuyResult(11, "dialog error");
    }
    
    public void onDlgPurchaseCancel()
    {
      NativeClass.OnNativeBuyResult(99, "item buy cancel");
    }
    
    public void onError(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      switch (paramAnonymousInt1)
      {
      case 2004: 
      case 2006: 
      case 2007: 
      default: 
        return;
      case 2000: 
        Log.v("Debug_Android", "IAPLib.HND_ERR_AUTH : " + Integer.toString(paramAnonymousInt2));
        NativeClass.OnNativeBuyResult(1, "HND_ERR_AUTH");
        return;
      case 2002: 
        Log.v("Debug_Android", "IAPLib.HND_ERR_ITEMQUERY : " + Integer.toString(paramAnonymousInt2));
        NativeClass.OnNativeBuyResult(1, "HND_ERR_ITEMQUERY");
        return;
      case 2001: 
        Log.v("Debug_Android", "IAPLib.HND_ERR_ITEMINFO : " + Integer.toString(paramAnonymousInt2));
        NativeClass.OnNativeBuyResult(1, "HND_ERR_ITEMINFO");
        return;
      case 2003: 
        Log.v("Debug_Android", "IAPLib.HND_ERR_ITEMPURCHASE : " + Integer.toString(paramAnonymousInt2));
        NativeClass.OnNativeBuyResult(1, "HND_ERR_ITEMPURCHASE");
        return;
      case 2005: 
        Log.v("Debug_Android", "IAPLib.HND_ERR_DATA : " + Integer.toString(paramAnonymousInt2));
        NativeClass.OnNativeBuyResult(1, "HND_ERR_DATA");
        return;
      case 2008: 
        Log.v("Debug_Android", "IAPLib.HND_ERR_NORMALTIMEOUT");
        NativeClass.OnNativeBuyResult(1, "HND_ERR_NORMALTIMEOUT");
        return;
      }
      Log.v("Debug_Android", "IAPLib.HND_ERR_PAYMENTTIMEOUT");
      NativeClass.OnNativeBuyResult(1, "HND_ERR_PAYMENTTIMEOUT");
    }
    
    public void onItemAuthInfo(ItemAuthInfo paramAnonymousItemAuthInfo)
    {
      Log.v("Debug_Android", "onItemAuthInfo");
    }
    
    public void onItemPurchaseComplete()
    {
      NativeClass.OnNativeBuyResult(0, "item buy success");
    }
    
    public Boolean onItemQueryComplete()
    {
      Log.v("Debug_Android", "onItemQueryComplete");
      return Boolean.valueOf(true);
    }
    
    public void onItemUseQuery(ItemUse paramAnonymousItemUse)
    {
      Log.v("Debug_Android", "onItemUseQuery");
    }
    
    public void onJoinDialogCancel()
    {
      NativeClass.OnNativeBuyResult(99, "item buy cancel");
    }
    
    public void onJuminNumberDlgCancel()
    {
      NativeClass.OnNativeBuyResult(99, "item buy cancel");
    }
    
    public void onPurchaseDismiss()
    {
      NativeClass.OnNativeBuyResult(99, "item buy cancel");
    }
    
    public void onWholeQuery(ItemAuth[] paramAnonymousArrayOfItemAuth)
    {
      Log.d("Debug_Android", Integer.toString(paramAnonymousArrayOfItemAuth.length));
    }
  };
  private DungeonsPurchaseObserver mDungeonsPurchaseObserver;
  private Handler mHandler;
  OnInAppListener mInAppListener = new OnInAppListener()
  {
    public void OnError(String paramAnonymousString1, String paramAnonymousString2)
    {
      if (paramAnonymousString1.equals("I001")) {
        NativeClass.OnNativeBuyResult(99, "item buy cancel");
      }
      for (;;)
      {
        Log.d("OnResultPurchase ", paramAnonymousString1);
        return;
        if (paramAnonymousString1.equals("B010")) {
          NativeClass.OnNativeBuyResult(97, "buy month limit");
        } else if (paramAnonymousString1.equals("B009")) {
          NativeClass.OnNativeBuyResult(96, "buy day limit");
        } else {
          NativeClass.OnNativeBuyResult(1, "item buy fail");
        }
      }
    }
    
    public void OnResultAPI(String paramAnonymousString, Response paramAnonymousResponse)
    {
      Log.d("OnResultPurchase ", paramAnonymousString);
    }
    
    public void OnResultFileURL(String paramAnonymousString1, String paramAnonymousString2) {}
    
    public void OnResultOLDAPI(String paramAnonymousString1, String paramAnonymousString2) {}
    
    public void OnResultPurchase(String paramAnonymousString)
    {
      Log.d("OnResultPurchase ", paramAnonymousString);
      NativeClass.OnNativeBuyResult(0, "item buy success");
    }
  };
  private SensorEventListener m_AccListener;
  private Sensor m_AccSensor;
  BNVGLView m_GLView;
  private KeyboardDialog m_KeyBoardDialog;
  private BNVMediaPlayer m_MediaPlayer;
  private BNVMediaPlayer m_MediaPlayerB;
  private BNVNetworkManager m_NetworkManager;
  private SensorEventListener m_OriListener;
  private Sensor m_OriSensor;
  private PowerManager m_Power;
  private Random m_Random = new Random();
  private SensorManager m_SensorManager;
  private BNVSoundPool m_SoundPool;
  private PowerManager.WakeLock m_WakeLock;
  private boolean m_isAvailableSDCard = false;
  DialogInterface.OnKeyListener onKey = new DialogInterface.OnKeyListener()
  {
    public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      switch (paramAnonymousInt)
      {
      default: 
        return false;
      }
      ItarosActivity.this.finish();
      System.exit(0);
      return false;
    }
  };
  
  private void releaseService() {}
  
  private void runAdmob()
  {
    if (this.adView != null)
    {
      this.adView.destroy();
      this.adView = null;
    }
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131099648);
    this.admobView = new com.google.ads.AdView(this, AdSize.BANNER, "a1505147da0babb");
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(140, 0, 0, 0);
    this.admobView.setLayoutParams(localLayoutParams);
    localRelativeLayout.addView(this.admobView, 1);
    this.admobView.loadAd(new AdRequest());
  }
  
  private boolean runArmService()
  {
    return true;
  }
  
  public boolean BGMLoadB(String paramString)
  {
    return this.m_MediaPlayerB.Load(paramString);
  }
  
  public boolean BGMPlayB(boolean paramBoolean)
  {
    return this.m_MediaPlayerB.Play(paramBoolean);
  }
  
  public void BGMReleaseB()
  {
    this.m_MediaPlayerB.Release();
  }
  
  public void BGMStopB()
  {
    this.m_MediaPlayerB.Stop();
  }
  
  public void BGMVolumeB(float paramFloat)
  {
    this.m_MediaPlayerB.SetVolume(paramFloat);
  }
  
  public void CallOtherProductPage() {}
  
  void Create()
  {
    Object localObject = ChartBoost.getSharedChartBoost();
    ((ChartBoost)localObject).setContext(this);
    ((ChartBoost)localObject).setAppId("50501fb316ba476461000043");
    ((ChartBoost)localObject).setAppSignature("4d8c7111f8cc0b8ad6f79b3916f857f58386ce87");
    ((ChartBoost)localObject).install();
    ((ChartBoost)localObject).loadInterstitial();
    ((ChartBoost)localObject).setDelegate(new ChartBoostDelegateBase()
    {
      public boolean shouldDisplayInterstitial(View paramAnonymousView)
      {
        return true;
      }
      
      public boolean shouldRequestInterstitial()
      {
        return true;
      }
    });
    this.m_GLView = new BNVGLView(getApplication());
    setContentView(2130903040);
    ((RelativeLayout)findViewById(2131099648)).addView(this.m_GLView, 0);
    this.firstLoading = true;
    this.adView = new net.daum.adam.publisher.AdView(this);
    this.adView.setOnAdClickedListener(new AdView.OnAdClickedListener()
    {
      public void OnAdClicked()
      {
        Log.i("BannerTypeJava", "You clicked on an ad.");
      }
    });
    this.adView.setOnAdFailedListener(new AdView.OnAdFailedListener()
    {
      public void OnAdFailed(AdError paramAnonymousAdError, String paramAnonymousString)
      {
        Log.w("BannerTypeJava", paramAnonymousString);
        Log.i("BannerTypeJava", "Failed to download advertisement.");
        if (ItarosActivity.this.adView.getVisibility() == 0) {
          ItarosActivity.this.runAdmob();
        }
      }
    });
    this.adView.setOnAdLoadedListener(new AdView.OnAdLoadedListener()
    {
      public void OnAdLoaded()
      {
        Log.i("BannerTypeJava", "The ad loaded successfully.");
      }
    });
    this.adView.setOnAdWillLoadListener(new AdView.OnAdWillLoadListener()
    {
      public void OnAdWillLoad(String paramAnonymousString)
      {
        Log.i("BannerTypeJava", "This brings up an ad. : " + paramAnonymousString);
      }
    });
    this.adView.setOnAdClosedListener(new AdView.OnAdClosedListener()
    {
      public void OnAdClosed()
      {
        Log.i("BannerTypeJava", "Ad has been closed.");
      }
    });
    this.adView.setClientId("3a27Z1fT139bd7db5be");
    this.adView.setRequestInterval(40);
    this.adView.setAnimationType(AdView.AnimationType.FLIP_HORIZONTAL);
    this.adView.setVisibility(8);
    localObject = new RelativeLayout.LayoutParams(-2, -2);
    Display localDisplay = ((WindowManager)getBaseContext().getSystemService("window")).getDefaultDisplay();
    if (localDisplay.getHeight() >= 480) {
      ((RelativeLayout.LayoutParams)localObject).width = localDisplay.getHeight();
    }
    if (((RelativeLayout.LayoutParams)localObject).width >= 800) {
      ((RelativeLayout.LayoutParams)localObject).width = 480;
    }
    ((RelativeLayout.LayoutParams)localObject).setMargins(140, 0, 0, 0);
    this.adView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    NativeClass.Init((Vibrator)getSystemService("vibrator"));
    localObject = getFilesDir().getAbsolutePath();
    this.m_NetworkManager = new BNVNetworkManager((ConnectivityManager)getSystemService("connectivity"));
    this.m_SoundPool = new BNVSoundPool(getBaseContext(), (String)localObject);
    this.m_MediaPlayer = new BNVMediaPlayer(getBaseContext(), (String)localObject);
    this.m_MediaPlayerB = new BNVMediaPlayer(getBaseContext(), (String)localObject);
    NativeClass.InitSound(this.m_SoundPool, this.m_MediaPlayer);
    NativeClass.InitActivity(this);
    OnNativeInitializeJNI();
    NativeClass.OnNativePath((String)localObject);
    Log.v("Debug_Android", "Activity Create");
  }
  
  public void Exit()
  {
    finish();
    onDestroy();
    System.exit(0);
  }
  
  public void ExitPopup()
  {
    if (this.m_SoundPool != null) {
      this.m_SoundPool.PauseAll();
    }
    if (this.m_MediaPlayer != null) {
      this.m_MediaPlayer.Pause();
    }
    showDialog(3);
  }
  
  public String GetDeviceModel()
  {
    return Build.MODEL;
  }
  
  public long GetExternalMemorySize()
  {
    if (BNVInstaller.externalMemoryAvailable()) {
      return BNVInstaller.getAvailableExternalMemorySize();
    }
    return -1L;
  }
  
  public long GetInternalMemorySize()
  {
    return BNVInstaller.getAvailableInternalMemorySize();
  }
  
  public String GetPhoneNumber()
  {
    Object localObject = getBaseContext();
    if (localObject == null) {
      localObject = null;
    }
    TelephonyManager localTelephonyManager;
    String str;
    do
    {
      return localObject;
      localTelephonyManager = (TelephonyManager)((Context)localObject).getSystemService("phone");
      str = localTelephonyManager.getDeviceId();
      localObject = str;
    } while (str.length() != 0);
    return localTelephonyManager.getLine1Number();
  }
  
  public void IAPInit() {}
  
  public void Native_TapJoyShowOffer()
  {
    TapjoyConnect.getTapjoyConnectInstance().showOffers();
  }
  
  public void Native_TapjoyGetPoint()
  {
    TapjoyConnect.getTapjoyConnectInstance().getTapPoints(this);
  }
  
  public void Native_callWeb(String paramString)
  {
    Global.WebUrl = paramString;
    startActivity(new Intent(this, CustomWebView.class));
  }
  
  public boolean Native_isOnlineWifi()
  {
    return this.m_NetworkManager.IsOnlineWifi();
  }
  
  public void Native_sendSMS(String paramString) {}
  
  public native void OnNativeDestroyJNI();
  
  public native void OnNativeInitializeJNI();
  
  public void RunInKeyPad()
  {
    this.m_KeyBoardDialog = new KeyboardDialog(this);
    this.m_KeyBoardDialog.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        paramAnonymousDialogInterface = ItarosActivity.this.m_KeyBoardDialog.GetResult();
        try
        {
          NativeClass.OnNativeKeyPadDone(paramAnonymousDialogInterface.getBytes("KSC5601"));
          Log.v("Debug_Android", paramAnonymousDialogInterface);
          return;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;)
          {
            localUnsupportedEncodingException.printStackTrace();
          }
        }
      }
    });
    this.m_KeyBoardDialog.setTitle("Keyboard Test");
    this.m_KeyBoardDialog.show();
  }
  
  public void downToAdView()
  {
    new Instrumentation().sendPointerSync(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, -70.0F, -70.0F, 0));
  }
  
  public void getSpendPointsResponse(String paramString, int paramInt)
  {
    if ((paramInt == 0) && (this.gettingPoint > 0))
    {
      NativeClass.OnNativeGetTapPointResult(this.gettingPoint);
      new Instrumentation().sendPointerSync(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, -90.0F, -90.0F, 0));
    }
  }
  
  public void getSpendPointsResponseFailed(String paramString) {}
  
  public void getUpdatePoints(String paramString, int paramInt)
  {
    this.gettingPoint = paramInt;
    TapjoyConnect.getTapjoyConnectInstance().spendTapPoints(paramInt, this);
  }
  
  public void getUpdatePointsFailed(String paramString) {}
  
  public void installOne()
  {
    final String str = getFilesDir().getAbsolutePath();
    if (BNVInstaller.CheckResource(str))
    {
      this.handler.sendEmptyMessage(1);
      return;
    }
    new Thread(new Runnable()
    {
      public void run()
      {
        if (BNVInstaller.InstallResource(ItarosActivity.this.getAssets(), str, ItarosActivity.this.PercentBar))
        {
          ItarosActivity.this.handler.sendEmptyMessage(1);
          return;
        }
        ItarosActivity.this.handler.sendEmptyMessage(2);
      }
    }).start();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 8966) {
      Create();
    }
    if (paramInt1 == 7789)
    {
      if (Global.b_check) {
        paramIntent = getFilesDir().getAbsolutePath() + File.separator + "prov.txt";
      }
    }
    else {
      try
      {
        paramIntent = new FileWriter(paramIntent);
        paramIntent.write(1);
        paramIntent.close();
        Create();
        return;
      }
      catch (IOException paramIntent)
      {
        for (;;)
        {
          paramIntent.printStackTrace();
        }
      }
    }
    finish();
  }
  
  public void onBackPressed() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mHandler = new Handler();
    this.mDungeonsPurchaseObserver = new DungeonsPurchaseObserver(this.mHandler);
    this.mBillingService = new BillingService();
    this.mBillingService.setContext(this);
    ResponseHandler.register(this.mDungeonsPurchaseObserver);
    this.mBillingService.checkBillingSupported();
    TapjoyConnect.requestTapjoyConnect(getBaseContext(), "1010df1b-376b-43ad-84bc-1e87c652f490", "TQT306LOTFWGXTFx9YuQ");
    for (;;)
    {
      try
      {
        paramBundle = getBaseContext().getResources().openRawResourceFd(2130968576);
        if (paramBundle == null) {
          continue;
        }
        NativeClass.OnVFSInitialize(paramBundle.getFileDescriptor(), paramBundle.getStartOffset(), paramBundle.getLength());
      }
      catch (Resources.NotFoundException paramBundle)
      {
        Log.v("Debug_Android", "Packing File is not exist...");
        finish();
        continue;
      }
      setContentView(2130903043);
      this.PercentBar = ((ProgressBar)findViewById(2131099653));
      IAPInit();
      installOne();
      return;
      Log.v("Debug_Android", "Packing file failed to open");
      finish();
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    AlertDialog.Builder localBuilder;
    if (paramInt == 4)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("authentication error");
      localBuilder.setMessage("The game cannot be played due to an authentication error.");
      localBuilder.setPositiveButton("check", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.finish();
          System.exit(0);
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 100)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("Initialize");
      localBuilder.setMessage("Initialization failed.");
      localBuilder.setPositiveButton("check", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.finish();
          System.exit(0);
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 101)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("Initialize");
      localBuilder.setMessage("An error occurred while checking for piracy.");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.finish();
          System.exit(0);
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 5)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("연동 설치 오류");
      localBuilder.setMessage("The linkage program is not installed. Please upgrade your phone.");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.finish();
          System.exit(0);
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 2)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("게임 설치 오류");
      localBuilder.setMessage(BNVInstaller.m_strResultMessage);
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.finish();
          System.exit(0);
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 3)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setIcon(2130837512);
      localBuilder.setCancelable(false);
      localBuilder.setTitle("게임 종료");
      localBuilder.setMessage("게임을 종료하시겠습니까?");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.finish();
          ItarosActivity.this.onDestroy();
          System.exit(0);
        }
      });
      localBuilder.setNegativeButton("취소", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (ItarosActivity.this.m_SoundPool != null) {
            ItarosActivity.this.m_SoundPool.ResumeAll();
          }
          if (ItarosActivity.this.m_MediaPlayer != null) {
            ItarosActivity.this.m_MediaPlayer.Resume();
          }
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 97)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("월구매한도");
      localBuilder.setMessage("월별 구매한도를 초과하여\n더 이상 구매하실 수 없습니다.");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      });
      return localBuilder.create();
    }
    if (paramInt == 96)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("일구매한도");
      localBuilder.setMessage("일일 구매한도를 초과하여\n더 이상 구매하실 수 없습니다.");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      });
      return localBuilder.create();
    }
    if (paramInt == 199)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("구매불가");
      localBuilder.setMessage("잘못된 구매요청입니다.");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          NativeClass.OnNativeBuyResult(1, "item buy fail");
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 777)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setCancelable(false);
      localBuilder.setOnKeyListener(this.onKey);
      localBuilder.setIcon(2130837512);
      localBuilder.setTitle("TapJoy 충전");
      localBuilder.setMessage(Integer.toString(this.gettingPoint) + "메소 무료 충전에 성공하였습니다.");
      localBuilder.setPositiveButton("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ItarosActivity.this.gettingPoint = 0;
          ItarosActivity.this.removeDialog(777);
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 200)
    {
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setIcon(2130837512);
      localBuilder.setCancelable(false);
      SpannableStringBuilder localSpannableStringBuilder1 = new SpannableStringBuilder("아이템 구매");
      localSpannableStringBuilder1.setSpan(new ForegroundColorSpan(-1), 0, localSpannableStringBuilder1.length(), 33);
      SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder("본 아이템은 ");
      localSpannableStringBuilder2.setSpan(new ForegroundColorSpan(-1), 0, localSpannableStringBuilder2.length(), 33);
      SpannableStringBuilder localSpannableStringBuilder3 = new SpannableStringBuilder(Integer.toString(this.gPrice) + " 원의 \n");
      localSpannableStringBuilder3.setSpan(new ForegroundColorSpan(-1), 0, localSpannableStringBuilder3.length(), 33);
      SpannableStringBuilder localSpannableStringBuilder4 = new SpannableStringBuilder("정보이용료가 부과됩니다.\n구매하시겠습니까?");
      localSpannableStringBuilder4.setSpan(new ForegroundColorSpan(-1), 0, localSpannableStringBuilder4.length(), 33);
      localSpannableStringBuilder2.append(localSpannableStringBuilder3);
      localSpannableStringBuilder2.append(localSpannableStringBuilder4);
      localBuilder.setTitle(localSpannableStringBuilder1);
      localBuilder.setMessage(localSpannableStringBuilder2);
      localBuilder.setPositiveButton("구매", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (!ItarosActivity.this.mBillingService.requestPurchase(ItarosActivity.this.PID, null)) {
            ItarosActivity.this.showDialog(199);
          }
          ItarosActivity.this.removeDialog(200);
        }
      });
      localBuilder.setNegativeButton("취소", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          NativeClass.OnNativeBuyResult(99, "item buy cancel");
          ItarosActivity.this.removeDialog(200);
        }
      });
      return localBuilder.create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  public void onDestroy()
  {
    if (this.m_GLView != null) {
      this.m_GLView = null;
    }
    if (this.m_SoundPool != null) {
      this.m_SoundPool.ReleaseAll();
    }
    if (this.m_MediaPlayer != null) {
      this.m_MediaPlayer.Release();
    }
    if (this.m_MediaPlayerB != null) {
      this.m_MediaPlayerB.Release();
    }
    OnNativeDestroyJNI();
    NativeClass.OnNativeDestroy();
    Log.v("Debug_Android", "Activity Destroy");
    super.onDestroy();
    this.mBillingService.unbind();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.m_GLView != null) && (paramKeyEvent.getRepeatCount() == 0)) {}
    switch (paramKeyEvent.getKeyCode())
    {
    default: 
      return super.onKeyDown(paramInt, paramKeyEvent);
    case 4: 
      NativeClass.OnNativeBackKeyPress();
      return true;
    }
    NativeClass.OnNativeMenuKeyPress();
    return true;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.m_GLView != null) {}
    switch (paramKeyEvent.getKeyCode())
    {
    default: 
      return super.onKeyUp(paramInt, paramKeyEvent);
    case 4: 
      NativeClass.OnNativeBackKeyRelease();
      return true;
    }
    NativeClass.OnNativeMenuKeyRelease();
    return true;
  }
  
  protected void onPause()
  {
    if (this.adView != null) {
      this.adView.setVisibility(8);
    }
    for (;;)
    {
      if (this.m_GLView != null)
      {
        this.m_GLView.onPause();
        NativeClass.OnNativePause();
      }
      if (this.m_SoundPool != null) {
        this.m_SoundPool.PauseAll();
      }
      if (this.m_MediaPlayer != null) {
        this.m_MediaPlayer.Pause();
      }
      NativeClass.Pause();
      Log.v("Debug_Android", "Activity Pause");
      super.onPause();
      return;
      if (this.admobView != null) {
        this.admobView.setVisibility(8);
      }
    }
  }
  
  protected void onResume()
  {
    if (this.m_GLView != null)
    {
      this.m_GLView.onResume();
      NativeClass.OnNativeResume();
    }
    if (this.m_SoundPool != null) {
      this.m_SoundPool.ResumeAll();
    }
    if (this.m_MediaPlayer != null) {
      this.m_MediaPlayer.Resume();
    }
    NativeClass.Resume();
    Log.v("Debug_Android", "Activity Resume");
    super.onResume();
  }
  
  protected void onStart()
  {
    super.onStart();
    ResponseHandler.register(this.mDungeonsPurchaseObserver);
  }
  
  protected void onStop()
  {
    super.onStop();
    ResponseHandler.unregister(this.mDungeonsPurchaseObserver);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    int i;
    int j;
    if (this.m_GLView != null)
    {
      if (paramMotionEvent.getPointerCount() <= 1) {
        break label156;
      }
      i = paramMotionEvent.getAction();
      j = paramMotionEvent.findPointerIndex((0xFF00 & i) >> 8);
      if (j != -1) {
        break label51;
      }
    }
    for (;;)
    {
      bool = super.onTouchEvent(paramMotionEvent);
      label51:
      int k;
      label156:
      label325:
      do
      {
        do
        {
          do
          {
            return bool;
            k = (int)paramMotionEvent.getX(j);
            int m = (int)paramMotionEvent.getY(j);
            switch (i & 0xFF)
            {
            case 3: 
            case 4: 
            default: 
              break;
            case 2: 
              NativeClass.OnNativeTouchMove(paramMotionEvent.getPointerCount(), j, k, m);
              break;
            case 5: 
              NativeClass.OnNativeTouchPress(paramMotionEvent.getPointerCount(), j, k, m);
              break;
            case 6: 
              NativeClass.OnNativeTouchRelease(paramMotionEvent.getPointerCount(), j, k, m);
              break;
              i = paramMotionEvent.getAction();
              j = (int)paramMotionEvent.getX();
              k = (int)paramMotionEvent.getY();
              if ((j == -10) && (k == -10) && (paramMotionEvent.getAction() == 0))
              {
                showDialog(200);
                return true;
              }
              if ((j != -60) || (k != -60) || (paramMotionEvent.getAction() != 0)) {
                break label259;
              }
              if (this.adView != null)
              {
                this.adView.setVisibility(8);
                return true;
              }
              break;
            }
          } while (this.admobView == null);
          this.admobView.setVisibility(8);
          return true;
          if ((j != -70) || (k != -70) || (paramMotionEvent.getAction() != 0)) {
            break label342;
          }
          if (this.adView == null) {
            break label325;
          }
          this.adView.setVisibility(0);
        } while (!this.firstLoading);
        ((RelativeLayout)findViewById(2131099648)).addView(this.adView, 1);
        this.firstLoading = false;
        return true;
      } while (this.admobView == null);
      label259:
      this.admobView.setVisibility(0);
      return true;
      label342:
      if ((j == -90) && (k == -90) && (paramMotionEvent.getAction() == 0))
      {
        showDialog(777);
        return true;
      }
      switch (i)
      {
      default: 
        break;
      case 0: 
        NativeClass.OnNativeTouchPress(1, paramMotionEvent.getPointerId(0), j, k);
        break;
      case 2: 
        NativeClass.OnNativeTouchMove(1, paramMotionEvent.getPointerId(0), j, k);
        break;
      case 1: 
        NativeClass.OnNativeTouchRelease(1, paramMotionEvent.getPointerId(0), j, k);
      }
    }
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    return super.onTrackballEvent(paramMotionEvent);
  }
  
  void proviCreate()
  {
    startActivity(new Intent(this, DunfightActivity.class));
  }
  
  public void tryBuyItem(String paramString, int paramInt)
  {
    this.gPrice = paramInt;
    this.PID = paramString;
    new Instrumentation().sendPointerSync(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, -10.0F, -10.0F, 0));
  }
  
  public void upToAdView()
  {
    new Instrumentation().sendPointerSync(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, -60.0F, -60.0F, 0));
  }
  
  class AccListener
    implements SensorEventListener
  {
    AccListener() {}
    
    public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
    
    public void onSensorChanged(SensorEvent paramSensorEvent)
    {
      if (ItarosActivity.this.m_GLView != null) {
        NativeClass.OnNativeSensorEventAccelerometer(paramSensorEvent.values[0], paramSensorEvent.values[1], paramSensorEvent.values[2]);
      }
    }
  }
  
  private class DungeonsPurchaseObserver
    extends PurchaseObserver
  {
    public DungeonsPurchaseObserver(Handler paramHandler)
    {
      super(paramHandler);
    }
    
    public void onBillingSupported(boolean paramBoolean)
    {
      if (!paramBoolean) {
        ItarosActivity.this.showDialog(199);
      }
    }
    
    public void onPurchaseStateChange(Consts.PurchaseState paramPurchaseState, String paramString1, int paramInt, long paramLong, String paramString2)
    {
      paramPurchaseState = Consts.PurchaseState.PURCHASED;
    }
    
    public void onRequestPurchaseResponse(BillingService.RequestPurchase paramRequestPurchase, Consts.ResponseCode paramResponseCode)
    {
      if (paramResponseCode == Consts.ResponseCode.RESULT_OK)
      {
        NativeClass.OnNativeBuyResult(0, "item buy success");
        return;
      }
      if (paramResponseCode == Consts.ResponseCode.RESULT_USER_CANCELED)
      {
        NativeClass.OnNativeBuyResult(99, "item buy cancel");
        return;
      }
      NativeClass.OnNativeBuyResult(1, "item buy fail");
    }
    
    public void onRestoreTransactionsResponse(BillingService.RestoreTransactions paramRestoreTransactions, Consts.ResponseCode paramResponseCode)
    {
      if (paramResponseCode == Consts.ResponseCode.RESULT_OK) {
        return;
      }
      NativeClass.OnNativeBuyResult(1, "item buy fail");
    }
  }
  
  class OriListener
    implements SensorEventListener
  {
    OriListener() {}
    
    public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
    
    public void onSensorChanged(SensorEvent paramSensorEvent)
    {
      if (ItarosActivity.this.m_GLView != null) {
        NativeClass.OnNativeSensorEventOrientation(paramSensorEvent.values[0], paramSensorEvent.values[1], paramSensorEvent.values[2]);
      }
    }
    
    public void onSensorChanged1(SensorEvent paramSensorEvent) {}
  }
}



/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\

 * Qualified Name:     com.Nexon.MapleThief.ItarosActivity

 * JD-Core Version:    0.7.0.1

 */