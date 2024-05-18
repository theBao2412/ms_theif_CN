package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.ByteArrayInputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

public class TapjoyFeaturedApp
{
  private static TapjoyFeaturedAppNotifier featuredAppNotifier;
  public static String featuredAppURLParams;
  private static TapjoyURLConnection tapjoyURLConnection = null;
  final String TAPJOY_FEATURED_APP = "Full Screen Ad";
  private Context context;
  private String currencyID;
  private int displayCount = 5;
  private TapjoyFeaturedAppObject featuredAppObject = null;
  
  public TapjoyFeaturedApp(Context paramContext)
  {
    this.context = paramContext;
    tapjoyURLConnection = new TapjoyURLConnection();
  }
  
  private boolean buildResponse(String paramString)
  {
    boolean bool = false;
    Object localObject = DocumentBuilderFactory.newInstance();
    for (;;)
    {
      try
      {
        paramString = new ByteArrayInputStream(paramString.getBytes("UTF-8"));
        paramString = ((DocumentBuilderFactory)localObject).newDocumentBuilder().parse(paramString);
        this.featuredAppObject.cost = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Cost"));
        localObject = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Amount"));
        if (localObject != null) {
          this.featuredAppObject.amount = Integer.parseInt((String)localObject);
        }
        this.featuredAppObject.description = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Description"));
        this.featuredAppObject.iconURL = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("IconURL"));
        this.featuredAppObject.name = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Name"));
        this.featuredAppObject.redirectURL = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("RedirectURL"));
        this.featuredAppObject.storeID = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("StoreID"));
        this.featuredAppObject.fullScreenAdURL = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("FullScreenAdURL"));
        TapjoyLog.i("Full Screen Ad", "cost: " + this.featuredAppObject.cost);
        TapjoyLog.i("Full Screen Ad", "amount: " + this.featuredAppObject.amount);
        TapjoyLog.i("Full Screen Ad", "description: " + this.featuredAppObject.description);
        TapjoyLog.i("Full Screen Ad", "iconURL: " + this.featuredAppObject.iconURL);
        TapjoyLog.i("Full Screen Ad", "name: " + this.featuredAppObject.name);
        TapjoyLog.i("Full Screen Ad", "redirectURL: " + this.featuredAppObject.redirectURL);
        TapjoyLog.i("Full Screen Ad", "storeID: " + this.featuredAppObject.storeID);
        TapjoyLog.i("Full Screen Ad", "fullScreenAdURL: " + this.featuredAppObject.fullScreenAdURL);
        if (this.featuredAppObject.fullScreenAdURL != null)
        {
          int i = this.featuredAppObject.fullScreenAdURL.length();
          if (i != 0) {
            continue;
          }
        }
        bool = false;
      }
      catch (Exception paramString)
      {
        TapjoyLog.e("Full Screen Ad", "Error parsing XML: " + paramString.toString());
        continue;
        featuredAppNotifier.getFeaturedAppResponseFailed("Full Screen Ad to display has exceeded display count");
        return bool;
      }
      if (!bool) {
        break label538;
      }
      if (getDisplayCountForStoreID(this.featuredAppObject.storeID) >= this.displayCount) {
        continue;
      }
      featuredAppNotifier.getFeaturedAppResponse(this.featuredAppObject);
      if (!TapjoyConnectCore.getAppID().equals(this.featuredAppObject.storeID)) {
        incrementDisplayCountForStoreID(this.featuredAppObject.storeID);
      }
      return bool;
      bool = true;
    }
    label538:
    featuredAppNotifier.getFeaturedAppResponseFailed("Failed to parse XML file from response");
    return true;
  }
  
  private int getDisplayCountForStoreID(String paramString)
  {
    int i = this.context.getSharedPreferences("TapjoyFeaturedAppPrefs", 0).getInt(paramString, 0);
    TapjoyLog.i("Full Screen Ad", "getDisplayCount: " + i + ", storeID: " + paramString);
    return i;
  }
  
  private void incrementDisplayCountForStoreID(String paramString)
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("TapjoyFeaturedAppPrefs", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    int i = localSharedPreferences.getInt(paramString, 0) + 1;
    TapjoyLog.i("Full Screen Ad", "incrementDisplayCount: " + i + ", storeID: " + paramString);
    localEditor.putInt(paramString, i);
    localEditor.commit();
  }
  
  public void getFeaturedApp(TapjoyFeaturedAppNotifier paramTapjoyFeaturedAppNotifier)
  {
    TapjoyLog.i("Full Screen Ad", "Getting Full Screen Ad");
    getFeaturedApp(null, paramTapjoyFeaturedAppNotifier);
  }
  
  public void getFeaturedApp(String paramString, TapjoyFeaturedAppNotifier paramTapjoyFeaturedAppNotifier)
  {
    this.currencyID = paramString;
    TapjoyLog.i("Full Screen Ad", "Getting Full Screen Ad userID: " + TapjoyConnectCore.getUserID() + ", currencyID: " + this.currencyID);
    featuredAppNotifier = paramTapjoyFeaturedAppNotifier;
    this.featuredAppObject = new TapjoyFeaturedAppObject();
    featuredAppURLParams = TapjoyConnectCore.getURLParams();
    featuredAppURLParams = featuredAppURLParams + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
    if (this.currencyID != null) {
      featuredAppURLParams = featuredAppURLParams + "&currency_id=" + this.currencyID;
    }
    new Thread(new Runnable()
    {
      public void run()
      {
        boolean bool = false;
        String str = TapjoyFeaturedApp.tapjoyURLConnection.connectToURL("https://ws.tapjoyads.com/get_offers/featured?", TapjoyFeaturedApp.featuredAppURLParams);
        if (str != null) {
          bool = TapjoyFeaturedApp.this.buildResponse(str);
        }
        if (!bool) {
          TapjoyFeaturedApp.featuredAppNotifier.getFeaturedAppResponseFailed("Error retrieving full screen ad data from the server.");
        }
      }
    }).start();
  }
  
  public TapjoyFeaturedAppObject getFeaturedAppObject()
  {
    return this.featuredAppObject;
  }
  
  public void setDisplayCount(int paramInt)
  {
    this.displayCount = paramInt;
  }
  
  public void showFeaturedAppFullScreenAd()
  {
    String str = "";
    if (this.featuredAppObject != null) {
      str = this.featuredAppObject.fullScreenAdURL;
    }
    TapjoyLog.i("Full Screen Ad", "Displaying Full Screen AD with URL: " + str);
    if (str.length() != 0)
    {
      Object localObject2 = TapjoyConnectCore.getURLParams();
      Object localObject1 = localObject2;
      if (this.currencyID != null)
      {
        localObject1 = localObject2;
        if (this.currencyID.length() > 0) {
          localObject1 = localObject2 + "&currency_id=" + this.currencyID;
        }
      }
      localObject2 = new Intent(this.context, TapjoyFeaturedAppWebView.class);
      ((Intent)localObject2).setFlags(268435456);
      ((Intent)localObject2).putExtra("USER_ID", TapjoyConnectCore.getUserID());
      ((Intent)localObject2).putExtra("URL_PARAMS", (String)localObject1);
      ((Intent)localObject2).putExtra("FULLSCREEN_AD_URL", str);
      this.context.startActivity((Intent)localObject2);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyFeaturedApp
 * JD-Core Version:    0.7.0.1
 */