package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserAutoPurchaseFormResultCallback;
import com.feelingk.iap.util.CommonF;

public class PopupAutoPurchaseFormDialog
  extends Dialog
{
  ParserXML.ParserAutoPurchaseFormResultCallback mAutoFormCallback = null;
  private View.OnClickListener mClickListener = null;
  private int mCurTelecom = 0;
  private ParserXML mGUIParser = null;
  
  public PopupAutoPurchaseFormDialog(Context paramContext, ParserXML.ParserAutoPurchaseFormResultCallback paramParserAutoPurchaseFormResultCallback, int paramInt)
  {
    super(paramContext, paramInt);
    this.mCurTelecom = CommonF.getCarrier(paramContext);
    this.mGUIParser = new ParserXML(paramContext, paramParserAutoPurchaseFormResultCallback, 0, "AutoPurchaseForm", true);
    this.mAutoFormCallback = paramParserAutoPurchaseFormResultCallback;
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupAutoPurchaseFormDialog.this.mAutoFormCallback.onAutoPurchaseFormDialogCancelButtonClick();
      }
    });
  }
  
  public void ClosePopupAutoPurchaseFormDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt1, String paramString1, String paramString2, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.mClickListener = paramOnClickListener;
    if ((this.mCurTelecom == 2) || (this.mCurTelecom == 3)) {
      setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupAutoPurchaseForm", paramString1, paramString2, paramOnClickListener, paramInt2));
    }
    for (;;)
    {
      if (paramInt1 == 105) {
        setOnCancelListener(new DialogInterface.OnCancelListener()
        {
          public void onCancel(DialogInterface paramAnonymousDialogInterface)
          {
            PopupAutoPurchaseFormDialog.this.mAutoFormCallback.onAutoPurchaseFormDialogCancelButtonClick();
          }
        });
      }
      return;
      setContentView(this.mGUIParser.Start("/xml/commonPopupAutoPurchaseForm", paramString1, paramString2, paramOnClickListener, paramInt2));
    }
  }
  
  public void ShowPopupAutoPurchaseFormDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupAutoPurchaseFormDialog
 * JD-Core Version:    0.7.0.1
 */