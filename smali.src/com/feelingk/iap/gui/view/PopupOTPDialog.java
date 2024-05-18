package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserOtpCallback;
import com.feelingk.iap.util.CommonF;

public class PopupOTPDialog
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private int mCurTelecom = 0;
  private ParserXML mGUIParser = null;
  private ParserXML.ParserOtpCallback onOtpCallback = null;
  
  public PopupOTPDialog(Context paramContext, int paramInt, ParserXML.ParserOtpCallback paramParserOtpCallback)
  {
    super(paramContext, paramInt);
    this.mCurTelecom = CommonF.getCarrier(paramContext);
    this.mGUIParser = new ParserXML(paramContext, paramParserOtpCallback, true);
    this.onOtpCallback = paramParserOtpCallback;
  }
  
  public void ClosePopupOtpDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.mClickListener = paramOnClickListener;
    setContentView(this.mGUIParser.Start("/xml/otpPopup_", null, paramOnClickListener, paramInt2));
    if (paramInt1 == 114) {
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopupOTPDialog.this.onOtpCallback.onOtpDialogCancelButtonClick();
        }
      });
    }
  }
  
  public void ShowPopupOtpDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupOTPDialog
 * JD-Core Version:    0.7.0.1
 */