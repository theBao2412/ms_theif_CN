package net.daum.adam.publisher.impl.receiver;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import net.daum.adam.publisher.impl.e;

public class BatteryStateBroadcastReceiver
  extends AbstractBroadcastReceiver
{
  private static final String b = "BatteryStateBroadcastReceiver";
  
  public BatteryStateBroadcastReceiver(Context paramContext)
  {
    super(paramContext);
  }
  
  public void b()
  {
    try
    {
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.BATTERY_LOW");
      this.a.registerReceiver(this, localIntentFilter);
      e.b("BatteryStateBroadcastReceiver", "registered successfully");
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.b("BatteryStateBroadcastReceiver", "Cannot be registered.");
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
      e.b("BatteryStateBroadcastReceiver", "unregistered");
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.b("BatteryStateBroadcastReceiver", localException.toString());
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    boolean bool = true;
    if (paramContext.equals("android.intent.action.BATTERY_LOW"))
    {
      e.b("BatteryStateBroadcastReceiver", "Battery Low!");
      bool = false;
    }
    if (a() != null) {
      a().onStateChange(bool);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.receiver.BatteryStateBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */