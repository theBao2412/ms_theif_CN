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

public class DialogPay
  extends Dialog
{
  private int buttonCount = -1;
  private DialogOnClickListener[] buttonOCLs = null;
  private String[] buttonTexts = null;
  private boolean isBgChange = false;
  private boolean isPayInformation = false;
  private boolean isPayMessage = false;
  private boolean isPayNameTitle = false;
  private Context mContext;
  UIParser mParser;
  private String mXML;
  private String message = null;
  private String payMoney = null;
  private String payName1 = null;
  private String payName2 = null;
  private String payType = null;
  private String title = null;
  
  public DialogPay(Context paramContext, int paramInt, String paramString)
  {
    super(paramContext, 16973840);
    this.mContext = paramContext;
    this.buttonCount = paramInt;
    this.mXML = paramString;
    if (this.buttonCount > 0)
    {
      this.buttonTexts = new String[this.buttonCount];
      this.buttonOCLs = new DialogOnClickListener[this.buttonCount];
    }
  }
  
  private void create()
  {
    setContentView(showMy("/layout/dialog_pay.xml"));
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
        break label454;
      }
      if (this.buttonTexts != null)
      {
        i = 0;
        label201:
        if (i < this.buttonCount) {
          break label499;
        }
      }
      if (this.buttonOCLs != null)
      {
        i = 0;
        label218:
        if (i < this.buttonCount) {
          break label525;
        }
      }
    }
    if (this.isPayMessage)
    {
      localObject = (TextView)findViewById(this.mParser.getID("dialog_PayNameTitle"));
      if (!this.isPayNameTitle)
      {
        ((TextView)localObject).setVisibility(8);
        label263:
        localObject = (TextView)findViewById(this.mParser.getID("dialog_PayName1"));
        if (this.payName1 == null) {
          break label552;
        }
        ((TextView)localObject).setText(this.payName1);
        label295:
        localObject = (TextView)findViewById(this.mParser.getID("dialog_PayName2"));
        if (this.payName2 == null) {
          break label561;
        }
        ((TextView)localObject).setText(this.payName2);
        label327:
        localObject = (TextView)findViewById(this.mParser.getID("dialog_PayMoney"));
        if (this.payMoney == null) {
          break label570;
        }
        ((TextView)localObject).setText(this.payMoney);
        label359:
        localObject = (TextView)findViewById(this.mParser.getID("dialog_PayType"));
        if (this.payType == null) {
          break label579;
        }
        ((TextView)localObject).setText(this.payType);
        label391:
        localObject = (LinearLayout)findViewById(this.mParser.getID("dialog_PayMessage"));
        ((LinearLayout)localObject).setVisibility(0);
        if (!this.isBgChange) {
          break label588;
        }
        ((LinearLayout)localObject).setBackgroundResource(17170445);
      }
    }
    for (;;)
    {
      if (!this.isPayInformation) {
        break label621;
      }
      ((LinearLayout)findViewById(this.mParser.getID("dialog_PayInformation"))).setVisibility(0);
      return;
      label454:
      localObject[i] = ((Button)findViewById(this.mParser.getID(new String[] { "Button_1", "Button_2", "Button_3" }[i])));
      i += 1;
      break;
      label499:
      localObject[i].setVisibility(0);
      localObject[i].setText(this.buttonTexts[i]);
      i += 1;
      break label201;
      label525:
      localObject[i].setOnClickListener(this.buttonOCLs[i]);
      i += 1;
      break label218;
      ((TextView)localObject).setVisibility(0);
      break label263;
      label552:
      ((TextView)localObject).setVisibility(8);
      break label295;
      label561:
      ((TextView)localObject).setVisibility(8);
      break label327;
      label570:
      ((TextView)localObject).setVisibility(8);
      break label359;
      label579:
      ((TextView)localObject).setVisibility(8);
      break label391;
      label588:
      ((LinearLayout)localObject).setBackgroundResource(17170443);
      continue;
      ((LinearLayout)findViewById(this.mParser.getID("dialog_PayMessage"))).setVisibility(8);
    }
    label621:
    ((LinearLayout)findViewById(this.mParser.getID("dialog_PayInformation"))).setVisibility(8);
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
  
  public void setBgColor(boolean paramBoolean)
  {
    this.isBgChange = paramBoolean;
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
  
  public void setPayInformation(boolean paramBoolean)
  {
    this.isPayInformation = paramBoolean;
  }
  
  public void setPayMessage(boolean paramBoolean)
  {
    this.isPayMessage = paramBoolean;
  }
  
  public void setPayMoneyMessage(String paramString)
  {
    this.payMoney = paramString;
  }
  
  public void setPayNameMessage(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      this.payName1 = paramString;
      return;
    }
    this.payName2 = paramString;
  }
  
  public void setPayNameTitle(boolean paramBoolean)
  {
    this.isPayNameTitle = paramBoolean;
  }
  
  public void setPayTypeMessage(String paramString)
  {
    this.payType = paramString;
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
 * Qualified Name:     com.kt.olleh.inapp.dialog.DialogPay
 * JD-Core Version:    0.7.0.1
 */