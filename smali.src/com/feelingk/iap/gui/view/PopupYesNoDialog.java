package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserYesNoResultCallback;
import com.feelingk.iap.util.CommonF;

public class PopupYesNoDialog
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private int mCurTelecom = 0;
  private ParserXML mGUIParser = null;
  private ParserXML.ParserYesNoResultCallback onYesNoResultCallback = null;
  
  public PopupYesNoDialog(Context paramContext, ParserXML.ParserYesNoResultCallback paramParserYesNoResultCallback, int paramInt)
  {
    super(paramContext, paramInt);
    this.mCurTelecom = CommonF.getCarrier(paramContext);
    this.mGUIParser = new ParserXML(paramContext, paramParserYesNoResultCallback, 0, "YesNo", true);
    this.onYesNoResultCallback = paramParserYesNoResultCallback;
  }
  
  public void ClosePopupYesNoDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt, String paramString, View.OnClickListener paramOnClickListener)
  {
    this.mClickListener = paramOnClickListener;
    if ((this.mCurTelecom == 2) || (this.mCurTelecom == 3))
    {
      setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupYesNo.xml", paramString, paramOnClickListener));
      if (paramInt != 105) {
        break label73;
      }
      setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          PopupYesNoDialog.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
        }
      });
    }
    label73:
    while (paramInt != 129)
    {
      return;
      setContentView(this.mGUIParser.Start("/xml/commonPopupYesNo.xml", paramString, paramOnClickListener));
      break;
    }
    setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        PopupYesNoDialog.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
      }
    });
  }
  
  public void ShowPopupYesNoDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.PopupYesNoDialog
 * JD-Core Version:    0.7.0.1
 */