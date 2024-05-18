package com.tapjoy;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class TapjoyFeaturedAppWebView
  extends Activity
{
  final String TAPJOY_FEATURED_APP = "Full Screen Ad";
  private String fullScreenAdURL = "";
  private ProgressBar progressBar;
  private boolean resumeCalled = false;
  private String urlParams = "";
  private String userID = "";
  private WebView webView = null;
  
  private void finishActivity()
  {
    finish();
  }
  
  private void showOffers()
  {
    TapjoyLog.i("Full Screen Ad", "Showing offers, userID: " + this.userID);
    TapjoyLog.i("Full Screen Ad", "Showing offers, URL PARAMS: " + this.urlParams);
    Intent localIntent = new Intent(this, TJCOffersWebView.class);
    localIntent.putExtra("USER_ID", this.userID);
    localIntent.putExtra("URL_PARAMS", this.urlParams);
    startActivity(localIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.webView != null) {
      new RefreshTask(null).execute(new Void[0]);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Object localObject = getIntent().getExtras();
    this.userID = ((Bundle)localObject).getString("USER_ID");
    this.urlParams = ((Bundle)localObject).getString("URL_PARAMS");
    this.fullScreenAdURL = ((Bundle)localObject).getString("FULLSCREEN_AD_URL");
    this.fullScreenAdURL = this.fullScreenAdURL.replaceAll(" ", "%20");
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
    this.webView.loadUrl(this.fullScreenAdURL);
    TapjoyLog.i("Full Screen Ad", "Opening Full Screen AD URL = [" + this.fullScreenAdURL + "]");
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.resumeCalled) && (TapjoyConnectCore.getInstance() != null))
    {
      TapjoyLog.i("Full Screen Ad", "call connect");
      TapjoyConnectCore.getInstance().callConnect();
    }
    this.resumeCalled = true;
  }
  
  private class RefreshTask
    extends AsyncTask<Void, Void, Boolean>
  {
    private RefreshTask() {}
    
    protected Boolean doInBackground(Void... paramVarArgs)
    {
      try
      {
        Thread.sleep(200L);
        return Boolean.valueOf(true);
      }
      catch (InterruptedException paramVarArgs)
      {
        for (;;)
        {
          paramVarArgs.printStackTrace();
        }
      }
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      if (TapjoyFeaturedAppWebView.this.webView != null) {
        TapjoyFeaturedAppWebView.this.webView.loadUrl("javascript:window.onorientationchange();");
      }
    }
  }
  
  private class TapjoyWebViewClient
    extends WebViewClient
  {
    private TapjoyWebViewClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      TapjoyFeaturedAppWebView.this.progressBar.setVisibility(8);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      TapjoyFeaturedAppWebView.this.progressBar.setVisibility(0);
      TapjoyFeaturedAppWebView.this.progressBar.bringToFront();
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      TapjoyLog.i("Full Screen Ad", "URL = [" + paramString + "]");
      if (paramString.contains("showOffers"))
      {
        TapjoyLog.i("Full Screen Ad", "show offers");
        TapjoyFeaturedAppWebView.this.showOffers();
      }
      for (;;)
      {
        return true;
        if (paramString.contains("dismiss"))
        {
          TapjoyLog.i("Full Screen Ad", "dismiss");
          TapjoyFeaturedAppWebView.this.finishActivity();
        }
        else if (paramString.contains("ws.tapjoyads.com"))
        {
          TapjoyLog.i("Full Screen Ad", "Open redirecting URL = [" + paramString + "]");
          paramWebView.loadUrl(paramString);
        }
        else
        {
          TapjoyLog.i("Full Screen Ad", "Opening URL in new browser = [" + paramString + "]");
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          TapjoyFeaturedAppWebView.this.startActivity(paramWebView);
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyFeaturedAppWebView
 * JD-Core Version:    0.7.0.1
 */