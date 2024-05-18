package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.net.URI;
import org.json.JSONException;
import org.json.JSONObject;

public class CBDialogActivity
  extends Activity
{
  public static final String BUNDLE_KEY_CONFIGOBJECT = "bk_cfgo";
  public static final String BUNDLE_KEY_TYPE = "bk_type";
  public static final boolean DEBUG_MODE = false;
  public static final int OVERLAY_OPACITY = 75;
  public static final String TAG = "CBDialogActivity";
  protected static Context ctx;
  protected JSONObject cbConfiguration;
  protected RelativeLayout cbContainer;
  protected ChartBoost cbObject;
  protected int cbViewType;
  
  private void display()
  {
    CBView localCBView1 = null;
    if (this.cbViewType == CBView.CBViewType.CBViewTypeInterstitial.ordinal()) {
      localCBView1 = new CBView(this, CBView.CBViewType.CBViewTypeInterstitial);
    }
    CBView localCBView2;
    for (;;)
    {
      this.cbObject = ChartBoost.getSharedChartBoost();
      if ((localCBView1 == null) || (this.cbObject == null)) {
        finish();
      }
      localCBView1.setState(CBView.CBViewState.CBViewStateWaitingForDisplay);
      localCBView1.setResponseContext(this.cbConfiguration);
      localCBView1.setWebViewClient(new MyAdview(null));
      try
      {
        String str = this.cbConfiguration.getString("html");
        if ((str != null) && (str.length() != 0)) {
          break;
        }
        throw new Exception("html content is blank!");
      }
      catch (Exception localException)
      {
        finish();
        return;
      }
      if (this.cbViewType == CBView.CBViewType.CBViewTypeMoreApps.ordinal()) {
        localCBView2 = new CBView(this, CBView.CBViewType.CBViewTypeMoreApps);
      }
    }
    localCBView2.loadDataWithBaseURL("file:///android_asset/", this.cbConfiguration.getString("html"), "text/html", "utf-8", null);
  }
  
  public static Context getContext()
  {
    return ctx;
  }
  
  public void close()
  {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cbContainer = new RelativeLayout(this);
    this.cbContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    this.cbContainer.setBackgroundColor(-16777216);
    this.cbContainer.getBackground().setAlpha(75);
    this.cbContainer.setGravity(49);
    if (!getIntent().hasExtra("bk_type")) {
      finish();
    }
    this.cbViewType = getIntent().getExtras().getInt("bk_type");
    try
    {
      this.cbConfiguration = new JSONObject(getIntent().getExtras().getString("bk_cfgo"));
      ctx = this;
      this.cbContainer.post(new Runnable()
      {
        public void run()
        {
          CBDialogActivity.this.display();
        }
      });
      setContentView(this.cbContainer);
      return;
    }
    catch (JSONException paramBundle)
    {
      for (;;)
      {
        finish();
      }
    }
  }
  
  protected void onDestroy()
  {
    this.cbContainer.removeAllViews();
    this.cbContainer = null;
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  private class MyAdview
    extends WebViewClient
  {
    private MyAdview() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      paramWebView = (CBView)paramWebView;
      if (paramWebView.getState() == CBView.CBViewState.CBViewStateWaitingForDisplay)
      {
        paramWebView.setState(CBView.CBViewState.CBViewStateOther);
        if (paramWebView.getType() != CBView.CBViewType.CBViewTypeInterstitial) {
          break label128;
        }
        if ((CBDialogActivity.this.cbObject.getDelegate() == null) || (CBDialogActivity.this.cbObject.getDelegate().shouldDisplayInterstitial(null))) {}
      }
      else
      {
        return;
      }
      if (CBDialogActivity.this.cbContainer != null)
      {
        Log.i("CBDialogActivity", "Got an interstitial, adding to view!");
        CBDialogActivity.this.cbContainer.removeAllViews();
        CBDialogActivity.this.cbContainer.addView(paramWebView);
        CBDialogActivity.this.cbContainer.invalidate();
      }
      for (;;)
      {
        paramWebView.setState(CBView.CBViewState.CBViewStateDisplayedByDefaultController);
        return;
        label128:
        if (paramWebView.getType() == CBView.CBViewType.CBViewTypeMoreApps)
        {
          if ((CBDialogActivity.this.cbObject.getDelegate() != null) && (!CBDialogActivity.this.cbObject.getDelegate().shouldDisplayMoreApps(null))) {
            break;
          }
          if (CBDialogActivity.this.cbContainer != null)
          {
            Log.i("CBDialogActivity", "Got More Apps, adding to view!");
            CBDialogActivity.this.cbContainer.removeAllViews();
            CBDialogActivity.this.cbContainer.addView(paramWebView);
            CBDialogActivity.this.cbContainer.invalidate();
          }
        }
      }
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView = (CBView)paramWebView;
      try
      {
        URI localURI = new URI(paramString);
        if (localURI.getScheme().equals("file")) {
          return false;
        }
        if (localURI.getScheme().equals("chartboost"))
        {
          CBDialogActivity.this.cbObject.handleChartBoostRequest(paramString, paramWebView);
          return true;
        }
      }
      catch (Exception paramWebView) {}
      return false;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBDialogActivity
 * JD-Core Version:    0.7.0.1
 */