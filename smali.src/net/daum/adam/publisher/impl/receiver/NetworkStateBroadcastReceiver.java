package net.daum.adam.publisher.impl.receiver;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import net.daum.adam.publisher.impl.e;

public class NetworkStateBroadcastReceiver
  extends AbstractBroadcastReceiver
{
  private static final String b = "NetworkStateBroadcastReceiver";
  
  public NetworkStateBroadcastReceiver(Context paramContext)
  {
    super(paramContext);
  }
  
  public void b()
  {
    try
    {
      IntentFilter localIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
      this.a.registerReceiver(this, localIntentFilter);
      e.b("NetworkStateBroadcastReceiver", "registered successfully");
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.b("NetworkStateBroadcastReceiver", "Cannot be registered.");
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
      e.b("NetworkStateBroadcastReceiver", "unregistered");
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.b("NetworkStateBroadcastReceiver", localException.toString());
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {}
    for (;;)
    {
      return;
      boolean bool = paramIntent.getBooleanExtra("noConnectivity", false);
      paramContext = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
      if (!bool)
      {
        if ((paramContext.getType() == 0) || (paramContext.getType() == 1))
        {
          if (paramContext.getType() == 0) {
            e.b("NetworkStateBroadcastReceiver", "3G Network has been connected.");
          }
          while (a() != null)
          {
            a().onStateChange(true);
            return;
            e.b("NetworkStateBroadcastReceiver", "WIFI Network has been connected.");
          }
        }
      }
      else if ((paramContext.getType() == 0) || (paramContext.getType() == 1))
      {
        if (paramContext.getType() == 0) {
          e.b("NetworkStateBroadcastReceiver", "3G Network has been disconnected.");
        }
        while (a() != null)
        {
          a().onStateChange(true);
          return;
          e.b("NetworkStateBroadcastReceiver", "WIFI Network has been disconnected.");
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.receiver.NetworkStateBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */