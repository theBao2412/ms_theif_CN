package com.Nexon.MapleThief;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.Method;

public abstract class PurchaseObserver
{
  private static final Class[] START_INTENT_SENDER_SIG = { IntentSender.class, Intent.class, Integer.TYPE, Integer.TYPE, Integer.TYPE };
  private static final String TAG = "PurchaseObserver";
  private final Activity mActivity;
  private final Handler mHandler;
  private Method mStartIntentSender;
  private Object[] mStartIntentSenderArgs = new Object[5];
  
  public PurchaseObserver(Activity paramActivity, Handler paramHandler)
  {
    this.mActivity = paramActivity;
    this.mHandler = paramHandler;
    initCompatibilityLayer();
  }
  
  private void initCompatibilityLayer()
  {
    try
    {
      this.mStartIntentSender = this.mActivity.getClass().getMethod("startIntentSender", START_INTENT_SENDER_SIG);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      this.mStartIntentSender = null;
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      this.mStartIntentSender = null;
    }
  }
  
  public abstract void onBillingSupported(boolean paramBoolean);
  
  public abstract void onPurchaseStateChange(Consts.PurchaseState paramPurchaseState, String paramString1, int paramInt, long paramLong, String paramString2);
  
  public abstract void onRequestPurchaseResponse(BillingService.RequestPurchase paramRequestPurchase, Consts.ResponseCode paramResponseCode);
  
  public abstract void onRestoreTransactionsResponse(BillingService.RestoreTransactions paramRestoreTransactions, Consts.ResponseCode paramResponseCode);
  
  void postPurchaseStateChange(final Consts.PurchaseState paramPurchaseState, final String paramString1, final int paramInt, final long paramLong, String paramString2)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        PurchaseObserver.this.onPurchaseStateChange(paramPurchaseState, paramString1, paramInt, paramLong, this.val$developerPayload);
      }
    });
  }
  
  void startBuyPageActivity(PendingIntent paramPendingIntent, Intent paramIntent)
  {
    if (this.mStartIntentSender != null) {
      try
      {
        this.mStartIntentSenderArgs[0] = paramPendingIntent.getIntentSender();
        this.mStartIntentSenderArgs[1] = paramIntent;
        this.mStartIntentSenderArgs[2] = Integer.valueOf(0);
        this.mStartIntentSenderArgs[3] = Integer.valueOf(0);
        this.mStartIntentSenderArgs[4] = Integer.valueOf(0);
        this.mStartIntentSender.invoke(this.mActivity, this.mStartIntentSenderArgs);
        return;
      }
      catch (Exception paramPendingIntent)
      {
        Log.e("PurchaseObserver", "error starting activity", paramPendingIntent);
        return;
      }
    }
    try
    {
      paramPendingIntent.send(this.mActivity, 0, paramIntent);
      return;
    }
    catch (PendingIntent.CanceledException paramPendingIntent)
    {
      Log.e("PurchaseObserver", "error starting activity", paramPendingIntent);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.PurchaseObserver
 * JD-Core Version:    0.7.0.1
 */