package com.tapjoy;

import android.content.Context;
import android.content.Intent;

public class TapjoyReEngagementAd
{
  private static String htmlData;
  private static TapjoyReEngagementAdNotifier reEngagementAdNotifier;
  public static String reEngagementAdURLParams;
  private static TapjoyURLConnection tapjoyURLConnection = null;
  final String TAPJOY_RE_ENGAGEMENT = "Re-engagement";
  private Context context;
  private String currencyID;
  
  public TapjoyReEngagementAd(Context paramContext)
  {
    this.context = paramContext;
    tapjoyURLConnection = new TapjoyURLConnection();
  }
  
  public void getReEngagementAd(TapjoyReEngagementAdNotifier paramTapjoyReEngagementAdNotifier)
  {
    TapjoyLog.i("Re-engagement", "Getting Re-engagement Ad");
    getReEngagementAdWithCurrencyID(null, paramTapjoyReEngagementAdNotifier);
  }
  
  public void getReEngagementAdWithCurrencyID(String paramString, TapjoyReEngagementAdNotifier paramTapjoyReEngagementAdNotifier)
  {
    this.currencyID = paramString;
    TapjoyLog.i("Re-engagement", "Getting Re-engagement ad userID: " + TapjoyConnectCore.getUserID() + ", currencyID: " + this.currencyID);
    reEngagementAdNotifier = paramTapjoyReEngagementAdNotifier;
    reEngagementAdURLParams = TapjoyConnectCore.getURLParams();
    reEngagementAdURLParams = reEngagementAdURLParams + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
    if (this.currencyID != null) {
      reEngagementAdURLParams = reEngagementAdURLParams + "&currency_id=" + this.currencyID;
    }
    new Thread(new Runnable()
    {
      public void run()
      {
        TapjoyHttpURLResponse localTapjoyHttpURLResponse = TapjoyReEngagementAd.tapjoyURLConnection.getResponseFromURL("https://ws.tapjoyads.com/reengagement_rewards?", TapjoyReEngagementAd.reEngagementAdURLParams);
        if (localTapjoyHttpURLResponse != null)
        {
          switch (localTapjoyHttpURLResponse.statusCode)
          {
          default: 
            return;
          case 200: 
            TapjoyReEngagementAd.htmlData = localTapjoyHttpURLResponse.response;
            TapjoyReEngagementAd.reEngagementAdNotifier.getReEngagementAdResponse();
            return;
          }
          TapjoyReEngagementAd.reEngagementAdNotifier.getReEngagementAdResponseFailed(1);
          return;
        }
        TapjoyReEngagementAd.reEngagementAdNotifier.getReEngagementAdResponseFailed(2);
      }
    }).start();
  }
  
  public void showReEngagementFullScreenAd()
  {
    TapjoyLog.i("Re-engagement", "Displaying Re-engagement ad...");
    if ((htmlData != null) && (htmlData.length() != 0))
    {
      Intent localIntent = new Intent(this.context, TapjoyReEngagementAdWebView.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("RE_ENGAGEMENT_HTML_DATA", htmlData);
      this.context.startActivity(localIntent);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyReEngagementAd
 * JD-Core Version:    0.7.0.1
 */