package com.Nexon.MapleThief;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class CustomWebView
  extends Activity
{
  private WebView webView;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    this.webView = ((WebView)findViewById(2131099649));
    this.webView.getSettings().setJavaScriptEnabled(true);
    this.webView.getSettings().setBuiltInZoomControls(true);
    this.webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    this.webView.getSettings().setLightTouchEnabled(true);
    this.webView.getSettings().setSaveFormData(true);
    this.webView.getSettings().setSavePassword(true);
    this.webView.loadUrl(Global.WebUrl);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.CustomWebView
 * JD-Core Version:    0.7.0.1
 */