package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.util.Hashtable;

public class TJCOffersWebView
  extends Activity
{
  final String TAPJOY_OFFERS = "Offers";
  private String clientPackage = "";
  private Dialog dialog = null;
  private String offersURL = null;
  private ProgressBar progressBar;
  private boolean resumeCalled = false;
  private boolean skipOfferWall = false;
  private String urlParams = "";
  private String userID = "";
  private WebView webView = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    Object localObject = getIntent().getExtras();
    if (localObject != null) {
      if (((Bundle)localObject).getString("DISPLAY_AD_URL") != null)
      {
        this.skipOfferWall = true;
        this.offersURL = ((Bundle)localObject).getString("DISPLAY_AD_URL");
      }
    }
    for (;;)
    {
      this.offersURL = this.offersURL.replaceAll(" ", "%20");
      this.clientPackage = TapjoyConnectCore.getClientPackage();
      TapjoyLog.i("Offers", "clientPackage: [" + this.clientPackage + "]");
      super.onCreate(paramBundle);
      requestWindowFeature(1);
      paramBundle = new RelativeLayout(this);
      this.webView = new WebView(this);
      this.webView.setWebViewClient(new TapjoyWebViewClient(null));
      this.webView.getSettings().setJavaScriptEnabled(true);
      this.progressBar = new ProgressBar(this, null, 16842874);
      this.progressBar.setVisibility(0);
      localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      this.progressBar.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramBundle.addView(this.webView, -1, -1);
      paramBundle.addView(this.progressBar);
      setContentView(paramBundle);
      this.webView.loadUrl(this.offersURL);
      TapjoyLog.i("Offers", "Opening URL = [" + this.offersURL + "]");
      return;
      this.skipOfferWall = false;
      this.urlParams = ((Bundle)localObject).getString("URL_PARAMS");
      this.userID = ((Bundle)localObject).getString("USER_ID");
      this.urlParams = (this.urlParams + "&publisher_user_id=" + this.userID);
      if (TapjoyConnectCore.getVideoParams().length() > 0) {
        this.urlParams = (this.urlParams + "&" + TapjoyConnectCore.getVideoParams());
      }
      TapjoyLog.i("Offers", "urlParams: [" + this.urlParams + "]");
      this.offersURL = ("https://ws.tapjoyads.com/get_offers/webpage?" + this.urlParams);
      continue;
      TapjoyLog.e("Offers", "Tapjoy offers meta data initialization fail.");
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.webView != null)
    {
      this.webView.clearCache(true);
      this.webView.destroyDrawingCache();
      this.webView.destroy();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.webView.canGoBack()))
    {
      this.webView.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.offersURL != null) && (this.webView != null)) {
      this.webView.loadUrl(this.offersURL);
    }
    if ((this.resumeCalled) && (TapjoyConnectCore.getInstance() != null))
    {
      TapjoyLog.i("Offers", "call connect");
      TapjoyConnectCore.getInstance().callConnect();
    }
    this.resumeCalled = true;
  }
  
  private class TapjoyWebViewClient
    extends WebViewClient
  {
    private TapjoyWebViewClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      TJCOffersWebView.this.progressBar.setVisibility(8);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      TJCOffersWebView.this.progressBar.setVisibility(0);
      TJCOffersWebView.this.progressBar.bringToFront();
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      TapjoyLog.i("Offers", "URL = [" + paramString + "]");
      Object localObject4;
      int j;
      int k;
      Object localObject3;
      Object localObject1;
      Object localObject2;
      if (paramString.startsWith("tjvideo://"))
      {
        localObject4 = new Hashtable();
        j = paramString.indexOf("://") + "://".length();
        k = 0;
        localObject3 = "";
        localObject1 = "";
        if ((j >= paramString.length()) || (j == -1))
        {
          if ((k == 1) && (((String)localObject3).length() > 0))
          {
            paramWebView = Uri.decode((String)localObject3);
            TapjoyLog.i("Offers", "k:v: " + (String)localObject1 + ", " + paramWebView);
            ((Hashtable)localObject4).put(localObject1, paramWebView);
          }
          paramWebView = (String)((Hashtable)localObject4).get("video_id");
          paramString = (String)((Hashtable)localObject4).get("amount");
          localObject1 = (String)((Hashtable)localObject4).get("currency_name");
          localObject2 = (String)((Hashtable)localObject4).get("click_url");
          localObject3 = (String)((Hashtable)localObject4).get("video_complete_url");
          localObject4 = (String)((Hashtable)localObject4).get("video_url");
          TapjoyLog.i("Offers", "videoID: " + paramWebView);
          TapjoyLog.i("Offers", "currencyAmount: " + paramString);
          TapjoyLog.i("Offers", "currencyName: " + (String)localObject1);
          TapjoyLog.i("Offers", "clickURL: " + (String)localObject2);
          TapjoyLog.i("Offers", "webviewURL: " + (String)localObject3);
          TapjoyLog.i("Offers", "videoURL: " + (String)localObject4);
          if (!TapjoyVideo.getInstance().startVideo(paramWebView, (String)localObject1, paramString, (String)localObject2, (String)localObject3, (String)localObject4)) {
            break label570;
          }
          TapjoyLog.i("Offers", "VIDEO");
        }
      }
      for (;;)
      {
        return true;
        char c = paramString.charAt(j);
        int i;
        if (k == 0) {
          if (c == '=')
          {
            i = 1;
            localObject2 = Uri.decode((String)localObject3);
            paramWebView = "";
          }
        }
        for (;;)
        {
          j += 1;
          localObject1 = localObject2;
          k = i;
          localObject3 = paramWebView;
          break;
          paramWebView = localObject3 + c;
          localObject2 = localObject1;
          i = k;
          continue;
          localObject2 = localObject1;
          i = k;
          paramWebView = (WebView)localObject3;
          if (k == 1) {
            if (c == '&')
            {
              i = 0;
              localObject2 = Uri.decode((String)localObject3);
              paramWebView = "";
              TapjoyLog.i("Offers", "k:v: " + (String)localObject1 + ", " + (String)localObject2);
              ((Hashtable)localObject4).put(localObject1, localObject2);
              localObject2 = localObject1;
            }
            else
            {
              paramWebView = localObject3 + c;
              localObject2 = localObject1;
              i = k;
            }
          }
        }
        label570:
        TapjoyLog.e("Offers", "Unable to play video: " + paramWebView);
        TJCOffersWebView.this.dialog = new AlertDialog.Builder(TJCOffersWebView.this).setTitle("").setMessage("Unable to play video.").setPositiveButton("OK", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
          }
        }).create();
        try
        {
          TJCOffersWebView.this.dialog.show();
        }
        catch (Exception paramWebView)
        {
          TapjoyLog.e("Offers", "e: " + paramWebView.toString());
        }
        continue;
        if (paramString.contains("ws.tapjoyads.com"))
        {
          TapjoyLog.i("Offers", "Open redirecting URL = [" + paramString + "]");
          paramWebView.loadUrl(paramString);
        }
        else
        {
          TapjoyLog.i("Offers", "Opening URL in new browser = [" + paramString + "]");
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          TJCOffersWebView.this.startActivity(paramWebView);
          TapjoyLog.i("Offers", "skipOfferWall: " + TJCOffersWebView.this.skipOfferWall);
          if (TJCOffersWebView.this.skipOfferWall) {
            TJCOffersWebView.this.finish();
          }
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TJCOffersWebView
 * JD-Core Version:    0.7.0.1
 */