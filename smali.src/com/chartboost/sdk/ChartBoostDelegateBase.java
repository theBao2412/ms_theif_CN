package com.chartboost.sdk;

import android.view.View;

public abstract class ChartBoostDelegateBase
  implements ChartBoostDelegate
{
  public void didClickInterstitial(View paramView) {}
  
  public void didClickMoreApps(View paramView) {}
  
  public void didCloseInterstitial(View paramView) {}
  
  public void didCloseMoreApps(View paramView) {}
  
  public void didDismissInterstitial(View paramView) {}
  
  public void didDismissMoreApps(View paramView) {}
  
  public boolean shouldDisplayInterstitial(View paramView)
  {
    return true;
  }
  
  public boolean shouldDisplayMoreApps(View paramView)
  {
    return true;
  }
  
  public boolean shouldRequestInterstitial()
  {
    return true;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.ChartBoostDelegateBase
 * JD-Core Version:    0.7.0.1
 */