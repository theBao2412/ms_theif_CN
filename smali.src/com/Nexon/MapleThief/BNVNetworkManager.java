package com.Nexon.MapleThief;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

public class BNVNetworkManager
{
  private static final String TAG = "Debug_Android";
  private ConnectivityManager m_ConnectivityManager;
  
  public BNVNetworkManager(ConnectivityManager paramConnectivityManager)
  {
    this.m_ConnectivityManager = paramConnectivityManager;
  }
  
  private boolean Check()
  {
    if (this.m_ConnectivityManager == null)
    {
      Log.e("Debug_Android", "[BNVNetworkManager] Not found ConnectivityManager ! \n");
      return false;
    }
    return true;
  }
  
  public boolean IsOnline()
  {
    if (!Check()) {}
    NetworkInfo localNetworkInfo;
    do
    {
      return false;
      localNetworkInfo = this.m_ConnectivityManager.getActiveNetworkInfo();
    } while ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    return true;
  }
  
  public boolean IsOnlineMobile()
  {
    if (!Check()) {}
    NetworkInfo localNetworkInfo;
    do
    {
      return false;
      localNetworkInfo = this.m_ConnectivityManager.getNetworkInfo(0);
    } while ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    return true;
  }
  
  public boolean IsOnlineWifi()
  {
    if (!Check()) {}
    NetworkInfo localNetworkInfo;
    do
    {
      return false;
      localNetworkInfo = this.m_ConnectivityManager.getNetworkInfo(1);
    } while ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    return true;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.BNVNetworkManager
 * JD-Core Version:    0.7.0.1
 */