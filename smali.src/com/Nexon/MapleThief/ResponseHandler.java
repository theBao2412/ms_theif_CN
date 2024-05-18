package com.Nexon.MapleThief;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public class ResponseHandler
{
  private static final String TAG = "ResponseHandler";
  private static PurchaseObserver sPurchaseObserver;
  
  public static void buyPageIntentResponse(PendingIntent paramPendingIntent, Intent paramIntent)
  {
    if (sPurchaseObserver == null) {
      return;
    }
    sPurchaseObserver.startBuyPageActivity(paramPendingIntent, paramIntent);
  }
  
  public static void checkBillingSupportedResponse(boolean paramBoolean)
  {
    if (sPurchaseObserver != null) {
      sPurchaseObserver.onBillingSupported(paramBoolean);
    }
  }
  
  public static void purchaseResponse(Context paramContext, Consts.PurchaseState paramPurchaseState, String paramString1, String paramString2, long paramLong, String paramString3)
  {
    new Thread(new Runnable()
    {
      public void run() {}
    }).start();
  }
  
  public static void register(PurchaseObserver paramPurchaseObserver)
  {
    try
    {
      sPurchaseObserver = paramPurchaseObserver;
      return;
    }
    finally
    {
      paramPurchaseObserver = finally;
      throw paramPurchaseObserver;
    }
  }
  
  public static void responseCodeReceived(Context paramContext, BillingService.RequestPurchase paramRequestPurchase, Consts.ResponseCode paramResponseCode)
  {
    if (sPurchaseObserver != null) {
      sPurchaseObserver.onRequestPurchaseResponse(paramRequestPurchase, paramResponseCode);
    }
  }
  
  public static void responseCodeReceived(Context paramContext, BillingService.RestoreTransactions paramRestoreTransactions, Consts.ResponseCode paramResponseCode)
  {
    if (sPurchaseObserver != null) {
      sPurchaseObserver.onRestoreTransactionsResponse(paramRestoreTransactions, paramResponseCode);
    }
  }
  
  public static void unregister(PurchaseObserver paramPurchaseObserver)
  {
    try
    {
      sPurchaseObserver = null;
      return;
    }
    finally
    {
      paramPurchaseObserver = finally;
      throw paramPurchaseObserver;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.ResponseHandler
 * JD-Core Version:    0.7.0.1
 */