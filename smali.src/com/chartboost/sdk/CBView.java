package com.chartboost.sdk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import org.json.JSONObject;

public class CBView
  extends WebView
{
  private CBViewDialog dialog;
  private JSONObject responseContext;
  private CBViewState state;
  private CBViewType type;
  
  public CBView(Context paramContext, CBViewType paramCBViewType)
  {
    super(paramContext);
    setBackgroundColor(0);
    getSettings().setJavaScriptEnabled(true);
    this.type = paramCBViewType;
    if (paramCBViewType == CBViewType.CBViewTypeInterstitial) {
      setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          return paramAnonymousMotionEvent.getAction() == 2;
        }
      });
    }
  }
  
  public CBViewDialog getDialog()
  {
    return this.dialog;
  }
  
  public JSONObject getResponseContext()
  {
    return this.responseContext;
  }
  
  public CBViewState getState()
  {
    return this.state;
  }
  
  public CBViewType getType()
  {
    return this.type;
  }
  
  public void setDialog(CBViewDialog paramCBViewDialog)
  {
    this.dialog = paramCBViewDialog;
  }
  
  public void setResponseContext(JSONObject paramJSONObject)
  {
    this.responseContext = paramJSONObject;
  }
  
  public void setState(CBViewState paramCBViewState)
  {
    this.state = paramCBViewState;
  }
  
  public void setType(CBViewType paramCBViewType)
  {
    this.type = paramCBViewType;
  }
  
  public static enum CBViewState
  {
    CBViewStateOther,  CBViewStateWaitingForDisplay,  CBViewStateDisplayedByDefaultController,  CBViewStateWaitingForDismissal;
  }
  
  public static enum CBViewType
  {
    CBViewTypeInterstitial,  CBViewTypeMoreApps;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBView
 * JD-Core Version:    0.7.0.1
 */