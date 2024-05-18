package net.daum.adam.publisher.impl.d;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

public final class a
{
  private static a a = null;
  private String b = null;
  private String c = "확인";
  private String d = "취소";
  private DialogInterface.OnClickListener e = null;
  private DialogInterface.OnClickListener f = null;
  private DialogInterface.OnCancelListener g = null;
  private boolean h = true;
  private AlertDialog i = null;
  private AlertDialog.Builder j = null;
  private DialogInterface.OnClickListener k = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      a.a().b();
    }
  };
  
  private a(String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, DialogInterface.OnCancelListener paramOnCancelListener, boolean paramBoolean)
  {
    this.b = paramString;
    this.e = paramOnClickListener1;
    this.f = paramOnClickListener2;
    this.g = paramOnCancelListener;
    this.h = paramBoolean;
  }
  
  public static a a()
  {
    if (a == null) {
      a = a(null, null, null, null, true);
    }
    return a;
  }
  
  public static a a(String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(null, null, null, null, true);
  }
  
  public static a a(String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, DialogInterface.OnCancelListener paramOnCancelListener, boolean paramBoolean)
  {
    if (a == null) {
      a = new a(paramString, paramOnClickListener1, paramOnClickListener2, paramOnCancelListener, paramBoolean);
    }
    return a;
  }
  
  public a a(Context paramContext)
  {
    if ((this.i == null) || (this.i.getContext() != paramContext))
    {
      this.j = new AlertDialog.Builder(paramContext);
      this.j = new AlertDialog.Builder(paramContext);
      if (this.b != null) {
        this.j.setMessage(this.b);
      }
      if (this.e == null) {
        break label162;
      }
      this.j.setPositiveButton(this.c, this.e);
      label84:
      if (this.f != null) {
        this.j.setNegativeButton(this.d, this.f);
      }
      if (this.g == null) {
        break label179;
      }
      this.j.setOnCancelListener(this.g);
    }
    for (;;)
    {
      this.j.setCancelable(this.h);
      this.i = this.j.create();
      return this;
      paramContext = this.i.getContext();
      break;
      label162:
      this.j.setPositiveButton("확인", this.k);
      break label84;
      label179:
      this.j.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          a.a().b();
        }
      });
    }
  }
  
  public a a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.g = paramOnCancelListener;
    return this;
  }
  
  public a a(String paramString)
  {
    this.b = paramString;
    return this;
  }
  
  public a a(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() >= 1) {}
    }
    else
    {
      str = "확인";
    }
    this.c = str;
    this.e = paramOnClickListener;
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }
  
  public a b(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() >= 1) {}
    }
    else
    {
      str = "취소";
    }
    this.d = str;
    this.f = paramOnClickListener;
    return this;
  }
  
  public void b()
  {
    if (this.i != null)
    {
      this.i.dismiss();
      this.i = null;
    }
    this.b = null;
    this.c = "확인";
    this.d = "취소";
    this.e = null;
    this.f = null;
    this.h = true;
  }
  
  public AlertDialog c()
  {
    return this.i;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.d.a
 * JD-Core Version:    0.7.0.1
 */