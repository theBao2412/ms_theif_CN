package com.feelingk.iap.net;

public class PurchaseParam
{
  private String pBPInfo = null;
  private String pId = null;
  private String pName = null;
  private String pTid = null;
  
  public PurchaseParam(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.pId = paramString1;
    this.pName = paramString2;
    this.pTid = paramString3;
    this.pBPInfo = paramString4;
  }
  
  public String getpBPInfo()
  {
    return this.pBPInfo;
  }
  
  public String getpId()
  {
    return this.pId;
  }
  
  public String getpName()
  {
    return this.pName;
  }
  
  public String getpTid()
  {
    return this.pTid;
  }
  
  public void setpBPInfo(String paramString)
  {
    this.pBPInfo = paramString;
  }
  
  public void setpId(String paramString)
  {
    this.pId = paramString;
  }
  
  public void setpName(String paramString)
  {
    this.pName = paramString;
  }
  
  public void setpTid(String paramString)
  {
    this.pTid = paramString;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.PurchaseParam
 * JD-Core Version:    0.7.0.1
 */