package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.parser.ParserXML.ParserForeignInputMDNResultCallback;

public class ForeignInputMDN
  extends Dialog
{
  private View.OnClickListener mClickListener = null;
  private ParserXML mGUIParser = null;
  private ParserXML.ParserForeignInputMDNResultCallback onParserPopupDlgResultCallback = null;
  
  public ForeignInputMDN(Context paramContext, ParserXML.ParserForeignInputMDNResultCallback paramParserForeignInputMDNResultCallback, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramInt);
    this.mGUIParser = new ParserXML(paramContext, paramParserForeignInputMDNResultCallback);
    this.onParserPopupDlgResultCallback = paramParserForeignInputMDNResultCallback;
  }
  
  public void ClosePopupDialog()
  {
    dismiss();
  }
  
  public void InflateView(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 2))
    {
      setContentView(this.mGUIParser.Start("/xml/foreign_inputmdn_w.xml", null, null));
      return;
    }
    setContentView(this.mGUIParser.Start("/xml/foreign_inputmdn_h.xml", null, null));
  }
  
  public void ShowPopupDialog()
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
 * Qualified Name:     com.feelingk.iap.gui.view.ForeignInputMDN
 * JD-Core Version:    0.7.0.1
 */