package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserJoinResultCallback;
import com.feelingk.iap.util.CommonF;

public class PopupJoinDialog
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private int mCurTelecom = 0;
  private ParserXML mGUIParser = null;
  private ParserXML.ParserJoinResultCallback onJoinResultCallback = null;
  
  public PopupJoinDialog(Context paramContext, ParserXML.ParserJoinResultCallback paramParserJoinResultCallback, int paramInt)
  {
    super(paramContext, paramInt);
    this.mCurTelecom = CommonF.getCarrier(paramContext);
    this.mGUIParser = new ParserXML(paramContext, paramParserJoinResultCallback, 0, "Join", true);
    this.onJoinResultCallback = paramParserJoinResultCallback;
  }
  
  public void ClosePopupJoinDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, String paramString, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.mClickListener = paramOnClickListener;
    if ((this.mCurTelecom == 2) || (this.mCurTelecom == 3)) {
      setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupJoin_", paramString, paramOnClickListener, paramInt2));
    }
    for (;;)
    {
      if (paramInt1 == 107) {
        setOnCancelListener(new DialogInterface.OnCancelListener()
        {
          public void onCancel(DialogInterface paramAnonymousDialogInterface)
          {
            PopupJoinDialog.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
          }
        });
      }
      return;
      setContentView(this.mGUIParser.Start("/xml/commonPopupJoin_", paramString, paramOnClickListener, paramInt2));
    }
  }
  
  public void ShowPopupJoinDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupJoinDialog
 * JD-Core Version:    0.7.0.1
 */