package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import java.util.UUID;
import org.w3c.dom.Document;

public class TJCOffers
{
  public static final String TAPJOY_OFFERS = "TapjoyOffers";
  public static final String TAPJOY_POINTS = "TapjoyPoints";
  private static TapjoyAwardPointsNotifier tapjoyAwardPointsNotifier;
  private static TapjoyEarnedPointsNotifier tapjoyEarnedPointsNotifier;
  private static TapjoyNotifier tapjoyNotifier;
  private static TapjoySpendPointsNotifier tapjoySpendPointsNotifier;
  int awardTapPoints = 0;
  Context context;
  private String multipleCurrencyID = "";
  private String multipleCurrencySelector = "";
  String spendTapPoints = null;
  
  public TJCOffers(Context paramContext)
  {
    this.context = paramContext;
  }
  
  private boolean handleAwardPointsResponse(String paramString)
  {
    paramString = TapjoyUtil.buildDocument(paramString);
    String str;
    if (paramString != null)
    {
      str = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Success"));
      if ((str == null) || (!str.equals("true"))) {
        break label97;
      }
      str = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("TapPoints"));
      paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("CurrencyName"));
      if ((str != null) && (paramString != null))
      {
        TapjoyConnectCore.saveTapPointsTotal(Integer.parseInt(str));
        tapjoyAwardPointsNotifier.getAwardPointsResponse(paramString, Integer.parseInt(str));
        return true;
      }
      TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
    }
    for (;;)
    {
      return false;
      label97:
      if ((str != null) && (str.endsWith("false")))
      {
        paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Message"));
        TapjoyLog.i("TapjoyPoints", paramString);
        tapjoyAwardPointsNotifier.getAwardPointsResponseFailed(paramString);
        return true;
      }
      TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
    }
  }
  
  private boolean handleGetPointsResponse(String paramString)
  {
    for (;;)
    {
      try
      {
        paramString = TapjoyUtil.buildDocument(paramString);
        if (paramString == null) {
          break label198;
        }
        String str = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Success"));
        if ((str != null) && (str.equals("true")))
        {
          str = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("TapPoints"));
          paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("CurrencyName"));
          if ((str != null) && (paramString != null)) {
            try
            {
              int i = Integer.parseInt(str);
              int j = TapjoyConnectCore.getLocalTapPointsTotal();
              if ((tapjoyEarnedPointsNotifier != null) && (j != -9999) && (i > j))
              {
                TapjoyLog.i("TapjoyPoints", "earned: " + (i - j));
                tapjoyEarnedPointsNotifier.earnedTapPoints(i - j);
              }
              TapjoyConnectCore.saveTapPointsTotal(Integer.parseInt(str));
              tapjoyNotifier.getUpdatePoints(paramString, Integer.parseInt(str));
              bool = true;
              return bool;
            }
            catch (Exception paramString)
            {
              TapjoyLog.e("TapjoyPoints", "Error parsing XML.");
            }
          } else {
            TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
          }
        }
      }
      finally {}
      TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
      label198:
      boolean bool = false;
    }
  }
  
  private boolean handleSpendPointsResponse(String paramString)
  {
    paramString = TapjoyUtil.buildDocument(paramString);
    String str;
    if (paramString != null)
    {
      str = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Success"));
      if ((str == null) || (!str.equals("true"))) {
        break label97;
      }
      str = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("TapPoints"));
      paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("CurrencyName"));
      if ((str != null) && (paramString != null))
      {
        TapjoyConnectCore.saveTapPointsTotal(Integer.parseInt(str));
        tapjoySpendPointsNotifier.getSpendPointsResponse(paramString, Integer.parseInt(str));
        return true;
      }
      TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
    }
    for (;;)
    {
      return false;
      label97:
      if ((str != null) && (str.endsWith("false")))
      {
        paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Message"));
        TapjoyLog.i("TapjoyPoints", paramString);
        tapjoySpendPointsNotifier.getSpendPointsResponseFailed(paramString);
        return true;
      }
      TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
    }
  }
  
  public void awardTapPoints(int paramInt, TapjoyAwardPointsNotifier paramTapjoyAwardPointsNotifier)
  {
    if (paramInt < 0)
    {
      TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
      return;
    }
    this.awardTapPoints = paramInt;
    tapjoyAwardPointsNotifier = paramTapjoyAwardPointsNotifier;
    new Thread(new Runnable()
    {
      public void run()
      {
        boolean bool = false;
        String str = UUID.randomUUID().toString();
        long l = System.currentTimeMillis() / 1000L;
        str = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(TapjoyConnectCore.getURLParams())).append("&tap_points=").append(TJCOffers.this.awardTapPoints).toString())).append("&publisher_user_id=").append(TapjoyConnectCore.getUserID()).toString())).append("&guid=").append(str).toString())).append("&timestamp=").append(l).toString() + "&verifier=" + TapjoyConnectCore.getAwardPointsVerifier(l, TJCOffers.this.awardTapPoints, str);
        str = new TapjoyURLConnection().connectToURL("https://ws.tapjoyads.com/points/award?", str);
        if (str != null) {
          bool = TJCOffers.this.handleAwardPointsResponse(str);
        }
        if (!bool) {
          TJCOffers.tapjoyAwardPointsNotifier.getAwardPointsResponseFailed("Failed to award points.");
        }
      }
    }).start();
  }
  
  public void getTapPoints(TapjoyNotifier paramTapjoyNotifier)
  {
    tapjoyNotifier = paramTapjoyNotifier;
    new Thread(new Runnable()
    {
      public void run()
      {
        boolean bool = false;
        String str = TapjoyConnectCore.getURLParams() + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
        str = new TapjoyURLConnection().connectToURL("https://ws.tapjoyads.com/get_vg_store_items/user_account?", str);
        if (str != null) {
          bool = TJCOffers.this.handleGetPointsResponse(str);
        }
        if (!bool) {
          TJCOffers.tapjoyNotifier.getUpdatePointsFailed("Failed to retrieve points from server");
        }
      }
    }).start();
  }
  
  public void setEarnedPointsNotifier(TapjoyEarnedPointsNotifier paramTapjoyEarnedPointsNotifier)
  {
    tapjoyEarnedPointsNotifier = paramTapjoyEarnedPointsNotifier;
  }
  
  public void showOffers()
  {
    TapjoyLog.i("TapjoyOffers", "Showing offers with userID: " + TapjoyConnectCore.getUserID());
    Intent localIntent = new Intent(this.context, TJCOffersWebView.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("USER_ID", TapjoyConnectCore.getUserID());
    localIntent.putExtra("URL_PARAMS", TapjoyConnectCore.getURLParams());
    this.context.startActivity(localIntent);
  }
  
  public void showOffersWithCurrencyID(String paramString, boolean paramBoolean)
  {
    TapjoyLog.i("TapjoyOffers", "Showing offers with currencyID: " + paramString + ", selector: " + paramBoolean + " (userID = " + TapjoyConnectCore.getUserID() + ")");
    this.multipleCurrencyID = paramString;
    if (paramBoolean) {}
    for (paramString = "1";; paramString = "0")
    {
      this.multipleCurrencySelector = paramString;
      paramString = new StringBuilder(String.valueOf(TapjoyConnectCore.getURLParams())).append("&currency_id=").append(this.multipleCurrencyID).toString() + "&currency_selector=" + this.multipleCurrencySelector;
      Intent localIntent = new Intent(this.context, TJCOffersWebView.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("USER_ID", TapjoyConnectCore.getUserID());
      localIntent.putExtra("URL_PARAMS", paramString);
      this.context.startActivity(localIntent);
      return;
    }
  }
  
  public void spendTapPoints(int paramInt, TapjoySpendPointsNotifier paramTapjoySpendPointsNotifier)
  {
    if (paramInt < 0)
    {
      TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
      return;
    }
    this.spendTapPoints = paramInt;
    tapjoySpendPointsNotifier = paramTapjoySpendPointsNotifier;
    new Thread(new Runnable()
    {
      public void run()
      {
        boolean bool = false;
        String str = new StringBuilder(String.valueOf(TapjoyConnectCore.getURLParams())).append("&tap_points=").append(TJCOffers.this.spendTapPoints).toString() + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
        str = new TapjoyURLConnection().connectToURL("https://ws.tapjoyads.com/points/spend?", str);
        if (str != null) {
          bool = TJCOffers.this.handleSpendPointsResponse(str);
        }
        if (!bool) {
          TJCOffers.tapjoySpendPointsNotifier.getSpendPointsResponseFailed("Failed to spend points.");
        }
      }
    }).start();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TJCOffers
 * JD-Core Version:    0.7.0.1
 */