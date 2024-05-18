package com.kt.olleh.inapp.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.kt.olleh.inapp.util.UIParser;

public class DialogSelect
  extends Dialog
{
  private Context mContext;
  private DialogOnClickListener mItemListener = null;
  private DialogOnClickListener mListener = null;
  UIParser mParser;
  
  public DialogSelect(Context paramContext)
  {
    super(paramContext, 16973840);
    this.mContext = paramContext;
    this.mListener = null;
    this.mItemListener = null;
  }
  
  private void create()
  {
    setContentView(showMy("/layout/dialog_select.xml"));
    Object localObject = getWindow().getAttributes();
    ((WindowManager.LayoutParams)localObject).dimAmount = 0.7F;
    getWindow().setAttributes((WindowManager.LayoutParams)localObject);
    getWindow().addFlags(2);
    localObject = (TextView)findViewById(this.mParser.getID("btn_select_1"));
    ((TextView)localObject).setClickable(true);
    ((TextView)localObject).setTag("1");
    ((TextView)localObject).setOnClickListener(this.mItemListener);
    localObject = (TextView)findViewById(this.mParser.getID("btn_select_2"));
    ((TextView)localObject).setClickable(true);
    ((TextView)localObject).setTag("2");
    ((TextView)localObject).setOnClickListener(this.mItemListener);
    ((Button)findViewById(this.mParser.getID("btn_ok"))).setOnClickListener(this.mListener);
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
  
  public void setOnCancelListener(DialogOnClickListener paramDialogOnClickListener)
  {
    this.mListener = paramDialogOnClickListener;
  }
  
  public void setOnItemClickListener(DialogOnClickListener paramDialogOnClickListener)
  {
    this.mItemListener = paramDialogOnClickListener;
  }
  
  public void show()
  {
    create();
    super.show();
  }
  
  public void unBind()
  {
    if (this.mListener != null) {
      this.mListener = null;
    }
    if (this.mParser != null)
    {
      this.mParser.clear();
      this.mParser = null;
    }
    this.mItemListener = null;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.dialog.DialogSelect
 * JD-Core Version:    0.7.0.1
 */