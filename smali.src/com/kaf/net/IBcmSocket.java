package com.kaf.net;

import java.net.InetAddress;
import java.net.SocketAddress;

public abstract class IBcmSocket
{
  public IBcmSocket() {}
  
  public IBcmSocket(InetAddress paramInetAddress, int paramInt, String paramString1, String paramString2, char paramChar, boolean paramBoolean) {}
  
  public IBcmSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2, String paramString1, String paramString2, char paramChar, boolean paramBoolean) {}
  
  public void close() {}
  
  public boolean connect(SocketAddress paramSocketAddress, String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    return false;
  }
  
  public boolean connect(SocketAddress paramSocketAddress, String paramString1, String paramString2, char paramChar, boolean paramBoolean, int paramInt)
  {
    return false;
  }
  
  public InetAddress getInetAddress()
  {
    return null;
  }
  
  public boolean getKeepAlive()
  {
    return false;
  }
  
  public InetAddress getLocalAddress()
  {
    return null;
  }
  
  public int getLocalPort()
  {
    return -1;
  }
  
  public SocketAddress getLocalSocketAddress()
  {
    return null;
  }
  
  public int getPort()
  {
    return -1;
  }
  
  public int getReceiveBufferSize()
  {
    return -1;
  }
  
  public SocketAddress getRemoteSocketAddress()
  {
    return null;
  }
  
  public boolean getReuseAddress()
  {
    return false;
  }
  
  public int getSendBufferSize()
  {
    return -1;
  }
  
  public int getSoLinger()
  {
    return -1;
  }
  
  public int getSoTimeout()
  {
    return -1;
  }
  
  public boolean getTcpNoDelay()
  {
    return false;
  }
  
  public boolean isClosed()
  {
    return false;
  }
  
  public boolean isConnected()
  {
    return false;
  }
  
  public boolean isInputShutdown()
  {
    return false;
  }
  
  public boolean isOutputShutdown()
  {
    return false;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return -1;
  }
  
  public void setKeepAlive(boolean paramBoolean) {}
  
  public void setReceiveBufferSize(int paramInt) {}
  
  public void setReuseAddress(boolean paramBoolean) {}
  
  public void setSendBufferSize(int paramInt) {}
  
  public void setSoLinger(boolean paramBoolean, int paramInt) {}
  
  public void setSoTimeout(int paramInt) {}
  
  public void setTcpNoDelay(boolean paramBoolean) {}
  
  public void shutdownInput() {}
  
  public void shutdownOutput() {}
  
  public String toString()
  {
    return null;
  }
  
  public int write(byte[] paramArrayOfByte)
  {
    return -1;
  }
  
  public int write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return -1;
  }
  
  public int write(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return -1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.net.IBcmSocket
 * JD-Core Version:    0.7.0.1
 */