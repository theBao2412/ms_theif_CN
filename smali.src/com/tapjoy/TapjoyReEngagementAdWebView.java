package com.tapjoy;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class TapjoyReEngagementAdWebView
  extends Activity
{
  final String TAPJOY_RE_ENGAGEMENT_AD = "Re-engagement Ad";
  private String htmlRawData = "";
  private ProgressBar progressBar;
  private WebView webView = null;
  
  private void finishActivity()
  {
    finish();
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
    this.htmlRawData = getIntent().getExtras().getString("RE_ENGAGEMENT_HTML_DATA");
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    paramBundle = new RelativeLayout(this);
    this.webView = new WebView(this);
    this.webView.setWebViewClient(new TapjoyWebViewClient(null));
    this.webView.getSettings().setJavaScriptEnabled(true);
    this.progressBar = new ProgressBar(this, null, 16842874);
    this.progressBar.setVisibility(0);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    this.progressBar.setLayoutParams(localLayoutParams);
    paramBundle.addView(this.webView, -1, -1);
    paramBundle.addView(this.progressBar);
    setContentView(paramBundle);
    this.webView.loadDataWithBaseURL("https://ws.tapjoyads.com/", this.htmlRawData, "text/html", "utf-8", null);
    TapjoyLog.i("Re-engagement Ad", "Opening Re-engagement ad = [" + this.htmlRawData + "]");
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
      if (TapjoyReEngagementAdWebView.this.webView != null) {
        TapjoyReEngagementAdWebView.this.webView.loadUrl("javascript:window.onorientationchange();");
      }
    }
  }
  
  private class TapjoyWebViewClient
    extends WebViewClient
  {
    private TapjoyWebViewClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      TapjoyReEngagementAdWebView.this.progressBar.setVisibility(8);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      TapjoyReEngagementAdWebView.this.progressBar.setVisibility(0);
      TapjoyReEngagementAdWebView.this.progressBar.bringToFront();
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      TapjoyLog.i("Re-engagement Ad", "URL = [" + paramString + "]");
      if (paramString.startsWith("http://ok"))
      {
        TapjoyLog.i("Re-engagement Ad", "dismiss");
        TapjoyReEngagementAdWebView.this.finishActivity();
      }
      return true;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyReEngagementAdWebView
 * JD-Core Version:    0.7.0.1
 */