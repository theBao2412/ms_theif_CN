package com.Nexon.MapleThief;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class KeyboardDialog
  extends Dialog
{
  private EditText m_Edit;
  private InputMethodManager m_InputMethodManager;
  
  public KeyboardDialog(Context paramContext)
  {
    super(paramContext);
    this.m_InputMethodManager = ((InputMethodManager)paramContext.getSystemService("input_method"));
  }
  
  public String GetResult()
  {
    return this.m_Edit.getText().toString();
  }
  
  public void SetTitle(String paramString)
  {
    setTitle(paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    setTitle("Keyboard Dialog");
    this.m_Edit = ((EditText)findViewById(2131099650));
    this.m_Edit.setInputType(1);
    this.m_Edit.setImeOptions(6);
    this.m_Edit.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 6) {
          KeyboardDialog.this.dismiss();
        }
        return false;
      }
    });
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        KeyboardDialog.this.m_InputMethodManager.showSoftInput(KeyboardDialog.this.m_Edit, 0);
      }
    }, 150L);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.KeyboardDialog
 * JD-Core Version:    0.7.0.1
 */