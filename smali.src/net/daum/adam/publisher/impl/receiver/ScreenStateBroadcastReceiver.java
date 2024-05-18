package net.daum.adam.publisher.impl.receiver;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import net.daum.adam.publisher.AdView;
import net.daum.adam.publisher.impl.e;

public class ScreenStateBroadcastReceiver
  extends AbstractBroadcastReceiver
{
  private static final String b = "ScreenStateBroadcastReceiver";
  private AdView c = null;
  
  public ScreenStateBroadcastReceiver(Context paramContext, AdView paramAdView)
  {
    super(paramContext);
    this.c = paramAdView;
  }
  
  public void b()
  {
    try
    {
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
      localIntentFilter.addAction("android.intent.action.USER_PRESENT");
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      this.a.registerReceiver(this, localIntentFilter);
      e.b("ScreenStateBroadcastReceiver", "registered successfully");
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.b("ScreenStateBroadcastReceiver", "Cannot be registered.");
      }
    }
  }
  
  public void c()
  {
    try
    {
      if (this.a != null) {
        this.a.unregisterReceiver(this);
      }
      e.b("ScreenStateBroadcastReceiver", "unregistered");
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.b("ScreenStateBroadcastReceiver", localException.toString());
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (paramContext.equals("android.intent.action.SCREEN_OFF"))
    {
      e.b("ScreenStateBroadcastReceiver", "Screen Off");
      if (a() != null) {
        a().onStateChange(false);
      }
    }
    do
    {
      do
      {
        return;
      } while (((!this.c.hasWindowFocus()) || (!paramContext.equals("android.intent.action.SCREEN_ON"))) && (!paramContext.equals("android.intent.action.USER_PRESENT")));
      e.b("ScreenStateBroadcastReceiver", "Screen On");
    } while (a() == null);
    a().onStateChange(true);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.receiver.ScreenStateBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */