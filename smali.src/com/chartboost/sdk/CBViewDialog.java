package com.chartboost.sdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class CBViewDialog
  extends Dialog
{
  private Context context;
  private CBView view;
  
  public CBViewDialog(Context paramContext, CBView paramCBView)
  {
    super(paramContext, R.style.chartBoostViewDialogStyle);
    this.context = paramContext;
    this.view = paramCBView;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new RelativeLayout(this.context);
    paramBundle.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    paramBundle.addView(this.view);
    setContentView(paramBundle);
  }
  
  protected void onStop()
  {
    Log.d("ChartBoost", "View dismissed, not sure if by back button");
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBViewDialog
 * JD-Core Version:    0.7.0.1
 */