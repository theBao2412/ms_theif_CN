package com.tapjoy;

import android.content.Context;
import android.util.Log;
import java.util.Hashtable;

public final class TapjoyConnect
{
  public static final String TAPJOY_CONNECT = "TapjoyConnect";
  private static TapjoyConnect tapjoyConnectInstance = null;
  private static TapjoyDisplayAd tapjoyDisplayAd;
  private static TapjoyEvent tapjoyEvent = null;
  private static TapjoyFeaturedApp tapjoyFeaturedApp;
  private static TJCOffers tapjoyOffers = null;
  private static TapjoyReEngagementAd tapjoyReEngagementAd = null;
  private static TapjoyVideo tapjoyVideo;
  
  static
  {
    tapjoyFeaturedApp = null;
    tapjoyDisplayAd = null;
    tapjoyVideo = null;
  }
  
  private TapjoyConnect(Context paramContext, String paramString1, String paramString2, Hashtable<String, String> paramHashtable)
  {
    TapjoyConnectCore.requestTapjoyConnect(paramContext, paramString1, paramString2, paramHashtable);
  }
  
  public static TapjoyConnect getTapjoyConnectInstance()
  {
    if (tapjoyConnectInstance == null)
    {
      Log.e("TapjoyConnect", "----------------------------------------");
      Log.e("TapjoyConnect", "ERROR -- call requestTapjoyConnect before any other Tapjoy methods");
      Log.e("TapjoyConnect", "----------------------------------------");
    }
    return tapjoyConnectInstance;
  }
  
  public static void requestTapjoyConnect(Context paramContext, String paramString1, String paramString2)
  {
    requestTapjoyConnect(paramContext, paramString1, paramString2, null);
  }
  
  public static void requestTapjoyConnect(Context paramContext, String paramString1, String paramString2, Hashtable<String, String> paramHashtable)
  {
    TapjoyConnectCore.setSDKType("offers");
    TapjoyConnectCore.setPlugin("native");
    tapjoyConnectInstance = new TapjoyConnect(paramContext, paramString1, paramString2, paramHashtable);
    tapjoyOffers = new TJCOffers(paramContext);
    tapjoyFeaturedApp = new TapjoyFeaturedApp(paramContext);
    tapjoyDisplayAd = new TapjoyDisplayAd(paramContext);
    tapjoyVideo = new TapjoyVideo(paramContext);
    tapjoyEvent = new TapjoyEvent(paramContext);
    tapjoyReEngagementAd = new TapjoyReEngagementAd(paramContext);
  }
  
  public void actionComplete(String paramString)
  {
    TapjoyConnectCore.getInstance().actionComplete(paramString);
  }
  
  public void awardTapPoints(int paramInt, TapjoyAwardPointsNotifier paramTapjoyAwardPointsNotifier)
  {
    tapjoyOffers.awardTapPoints(paramInt, paramTapjoyAwardPointsNotifier);
  }
  
  public void enableBannerAdAutoRefresh(boolean paramBoolean)
  {
    tapjoyDisplayAd.enableAutoRefresh(paramBoolean);
  }
  
  public void enablePaidAppWithActionID(String paramString)
  {
    TapjoyConnectCore.getInstance().enablePaidAppWithActionID(paramString);
  }
  
  public void enableVideoCache(boolean paramBoolean)
  {
    tapjoyVideo.enableVideoCache(paramBoolean);
  }
  
  public String getAppID()
  {
    return TapjoyConnectCore.getAppID();
  }
  
  public float getCurrencyMultiplier()
  {
    return TapjoyConnectCore.getInstance().getCurrencyMultiplier();
  }
  
  public void getDisplayAd(TapjoyDisplayAdNotifier paramTapjoyDisplayAdNotifier)
  {
    tapjoyDisplayAd.getDisplayAd(paramTapjoyDisplayAdNotifier);
  }
  
  public void getDisplayAdWithCurrencyID(String paramString, TapjoyDisplayAdNotifier paramTapjoyDisplayAdNotifier)
  {
    tapjoyDisplayAd.getDisplayAd(paramString, paramTapjoyDisplayAdNotifier);
  }
  
  public void getFeaturedApp(TapjoyFeaturedAppNotifier paramTapjoyFeaturedAppNotifier)
  {
    tapjoyFeaturedApp.getFeaturedApp(paramTapjoyFeaturedAppNotifier);
  }
  
  public void getFeaturedAppWithCurrencyID(String paramString, TapjoyFeaturedAppNotifier paramTapjoyFeaturedAppNotifier)
  {
    tapjoyFeaturedApp.getFeaturedApp(paramString, paramTapjoyFeaturedAppNotifier);
  }
  
  public void getReEngagementAd(TapjoyReEngagementAdNotifier paramTapjoyReEngagementAdNotifier)
  {
    tapjoyReEngagementAd.getReEngagementAd(paramTapjoyReEngagementAdNotifier);
  }
  
  public void getReEngagementAdWithCurrencyID(String paramString, TapjoyReEngagementAdNotifier paramTapjoyReEngagementAdNotifier)
  {
    tapjoyReEngagementAd.getReEngagementAdWithCurrencyID(paramString, paramTapjoyReEngagementAdNotifier);
  }
  
  public void getTapPoints(TapjoyNotifier paramTapjoyNotifier)
  {
    tapjoyOffers.getTapPoints(paramTapjoyNotifier);
  }
  
  public String getUserID()
  {
    return TapjoyConnectCore.getUserID();
  }
  
  public void initVideoAd(TapjoyVideoNotifier paramTapjoyVideoNotifier)
  {
    tapjoyVideo.initVideoAd(paramTapjoyVideoNotifier);
  }
  
  public void sendIAPEvent(String paramString1, float paramFloat, int paramInt, String paramString2)
  {
    tapjoyEvent.sendIAPEvent(paramString1, paramFloat, paramInt, paramString2);
  }
  
  public void sendShutDownEvent()
  {
    tapjoyEvent.sendShutDownEvent();
  }
  
  public void setBannerAdSize(String paramString)
  {
    tapjoyDisplayAd.setBannerAdSize(paramString);
  }
  
  public void setCurrencyMultiplier(float paramFloat)
  {
    TapjoyConnectCore.getInstance().setCurrencyMultiplier(paramFloat);
  }
  
  public void setEarnedPointsNotifier(TapjoyEarnedPointsNotifier paramTapjoyEarnedPointsNotifier)
  {
    tapjoyOffers.setEarnedPointsNotifier(paramTapjoyEarnedPointsNotifier);
  }
  
  public void setFeaturedAppDisplayCount(int paramInt)
  {
    tapjoyFeaturedApp.setDisplayCount(paramInt);
  }
  
  public void setUserID(String paramString)
  {
    TapjoyConnectCore.setUserID(paramString);
  }
  
  public void setVideoCacheCount(int paramInt)
  {
    tapjoyVideo.setVideoCacheCount(paramInt);
  }
  
  public void showFeaturedAppFullScreenAd()
  {
    tapjoyFeaturedApp.showFeaturedAppFullScreenAd();
  }
  
  public void showOffers()
  {
    tapjoyOffers.showOffers();
  }
  
  public void showOffersWithCurrencyID(String paramString, boolean paramBoolean)
  {
    tapjoyOffers.showOffersWithCurrencyID(paramString, paramBoolean);
  }
  
  public void showReEngagementFullScreenAd()
  {
    tapjoyReEngagementAd.showReEngagementFullScreenAd();
  }
  
  public void spendTapPoints(int paramInt, TapjoySpendPointsNotifier paramTapjoySpendPointsNotifier)
  {
    tapjoyOffers.spendTapPoints(paramInt, paramTapjoySpendPointsNotifier);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyConnect
 * JD-Core Version:    0.7.0.1
 */