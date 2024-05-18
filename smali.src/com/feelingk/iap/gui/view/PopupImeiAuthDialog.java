package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserIMEIAuthCallback;

public class PopupImeiAuthDialog
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private ParserXML mGUIParser = null;
  ParserXML.ParserIMEIAuthCallback mImeiAuthCallback = null;
  
  public PopupImeiAuthDialog(Context paramContext, ParserXML.ParserIMEIAuthCallback paramParserIMEIAuthCallback, int paramInt)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserIMEIAuthCallback, "IMEIAuthForm", true);
    this.mImeiAuthCallback = paramParserIMEIAuthCallback;
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupImeiAuthDialog.this.mImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
      }
    });
  }
  
  public void ClosePopupIMEIAuthDialog()
  {
    dismiss();
  }
  
  public void ShowPopupIMEIAuthDialog()
  {
    show();
  }
  
  public void inflageView(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.mClickListener = paramOnClickListener;
    setContentView(this.mGUIParser.StartIMEIAuth("/xml/imeiauth", paramOnClickListener, paramInt2));
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupImeiAuthDialog
 * JD-Core Version:    0.7.0.1
 */