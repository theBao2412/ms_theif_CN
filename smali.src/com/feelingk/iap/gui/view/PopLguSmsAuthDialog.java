package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback;
import com.feelingk.iap.util.CommonF;

public class PopLguSmsAuthDialog
  extends Dialog
{
  private int mCurTelecom = 0;
  private ParserXML mGUIParser = null;
  private ParserXML.ParserLguSmsAuthCallback onLguSmsAuthCallback = null;
  
  public PopLguSmsAuthDialog(Context paramContext, ParserXML.ParserLguSmsAuthCallback paramParserLguSmsAuthCallback, int paramInt)
  {
    super(paramContext, paramInt);
    this.mCurTelecom = CommonF.getCarrier(paramContext);
    this.mGUIParser = new ParserXML(paramContext, paramParserLguSmsAuthCallback, true);
    this.onLguSmsAuthCallback = paramParserLguSmsAuthCallback;
  }
  
  public void ClosePopupLguSMSAuthDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    setContentView(this.mGUIParser.Start("/xml_kt_lg/lgusmsauthpopup_", paramOnClickListener, paramInt2));
    if (paramInt1 == 117) {
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopLguSmsAuthDialog.this.onLguSmsAuthCallback.onLguSmsAuthCancer();
        }
      });
    }
  }
  
  public void ShowPopupLguSMSAuthDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopLguSmsAuthDialog
 * JD-Core Version:    0.7.0.1
 */