package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserCultureLandCallback;

public class PopupCultureLandLoginDialog
  extends Dialog
{
  private ParserXML mGUIParser = null;
  private ParserXML.ParserCultureLandCallback onCultureLandCallback = null;
  
  public PopupCultureLandLoginDialog(Context paramContext, int paramInt, ParserXML.ParserCultureLandCallback paramParserCultureLandCallback)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserCultureLandCallback, true);
    this.onCultureLandCallback = paramParserCultureLandCallback;
  }
  
  public void ClosePopupCultureLandLoginDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    setContentView(this.mGUIParser.Start("/xml/culture_login_", null, paramOnClickListener, paramInt2));
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupCultureLandLoginDialog.this.onCultureLandCallback.onCultureLandCancelButtonClick();
      }
    });
  }
  
  public void ShowPopupCultureLandLoginDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupCultureLandLoginDialog
 * JD-Core Version:    0.7.0.1
 */