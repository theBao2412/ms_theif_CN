package com.kt.olleh.inapp.dialog;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnKeyListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;

public class DialogProgress
{
  private Dialog dialog = null;
  
  public DialogProgress(Context paramContext, String paramString)
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
    paramContext = this.dialog.getWindow().getAttributes();
    paramContext.dimAmount = 0.7F;
    this.dialog.getWindow().setAttributes(paramContext);
    this.dialog.getWindow().addFlags(2);
  }
  
  public void dismiss()
  {
    this.dialog.dismiss();
  }
  
  public void setOnKeyListener(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    this.dialog.setOnKeyListener(paramOnKeyListener);
  }
  
  public void show()
  {
    this.dialog.show();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.dialog.DialogProgress
 * JD-Core Version:    0.7.0.1
 */