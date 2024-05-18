package com.kt.olleh.inapp.dialog;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;

public class DialogOnClickListener
  implements View.OnClickListener
{
  private Dialog mDialog;
  
  public DialogOnClickListener(Dialog paramDialog)
  {
    this.mDialog = paramDialog;
  }
  
  public Dialog getDialog()
  {
    return this.mDialog;
  }
  
  public void onClick(View paramView)
  {
    if (this.mDialog != null) {
      this.mDialog.dismiss();
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.dialog.DialogOnClickListener
 * JD-Core Version:    0.7.0.1
 */