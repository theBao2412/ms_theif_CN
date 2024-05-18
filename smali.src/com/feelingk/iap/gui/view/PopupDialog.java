package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserPopupDlgResultCallback;

public class PopupDialog
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private ParserXML mGUIParser = null;
  private ParserXML.ParserPopupDlgResultCallback onParserPopupDlgResultCallback = null;
  
  public PopupDialog(Context paramContext, ParserXML.ParserPopupDlgResultCallback paramParserPopupDlgResultCallback, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext);
    this.onParserPopupDlgResultCallback = paramParserPopupDlgResultCallback;
  }
  
  public void ClosePopupDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt, String paramString, View.OnClickListener paramOnClickListener)
  {
    this.mClickListener = paramOnClickListener;
    if ((IAPLib.getIsOTPAuth()) && (IAPLib.getOTPPurchaseSuccess())) {
      setContentView(this.mGUIParser.Start("/xml/otpCommonPopup.xml", paramString, paramOnClickListener));
    }
    while (paramInt == 105)
    {
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopupDialog.this.mClickListener.onClick(null);
        }
      });
      return;
      setContentView(this.mGUIParser.Start("/xml/commonPopup.xml", paramString, paramOnClickListener));
    }
    if ((paramInt == 127) || (paramInt == 128) || (paramInt == 130))
    {
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopupDialog.this.onParserPopupDlgResultCallback.onErrorDlgBtnClick();
        }
      });
      return;
    }
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupDialog.this.onParserPopupDlgResultCallback.onDlgButtonClick();
      }
    });
  }
  
  public void ShowPopupDialog()
  {
    show();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
    {
      paramKeyEvent.startTracking();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82) {
      return true;
    }
    return super.onKeyLongPress(paramInt, paramKeyEvent);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.gui.view.PopupDialog
 * JD-Core Version:    0.7.0.1
 */