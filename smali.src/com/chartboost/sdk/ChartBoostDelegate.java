package com.chartboost.sdk;

import android.view.View;

public abstract interface ChartBoostDelegate
{
  public abstract void didClickInterstitial(View paramView);
  
  public abstract void didClickMoreApps(View paramView);
  
  public abstract void didCloseInterstitial(View paramView);
  
  public abstract void didCloseMoreApps(View paramView);
  
  public abstract void didDismissInterstitial(View paramView);
  
  public abstract void didDismissMoreApps(View paramView);
  
  public abstract boolean shouldDisplayInterstitial(View paramView);
  
  public abstract boolean shouldDisplayMoreApps(View paramView);
  
  public abstract boolean shouldRequestInterstitial();
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.ChartBoostDelegate
 * JD-Core Version:    0.7.0.1
 */