package com.chartboost.sdk;

import android.content.Context;

public class CBDefaultViewController
{
  private static CBDefaultViewController sharedController = null;
  private Context context;
  private boolean viewIsVisible;
  
  private void displayChartBoostView(CBView paramCBView)
  {
    CBViewDialog localCBViewDialog = new CBViewDialog(this.context, paramCBView);
    paramCBView.setDialog(localCBViewDialog);
    localCBViewDialog.show();
  }
  
  public static CBDefaultViewController getSharedController()
  {
    try
    {
      if (sharedController == null) {
        sharedController = new CBDefaultViewController();
      }
      CBDefaultViewController localCBDefaultViewController = sharedController;
      return localCBDefaultViewController;
    }
    finally {}
  }
  
  public void dismissInterstitial(CBView paramCBView)
  {
    paramCBView.getDialog().cancel();
  }
  
  public void dismissLoadingView() {}
  
  public void dismissMoreAppsView(CBView paramCBView)
  {
    paramCBView.getDialog().cancel();
  }
  
  public void displayInterstitial(CBView paramCBView)
  {
    displayChartBoostView(paramCBView);
  }
  
  public void displayLoadingView() {}
  
  public void displayMoreAppsView(CBView paramCBView)
  {
    displayChartBoostView(paramCBView);
  }
  
  public Context getContext()
  {
    return this.context;
  }
  
  public boolean isViewIsVisible()
  {
    return this.viewIsVisible;
  }
  
  public void setContext(Context paramContext)
  {
    this.context = paramContext;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBDefaultViewController
 * JD-Core Version:    0.7.0.1
 */