package com.feelingk.iap.gui.view;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ProgressDialog
{
  private Dialog dialog = null;
  
  public ProgressDialog(Context paramContext, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    TextView localTextView = new TextView(paramContext);
    localTextView.setGravity(17);
    localTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    localTextView.setTextColor(-1);
    localTextView.setTextSize(16.0F);
    localTextView.setPadding(10, 10, 10, 10);
    localTextView.setText(paramString);
    paramContext = new ProgressBar(paramContext);
    paramContext.setPadding(10, 10, 10, 10);
    localLinearLayout.addView(paramContext);
    localLinearLayout.addView(localTextView);
    localBuilder.setView(localLinearLayout);
    this.dialog = localBuilder.create();
    this.dialog.setOnCancelListener(paramOnCancelListener);
  }
  
  public void CloseProgress()
  {
    this.dialog.setOnCancelListener(null);
    this.dialog.dismiss();
  }
  
  public void ShowProgress()
  {
    this.dialog.show();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.gui.view.ProgressDialog
 * JD-Core Version:    0.7.0.1
 */