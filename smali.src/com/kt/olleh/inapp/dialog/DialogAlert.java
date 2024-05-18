package com.kt.olleh.inapp.dialog;

import android.app.Dialog;
import android.content.Context;
import android.text.Html;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kt.olleh.inapp.util.UIParser;

public class DialogAlert
  extends Dialog
{
  private int buttonCount = -1;
  private DialogOnClickListener[] buttonOCLs = null;
  private String[] buttonTexts = null;
  private Context mContext;
  UIParser mParser;
  private String message = null;
  private String title = null;
  
  public DialogAlert(Context paramContext, int paramInt)
  {
    super(paramContext, 16973840);
    this.mContext = paramContext;
    this.buttonCount = paramInt;
    if (this.buttonCount > 0)
    {
      this.buttonTexts = new String[this.buttonCount];
      this.buttonOCLs = new DialogOnClickListener[this.buttonCount];
    }
  }
  
  private void create()
  {
    setContentView(showMy("/layout/dialog_alert"));
    Object localObject = getWindow().getAttributes();
    ((WindowManager.LayoutParams)localObject).dimAmount = 0.7F;
    getWindow().setAttributes((WindowManager.LayoutParams)localObject);
    getWindow().addFlags(2);
    localObject = (LinearLayout)findViewById(this.mParser.getID("dialog_Title"));
    ((TextView)findViewById(this.mParser.getID("dialogAlertTitleTextView"))).setText(this.title);
    if ((this.title == null) || (this.title.equals(""))) {
      ((LinearLayout)localObject).setVisibility(8);
    }
    localObject = (TextView)findViewById(this.mParser.getID("dialog_MessageTextView"));
    if ((this.message != null) && (this.message != "")) {
      ((TextView)localObject).setText(Html.fromHtml(this.message));
    }
    int i;
    if (this.buttonCount > 0)
    {
      ((LinearLayout)findViewById(this.mParser.getID("Button_Layout"))).setVisibility(0);
      localObject = new Button[this.buttonCount];
      i = 0;
      if (i < localObject.length) {
        break label227;
      }
      if (this.buttonTexts != null)
      {
        i = 0;
        label201:
        if (i < this.buttonCount) {
          break label272;
        }
      }
      if (this.buttonOCLs != null) {
        i = 0;
      }
    }
    for (;;)
    {
      if (i >= this.buttonCount)
      {
        return;
        label227:
        localObject[i] = ((Button)findViewById(this.mParser.getID(new String[] { "Button_1", "Button_2", "Button_3" }[i])));
        i += 1;
        break;
        label272:
        localObject[i].setVisibility(0);
        localObject[i].setText(this.buttonTexts[i]);
        i += 1;
        break label201;
      }
      localObject[i].setOnClickListener(this.buttonOCLs[i]);
      i += 1;
    }
  }
  
  private void setButtonOCL(int paramInt, DialogOnClickListener paramDialogOnClickListener)
  {
    if ((this.buttonOCLs != null) && (this.buttonOCLs.length > paramInt) && (paramInt >= 0)) {
      this.buttonOCLs[paramInt] = paramDialogOnClickListener;
    }
  }
  
  private void setButtonText(int paramInt, String paramString)
  {
    if ((this.buttonTexts != null) && (this.buttonTexts.length > paramInt) && (paramInt >= 0)) {
      this.buttonTexts[paramInt] = paramString;
    }
  }
  
  private View showMy(String paramString)
  {
    this.mParser = new UIParser(this.mContext);
    return this.mParser.Start(paramString);
  }
  
  public void dismiss()
  {
    unBind();
    com.kt.olleh.inapp.Purchase.Dialog_Mode = -1;
    super.dismiss();
  }
  
  public void setButton(int paramInt, String paramString, DialogOnClickListener paramDialogOnClickListener)
  {
    setButtonText(paramInt, paramString);
    setButtonOCL(paramInt, paramDialogOnClickListener);
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.title = ((String)paramCharSequence);
  }
  
  public void show()
  {
    create();
    super.show();
  }
  
  public void unBind()
  {
    int i;
    if (this.buttonTexts != null)
    {
      i = 0;
      if (i >= this.buttonTexts.length) {
        this.buttonTexts = null;
      }
    }
    else if (this.buttonOCLs != null)
    {
      i = 0;
    }
    for (;;)
    {
      if (i >= this.buttonOCLs.length)
      {
        this.buttonOCLs = null;
        return;
        this.buttonTexts[i] = null;
        i += 1;
        break;
      }
      this.buttonOCLs[i] = null;
      i += 1;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.dialog.DialogAlert
 * JD-Core Version:    0.7.0.1
 */