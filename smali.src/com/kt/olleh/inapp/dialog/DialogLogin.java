package com.kt.olleh.inapp.dialog;

import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import com.kt.olleh.inapp.util.UIParser;

public class DialogLogin
  extends Dialog
{
  private Context mContext;
  private DialogOnClickListener[] mListener = null;
  UIParser mParser;
  
  public DialogLogin(Context paramContext)
  {
    super(paramContext, 16973840);
    this.mContext = paramContext;
    this.mListener = new DialogOnClickListener[2];
  }
  
  private void create()
  {
    setContentView(showMy("/layout/dialog_login.xml"));
    Object localObject = getWindow().getAttributes();
    ((WindowManager.LayoutParams)localObject).dimAmount = 0.7F;
    getWindow().setAttributes((WindowManager.LayoutParams)localObject);
    getWindow().addFlags(2);
    ((EditText)findViewById(this.mParser.getID("login_id"))).setText("");
    ((EditText)findViewById(this.mParser.getID("login_password"))).setTag("");
    localObject = new Button[2];
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "Button_1";
    arrayOfString[1] = "Button_2";
    int i = 0;
    if (i >= localObject.length) {
      if (this.mListener != null) {
        i = 0;
      }
    }
    for (;;)
    {
      if (i >= this.mListener.length)
      {
        return;
        localObject[i] = ((Button)findViewById(this.mParser.getID(arrayOfString[i])));
        i += 1;
        break;
      }
      localObject[i].setOnClickListener(this.mListener[i]);
      i += 1;
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
  
  public String getID()
  {
    return ((EditText)findViewById(this.mParser.getID("login_id"))).getText().toString();
  }
  
  public String getPassword()
  {
    return ((EditText)findViewById(this.mParser.getID("login_id"))).getText().toString();
  }
  
  public void setButton(int paramInt, DialogOnClickListener paramDialogOnClickListener)
  {
    if ((this.mListener != null) && (this.mListener.length > paramInt) && (paramInt >= 0)) {
      this.mListener[paramInt] = paramDialogOnClickListener;
    }
  }
  
  public void show()
  {
    create();
    super.show();
  }
  
  public void unBind()
  {
    int i;
    if (this.mListener != null) {
      i = 0;
    }
    for (;;)
    {
      if (i >= this.mListener.length)
      {
        this.mListener = null;
        return;
      }
      this.mListener[i] = null;
      i += 1;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.dialog.DialogLogin
 * JD-Core Version:    0.7.0.1
 */