package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserDotoriSmsAuthCallback;

public class PopupDotoriSmsAuth
  extends Dialog
{
  private ParserXML.ParserDotoriSmsAuthCallback mDotoriSmsAuthCallback = null;
  private ParserXML mGUIParser = null;
  
  public PopupDotoriSmsAuth(Context paramContext, int paramInt, ParserXML.ParserDotoriSmsAuthCallback paramParserDotoriSmsAuthCallback)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserDotoriSmsAuthCallback, true);
    this.mDotoriSmsAuthCallback = paramParserDotoriSmsAuthCallback;
  }
  
  public void ClosePopupDotoriSMSAuthDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    setContentView(this.mGUIParser.Start("/xml/dotori_sms_auth_", null, paramOnClickListener, paramInt2));
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupDotoriSmsAuth.this.mDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
      }
    });
  }
  
  public void ShowPopupDotoriSMSAuthDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupDotoriSmsAuth
 * JD-Core Version:    0.7.0.1
 */