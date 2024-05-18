package com.tapjoy;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class TapjoyDisplayMetricsUtil
{
  private Configuration configuration;
  private Context context;
  private DisplayMetrics metrics;
  
  public TapjoyDisplayMetricsUtil(Context paramContext)
  {
    this.context = paramContext;
    this.metrics = new DisplayMetrics();
    ((WindowManager)this.context.getSystemService("window")).getDefaultDisplay().getMetrics(this.metrics);
    this.configuration = this.context.getResources().getConfiguration();
  }
  
  public int getScreenDensity()
  {
    return this.metrics.densityDpi;
  }
  
  public int getScreenLayoutSize()
  {
    return this.configuration.screenLayout & 0xF;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyDisplayMetricsUtil
 * JD-Core Version:    0.7.0.1
 */