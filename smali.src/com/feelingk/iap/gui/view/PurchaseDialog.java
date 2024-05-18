package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import com.feelingk.iap.gui.data.PurchaseItem;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback;

public class PurchaseDialog
  extends Dialog
{
  private ParserXML mGUIParser = null;
  private ParserXML.ParserResultCallback mRetCallback = null;
  
  public PurchaseDialog(Context paramContext, int paramInt, ParserXML.ParserResultCallback paramParserResultCallback, boolean paramBoolean)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserResultCallback, 0, paramBoolean);
    this.mRetCallback = paramParserResultCallback;
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        SingletonCounter.getInstance().clear();
        PurchaseDialog.this.mRetCallback.onPurchaseCancelButtonClick();
      }
    });
  }
  
  public PurchaseDialog(Context paramContext, ParserXML.ParserResultCallback paramParserResultCallback)
  {
    super(paramContext, 16973840);
    this.mGUIParser = new ParserXML(paramContext, paramParserResultCallback);
    this.mRetCallback = paramParserResultCallback;
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PurchaseDialog.this.mRetCallback.onPurchaseCancelButtonClick();
      }
    });
  }
  
  public void ClosePurchaseDialog()
  {
    dismiss();
  }
  
  public void InflateParserDialog(int paramInt, PurchaseItem paramPurchaseItem)
  {
    setContentView(this.mGUIParser.Start(paramInt, paramPurchaseItem));
  }
  
  public void ShowPurchaseDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PurchaseDialog
 * JD-Core Version:    0.7.0.1
 */