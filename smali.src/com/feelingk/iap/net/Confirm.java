package com.feelingk.iap.net;

public class Confirm
  extends Header
{
  private byte resultCode;
  
  public byte getResultCode()
  {
    return this.resultCode;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    this.resultCode = paramArrayOfByte[12];
  }
  
  public void setResultCode(byte paramByte)
  {
    this.resultCode = paramByte;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.Confirm
 * JD-Core Version:    0.7.0.1
 */