package com.feelingk.iap.net;

public class DataPacket
  extends Confirm
{
  private byte[] data;
  
  public byte[] getData()
  {
    return this.data;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = paramArrayOfByte.length - 12;
    this.data = new byte[i];
    System.arraycopy(paramArrayOfByte, 12, this.data, 0, i);
  }
  
  public void setHeader(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.DataPacket
 * JD-Core Version:    0.7.0.1
 */