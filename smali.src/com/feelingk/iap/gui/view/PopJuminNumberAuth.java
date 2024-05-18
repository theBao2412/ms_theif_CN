package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserAuthResultCallback;

public class PopJuminNumberAuth
  extends Dialog
{
  private ParserXML mGUIParser = null;
  private ParserXML.ParserAuthResultCallback onResultCallback = null;
  
  public PopJuminNumberAuth(Context paramContext, int paramInt, ParserXML.ParserAuthResultCallback paramParserAuthResultCallback, boolean paramBoolean)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserAuthResultCallback, true);
    this.onResultCallback = paramParserAuthResultCallback;
  }
  
  public void ClosePopupAuthDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 2)) {
      setContentView(this.mGUIParser.Start("/xml_kt_lg/pop_Juminnumber_w.xml", null, null));
    }
    for (;;)
    {
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopJuminNumberAuth.this.onResultCallback.onAuthDialogCancelButtonClick();
        }
      });
      return;
      setContentView(this.mGUIParser.Start("/xml_kt_lg/pop_Juminnumber_h.xml", null, null));
    }
  }
  
  public void ShowPopupAuthDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopJuminNumberAuth
 * JD-Core Version:    0.7.0.1
 */