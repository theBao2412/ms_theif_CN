package com.kt.olleh.inapp;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.kt.olleh.inapp.Config.Config;

public abstract class KTInAppActivity
  extends Activity
  implements ILibMode
{
  public final String TAG = "KTInAppActivity";
  private String mAuthen;
  private InApp mInApp;
  private int mLibMode = -1;
  private OnInAppListener mListener;
  private Purchase mPurchase;
  IRemoteInapService mService;
  ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      if (Config.DEBUG) {
        Config.LogI("KTInAppActivity", " ** onServiceConnected");
      }
      KTInAppActivity.this.mService = IRemoteInapService.Stub.asInterface(paramAnonymousIBinder);
      if (KTInAppActivity.this.mService != null) {}
      try
      {
        InAppSettings.UserInfo = KTInAppActivity.this.mService.getPhoneNumber();
        if (Config.DEBUG) {
          Config.LogI("KTInAppActivity", "SoIP Phone number = " + InAppSettings.UserInfo);
        }
        KTInAppActivity.this.onServiceStop();
        return;
      }
      catch (RemoteException paramAnonymousComponentName)
      {
        paramAnonymousComponentName.printStackTrace();
      }
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      if (Config.DEBUG) {
        Config.LogI("KTInAppActivity", " onServiceDisconnected");
      }
      KTInAppActivity.this.mService = null;
    }
  };
  
  private String getPhoneNumber()
  {
    return ((TelephonyManager)getSystemService("phone")).getLine1Number();
  }
  
  private String getUserInfo()
  {
    if (InAppSettings.UserInfo == null) {}
    switch (this.mLibMode)
    {
    default: 
      if (InAppSettings.UserInfo != null) {
        if (Config.DEBUG) {
          Config.LogD("KTInAppActivity", "UserInfo.information = " + InAppSettings.UserInfo);
        }
      }
      break;
    }
    for (;;)
    {
      return InAppSettings.UserInfo;
      InAppSettings.UserInfo = ((TelephonyManager)getSystemService("phone")).getLine1Number();
      break;
      if (!Config.DEBUG) {
        break;
      }
      Config.LogE("KTInAppActivity", "ILibMode.mode_SoIP number not exist");
      break;
      if (!Config.DEBUG) {
        break;
      }
      Config.LogE("KTInAppActivity", "ILibMode.mode_KPAD Show ID not exist");
      break;
      if (Config.DEBUG) {
        Config.LogD("KTInAppActivity", "UserInfo.information = null");
      }
    }
  }
  
  private String getUserInfo(String paramString)
  {
    return paramString;
  }
  
  private void notExistUserInfo()
  {
    switch (this.mLibMode)
    {
    default: 
      return;
    }
    this.mListener.OnError("CRAB2001", "ID or PhoneNumber 오류");
  }
  
  private void onServiceStart()
  {
    bindService(new Intent("com.kt.olleh.inapp.IRemoteInapService"), this.serviceConnection, 1);
  }
  
  private void onServiceStop()
  {
    unbindService(this.serviceConnection);
  }
  
  public void getDIAllList(String paramString)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIAllList(paramString, str, this.mAuthen, this.mListener);
  }
  
  public void getDIAllList(String paramString, int paramInt1, int paramInt2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
    {
      this.mInApp.getDIAllList(paramString, str, this.mAuthen, this.mListener);
      return;
    }
    this.mInApp.getDIAllList(paramString, str, this.mAuthen, paramInt1, paramInt2, this.mListener);
  }
  
  public void getDIDownloadableList(String paramString)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIDownloadableList(paramString, str, this.mAuthen, this.mListener);
  }
  
  public void getDIGiftList(String paramString)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIGiftList(paramString, str, this.mAuthen, this.mListener);
  }
  
  public void getDIGiftList(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    if (paramString2 == null)
    {
      this.mInApp.getDIGiftList(paramString1, str, this.mAuthen, this.mListener);
      return;
    }
    this.mInApp.getDIGiftList(paramString1, str, this.mAuthen, getUserInfo(paramString2), this.mListener);
  }
  
  public void getDIInformation(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIInformation(paramString1, paramString2, str, this.mAuthen, this.mListener);
  }
  
  public void getDIPurchaseList(String paramString)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIPurchaseList(paramString, str, this.mAuthen, this.mListener);
  }
  
  public void getDIReceiveList(String paramString)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIReceiveList(paramString, str, this.mAuthen, this.mListener);
  }
  
  public void getDIUsableList(String paramString)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.getDIUsableList(paramString, str, this.mAuthen, this.mListener);
  }
  
  public void init(OnInAppListener paramOnInAppListener)
  {
    this.mLibMode = 0;
    this.mAuthen = "01";
    this.mListener = paramOnInAppListener;
  }
  
  public boolean initListener()
  {
    if (this.mListener == null)
    {
      Log.e("KTInApp", "OnInAppListener 미등록 오류 발생");
      return false;
    }
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getLastNonConfigurationInstance() != null)
    {
      this.mPurchase = new Purchase();
      this.mPurchase.setData(getLastNonConfigurationInstance());
      this.mPurchase.setContext(this);
    }
  }
  
  public void onDestroy()
  {
    if (this.mPurchase != null)
    {
      this.mPurchase.onDestroy();
      this.mPurchase = null;
    }
    if (this.mInApp != null) {
      this.mInApp = null;
    }
    this.mLibMode = -1;
    this.mAuthen = null;
    super.onDestroy();
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    if (this.mPurchase != null) {
      return this.mPurchase.getData();
    }
    return null;
  }
  
  public void purchase(String paramString1, String paramString2)
  {
    if (this.mPurchase != null)
    {
      this.mPurchase.onDestroy();
      this.mPurchase = null;
    }
    if (!initListener()) {
      return;
    }
    this.mPurchase = new Purchase();
    this.mPurchase.onCreate(this, paramString1, paramString2, this.mListener, this.mLibMode);
  }
  
  public void requestCancel()
  {
    this.mInApp.requestCancel();
  }
  
  public void requestCheckCoin()
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestCheckCoin(str, this.mAuthen, this.mListener);
  }
  
  public void requestCheckShowId(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    this.mInApp.requestCheckShowId(paramString1, paramString2, this.mListener);
  }
  
  public void requestDIApproveDown(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIApproveDown(paramString1, paramString2, str, this.mAuthen, this.mListener);
  }
  
  public void requestDIApproveUse(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIApproveUse(paramString1, paramString2, str, this.mAuthen, this.mListener);
  }
  
  public void requestDIBuy(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIBuy(paramString1, paramString2, str, this.mAuthen, paramString3, paramString4, this.mListener);
  }
  
  public void requestDIBuyCancel(String paramString1, String paramString2, String paramString3)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIBuyCancel(paramString1, paramString2, str, this.mAuthen, paramString3, this.mListener);
  }
  
  public void requestDIGift(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIGift(paramString1, paramString2, str, this.mAuthen, paramString3, paramString4, getUserInfo(paramString5), this.mListener);
  }
  
  public void requestDIReBuy(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIReBuy(paramString1, paramString2, str, this.mAuthen, paramString3, paramString4, this.mListener);
  }
  
  public void requestDIReGift(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIReGift(paramString1, paramString2, str, this.mAuthen, paramString3, paramString4, getUserInfo(paramString5), this.mListener);
  }
  
  public void requestDIesBuy(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIesBuy(paramString1, paramString2, str, this.mListener);
  }
  
  public void requestDIgetFile(String paramString1, String paramString2)
  {
    if (this.mInApp == null) {
      this.mInApp = new InApp();
    }
    if (!initListener()) {
      return;
    }
    String str = getUserInfo();
    if (str == null)
    {
      notExistUserInfo();
      return;
    }
    this.mInApp.requestDIgetFile(paramString1, paramString2, str, this.mAuthen, this.mListener);
  }
  
  public void settingSoIPNumber()
  {
    onServiceStart();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.KTInAppActivity
 * JD-Core Version:    0.7.0.1
 */