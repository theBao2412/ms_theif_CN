package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserOCBCallback;

public class PopupOCBDialog
  extends Dialog
{
  private ParserXML mGUIParser = null;
  private ParserXML.ParserOCBCallback onOCBCallback = null;
  
  public PopupOCBDialog(Context paramContext, int paramInt, ParserXML.ParserOCBCallback paramParserOCBCallback)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserOCBCallback, true);
    this.onOCBCallback = paramParserOCBCallback;
  }
  
  public void ClosePopupOCBDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    if (paramInt1 == 120)
    {
      setContentView(this.mGUIParser.Start("/xml/ocbpopup_", null, paramOnClickListener, paramInt2));
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopupOCBDialog.this.onOCBCallback.onOCBRegistrationCancelClick();
        }
      });
    }
    while (paramInt1 != 121) {
      return;
    }
    setContentView(this.mGUIParser.Start("/xml/ocb_pw_auth.xml", null, paramOnClickListener));
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupOCBDialog.this.onOCBCallback.onOCBPWDCancelButtonClick();
      }
    });
  }
  
  public void ShowPopupOCBDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupOCBDialog
 * JD-Core Version:    0.7.0.1
 */