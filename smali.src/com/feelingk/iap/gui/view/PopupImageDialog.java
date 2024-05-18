package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserImageResultCallback;
import com.feelingk.iap.util.CommonF;

public class PopupImageDialog
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private int mCurTelecom = 0;
  private ParserXML mGUIParser = null;
  
  public PopupImageDialog(Context paramContext, ParserXML.ParserImageResultCallback paramParserImageResultCallback, int paramInt)
  {
    super(paramContext, paramInt);
    this.mCurTelecom = CommonF.getCarrier(paramContext);
    this.mGUIParser = new ParserXML(paramContext, paramParserImageResultCallback, 0, "PermissionPopup", true);
  }
  
  public void ClosePopupImageDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt, String paramString, View.OnClickListener paramOnClickListener)
  {
    this.mClickListener = paramOnClickListener;
    if ((this.mCurTelecom == 2) || (this.mCurTelecom == 3)) {
      setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupImage.xml", paramString, paramOnClickListener));
    }
    for (;;)
    {
      if (paramInt == 105) {
        setOnCancelListener(new DialogInterface.OnCancelListener()
        {
          public void onCancel(DialogInterface paramAnonymousDialogInterface)
          {
            PopupImageDialog.this.mClickListener.onClick(null);
          }
        });
      }
      return;
      setContentView(this.mGUIParser.Start("/xml/commonPopupImage.xml", paramString, paramOnClickListener));
    }
  }
  
  public void ShowPopupImageDialog()
  {
    show();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.gui.view.PopupImageDialog
 * JD-Core Version:    0.7.0.1
 */