package net.daum.adam.publisher.impl.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;

public abstract class AbstractBroadcastReceiver
  extends BroadcastReceiver
{
  protected Context a;
  private a b;
  
  public AbstractBroadcastReceiver(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public a a()
  {
    return this.b;
  }
  
  public void a(a parama)
  {
    this.b = parama;
  }
  
  public abstract void b();
  
  public abstract void c();
  
  public static abstract interface a
  {
    public abstract void onStateChange(boolean paramBoolean);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.receiver.AbstractBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */