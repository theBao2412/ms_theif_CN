package com.kaf;

import android.content.Context;
import com.kaf.app.IAppManager;
import com.kaf.app.IAppManager.ServiceConnectionListener;
import com.kaf.app.IPackageManager;
import com.kaf.contentsbox.ICertificateRepositoryManager;
import com.kaf.contentsbox.ICertificateRepositoryManager.ServiceConnectionListener;
import com.kaf.contentsbox.IContentsBoxManager;
import com.kaf.contentsbox.IContentsBoxManager.ServiceConnectionListener;
import com.kaf.device.IDeviceControl;
import com.kaf.display.IDisplayManager;
import com.kaf.log.IDebug;
import com.kaf.media.IMediaManager;
import com.kaf.net.IBcmSocket;
import com.kaf.net.INetwork;
import com.kaf.sound.ISound;
import com.kaf.sys.IProperty;
import java.lang.reflect.Method;
import java.net.InetAddress;

public abstract class IKafManager
{
  public static IKafManager getInstance()
  {
    return null;
  }
  
  public int Initialize(Context paramContext, int paramInt)
  {
    return 0;
  }
  
  public void checkInit(int paramInt) {}
  
  public String getAppId()
  {
    return null;
  }
  
  public IAppManager getAppManager(Context paramContext)
  {
    return null;
  }
  
  public IAppManager getAppManager(Context paramContext, Object paramObject, Method paramMethod, IAppManager.ServiceConnectionListener paramServiceConnectionListener)
  {
    return null;
  }
  
  public IBcmSocket getBcmSocket()
  {
    return null;
  }
  
  public IBcmSocket getBcmSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2, String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    return null;
  }
  
  public ICertificateRepositoryManager getCertificateRepositoryManager(Context paramContext)
  {
    return null;
  }
  
  public ICertificateRepositoryManager getCertificateRepositoryManager(Context paramContext, ICertificateRepositoryManager.ServiceConnectionListener paramServiceConnectionListener)
  {
    return null;
  }
  
  public IContentsBoxManager getContentsBoxManager(Context paramContext)
  {
    return null;
  }
  
  public IContentsBoxManager getContentsBoxManager(Context paramContext, IContentsBoxManager.ServiceConnectionListener paramServiceConnectionListener)
  {
    return null;
  }
  
  public IDebug getDebug()
  {
    return null;
  }
  
  public IDeviceControl getDeviceControl()
  {
    return null;
  }
  
  public IDisplayManager getDisplayManager()
  {
    return null;
  }
  
  public IMediaManager getMediaManager()
  {
    return null;
  }
  
  public INetwork getNetwork()
  {
    return null;
  }
  
  public INetwork getNetworkInstance()
  {
    return null;
  }
  
  public IPackageManager getPackageManager(Context paramContext)
  {
    return null;
  }
  
  public IProperty getProperty()
  {
    return null;
  }
  
  public ISound getSound()
  {
    return null;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.IKafManager
 * JD-Core Version:    0.7.0.1
 */