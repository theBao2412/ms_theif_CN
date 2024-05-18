package com.Nexon.MapleThief;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.vending.billing.IMarketBillingService;
import com.android.vending.billing.IMarketBillingService.Stub;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public class BillingService
  extends Service
  implements ServiceConnection
{
  private static final String TAG = "BillingService";
  private static LinkedList<BillingRequest> mPendingRequests = new LinkedList();
  private static HashMap<Long, BillingRequest> mSentRequests = new HashMap();
  private static IMarketBillingService mService;
  
  private boolean bindToMarketBillingService()
  {
    try
    {
      if (bindService(new Intent("com.android.vending.billing.MarketBillingService.BIND"), this, 1)) {
        return true;
      }
      Log.e("BillingService", "Could not bind to service.");
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Log.e("BillingService", "Security exception: " + localSecurityException);
      }
    }
    return false;
  }
  
  private void checkResponseCode(long paramLong, Consts.ResponseCode paramResponseCode)
  {
    BillingRequest localBillingRequest = (BillingRequest)mSentRequests.get(Long.valueOf(paramLong));
    if (localBillingRequest != null) {
      localBillingRequest.responseCodeReceived(paramResponseCode);
    }
    mSentRequests.remove(Long.valueOf(paramLong));
  }
  
  private boolean confirmNotifications(int paramInt, String[] paramArrayOfString)
  {
    return new ConfirmNotifications(paramInt, paramArrayOfString).runRequest();
  }
  
  private boolean getPurchaseInformation(int paramInt, String[] paramArrayOfString)
  {
    return new GetPurchaseInformation(paramInt, paramArrayOfString).runRequest();
  }
  
  private void purchaseStateChanged(int paramInt, String paramString1, String paramString2)
  {
    paramString2 = Security.verifyPurchase(paramString1, paramString2);
    if (paramString2 == null) {
      return;
    }
    paramString1 = new ArrayList();
    paramString2 = paramString2.iterator();
    for (;;)
    {
      if (!paramString2.hasNext())
      {
        if (paramString1.isEmpty()) {
          break;
        }
        confirmNotifications(paramInt, (String[])paramString1.toArray(new String[paramString1.size()]));
        return;
      }
      Security.VerifiedPurchase localVerifiedPurchase = (Security.VerifiedPurchase)paramString2.next();
      if (localVerifiedPurchase.notificationId != null) {
        paramString1.add(localVerifiedPurchase.notificationId);
      }
      ResponseHandler.purchaseResponse(this, localVerifiedPurchase.purchaseState, localVerifiedPurchase.productId, localVerifiedPurchase.orderId, localVerifiedPurchase.purchaseTime, localVerifiedPurchase.developerPayload);
    }
  }
  
  private void runPendingRequests()
  {
    int i = -1;
    for (;;)
    {
      BillingRequest localBillingRequest = (BillingRequest)mPendingRequests.peek();
      if (localBillingRequest == null)
      {
        if (i >= 0) {
          stopSelf(i);
        }
        return;
      }
      if (!localBillingRequest.runIfConnected()) {
        break;
      }
      mPendingRequests.remove();
      if (i < localBillingRequest.getStartId()) {
        i = localBillingRequest.getStartId();
      }
    }
    bindToMarketBillingService();
  }
  
  public boolean checkBillingSupported()
  {
    return new CheckBillingSupported().runRequest();
  }
  
  public void handleCommand(Intent paramIntent, int paramInt)
  {
    String str = paramIntent.getAction();
    if ("com.example.dungeons.CONFIRM_NOTIFICATION".equals(str)) {
      confirmNotifications(paramInt, paramIntent.getStringArrayExtra("notification_id"));
    }
    do
    {
      return;
      if ("com.example.dungeons.GET_PURCHASE_INFORMATION".equals(str))
      {
        getPurchaseInformation(paramInt, new String[] { paramIntent.getStringExtra("notification_id") });
        return;
      }
      if ("com.android.vending.billing.PURCHASE_STATE_CHANGED".equals(str))
      {
        purchaseStateChanged(paramInt, paramIntent.getStringExtra("inapp_signed_data"), paramIntent.getStringExtra("inapp_signature"));
        return;
      }
    } while (!"com.android.vending.billing.RESPONSE_CODE".equals(str));
    checkResponseCode(paramIntent.getLongExtra("request_id", -1L), Consts.ResponseCode.valueOf(paramIntent.getIntExtra("response_code", Consts.ResponseCode.RESULT_ERROR.ordinal())));
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    mService = IMarketBillingService.Stub.asInterface(paramIBinder);
    runPendingRequests();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    Log.w("BillingService", "Billing service disconnected");
    mService = null;
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    handleCommand(paramIntent, paramInt);
  }
  
  public boolean requestPurchase(String paramString1, String paramString2)
  {
    return new RequestPurchase(paramString1, paramString2).runRequest();
  }
  
  public boolean restoreTransactions()
  {
    return new RestoreTransactions().runRequest();
  }
  
  public void setContext(Context paramContext)
  {
    attachBaseContext(paramContext);
  }
  
  public void unbind()
  {
    try
    {
      unbindService(this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  abstract class BillingRequest
  {
    protected long mRequestId;
    private final int mStartId;
    
    public BillingRequest(int paramInt)
    {
      this.mStartId = paramInt;
    }
    
    public int getStartId()
    {
      return this.mStartId;
    }
    
    protected void logResponseCode(String paramString, Bundle paramBundle)
    {
      Consts.ResponseCode.valueOf(paramBundle.getInt("RESPONSE_CODE"));
    }
    
    protected Bundle makeRequestBundle(String paramString)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("BILLING_REQUEST", paramString);
      localBundle.putInt("API_VERSION", 1);
      localBundle.putString("PACKAGE_NAME", BillingService.this.getPackageName());
      return localBundle;
    }
    
    protected void onRemoteException(RemoteException paramRemoteException)
    {
      Log.w("BillingService", "remote billing service crashed");
      BillingService.mService = null;
    }
    
    protected void responseCodeReceived(Consts.ResponseCode paramResponseCode) {}
    
    protected abstract long run()
      throws RemoteException;
    
    public boolean runIfConnected()
    {
      if (BillingService.mService != null) {
        try
        {
          this.mRequestId = run();
          if (this.mRequestId >= 0L) {
            BillingService.mSentRequests.put(Long.valueOf(this.mRequestId), this);
          }
          return true;
        }
        catch (RemoteException localRemoteException)
        {
          onRemoteException(localRemoteException);
        }
      }
      return false;
    }
    
    public boolean runRequest()
    {
      if (runIfConnected()) {
        return true;
      }
      if (BillingService.this.bindToMarketBillingService())
      {
        BillingService.mPendingRequests.add(this);
        return true;
      }
      return false;
    }
  }
  
  class CheckBillingSupported
    extends BillingService.BillingRequest
  {
    public CheckBillingSupported()
    {
      super(-1);
    }
    
    protected long run()
      throws RemoteException
    {
      Bundle localBundle = makeRequestBundle("CHECK_BILLING_SUPPORTED");
      if (BillingService.mService.sendBillingRequest(localBundle).getInt("RESPONSE_CODE") == Consts.ResponseCode.RESULT_OK.ordinal()) {}
      for (boolean bool = true;; bool = false)
      {
        ResponseHandler.checkBillingSupportedResponse(bool);
        return Consts.BILLING_RESPONSE_INVALID_REQUEST_ID;
      }
    }
  }
  
  class ConfirmNotifications
    extends BillingService.BillingRequest
  {
    final String[] mNotifyIds;
    
    public ConfirmNotifications(int paramInt, String[] paramArrayOfString)
    {
      super(paramInt);
      this.mNotifyIds = paramArrayOfString;
    }
    
    protected long run()
      throws RemoteException
    {
      Bundle localBundle = makeRequestBundle("CONFIRM_NOTIFICATIONS");
      localBundle.putStringArray("NOTIFY_IDS", this.mNotifyIds);
      localBundle = BillingService.mService.sendBillingRequest(localBundle);
      logResponseCode("confirmNotifications", localBundle);
      return localBundle.getLong("REQUEST_ID", Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
    }
  }
  
  class GetPurchaseInformation
    extends BillingService.BillingRequest
  {
    long mNonce;
    final String[] mNotifyIds;
    
    public GetPurchaseInformation(int paramInt, String[] paramArrayOfString)
    {
      super(paramInt);
      this.mNotifyIds = paramArrayOfString;
    }
    
    protected void onRemoteException(RemoteException paramRemoteException)
    {
      super.onRemoteException(paramRemoteException);
      Security.removeNonce(this.mNonce);
    }
    
    protected long run()
      throws RemoteException
    {
      this.mNonce = Security.generateNonce();
      Bundle localBundle = makeRequestBundle("GET_PURCHASE_INFORMATION");
      localBundle.putLong("NONCE", this.mNonce);
      localBundle.putStringArray("NOTIFY_IDS", this.mNotifyIds);
      localBundle = BillingService.mService.sendBillingRequest(localBundle);
      logResponseCode("getPurchaseInformation", localBundle);
      return localBundle.getLong("REQUEST_ID", Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
    }
  }
  
  class RequestPurchase
    extends BillingService.BillingRequest
  {
    public final String mDeveloperPayload;
    public final String mProductId;
    
    public RequestPurchase(String paramString)
    {
      this(paramString, null);
    }
    
    public RequestPurchase(String paramString1, String paramString2)
    {
      super(-1);
      this.mProductId = paramString1;
      this.mDeveloperPayload = paramString2;
    }
    
    protected void responseCodeReceived(Consts.ResponseCode paramResponseCode)
    {
      ResponseHandler.responseCodeReceived(BillingService.this, this, paramResponseCode);
    }
    
    protected long run()
      throws RemoteException
    {
      Bundle localBundle = makeRequestBundle("REQUEST_PURCHASE");
      localBundle.putString("ITEM_ID", this.mProductId);
      if (this.mDeveloperPayload != null) {
        localBundle.putString("DEVELOPER_PAYLOAD", this.mDeveloperPayload);
      }
      localBundle = BillingService.mService.sendBillingRequest(localBundle);
      PendingIntent localPendingIntent = (PendingIntent)localBundle.getParcelable("PURCHASE_INTENT");
      if (localPendingIntent == null)
      {
        Log.e("BillingService", "Error with requestPurchase");
        return Consts.BILLING_RESPONSE_INVALID_REQUEST_ID;
      }
      ResponseHandler.buyPageIntentResponse(localPendingIntent, new Intent());
      return localBundle.getLong("REQUEST_ID", Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
    }
  }
  
  class RestoreTransactions
    extends BillingService.BillingRequest
  {
    long mNonce;
    
    public RestoreTransactions()
    {
      super(-1);
    }
    
    protected void onRemoteException(RemoteException paramRemoteException)
    {
      super.onRemoteException(paramRemoteException);
      Security.removeNonce(this.mNonce);
    }
    
    protected void responseCodeReceived(Consts.ResponseCode paramResponseCode)
    {
      ResponseHandler.responseCodeReceived(BillingService.this, this, paramResponseCode);
    }
    
    protected long run()
      throws RemoteException
    {
      this.mNonce = Security.generateNonce();
      Bundle localBundle = makeRequestBundle("RESTORE_TRANSACTIONS");
      localBundle.putLong("NONCE", this.mNonce);
      localBundle = BillingService.mService.sendBillingRequest(localBundle);
      logResponseCode("restoreTransactions", localBundle);
      return localBundle.getLong("REQUEST_ID", Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.BillingService
 * JD-Core Version:    0.7.0.1
 */