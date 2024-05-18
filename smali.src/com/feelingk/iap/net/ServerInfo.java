package com.feelingk.iap.net;

public class ServerInfo
{
  private final int DEFAULT_PORT = -1;
  private String host = null;
  private int port = -1;
  
  public ServerInfo(String paramString)
  {
    this.host = paramString;
    this.port = -1;
  }
  
  public ServerInfo(String paramString, int paramInt)
  {
    this.host = paramString;
    this.port = paramInt;
  }
  
  public String getHostAddress()
  {
    return this.host;
  }
  
  public int getPort()
  {
    return this.port;
  }
  
  public String toString()
  {
    return "Host: " + this.host + ", Port: " + this.port;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.ServerInfo
 * JD-Core Version:    0.7.0.1
 */