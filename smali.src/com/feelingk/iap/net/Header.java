package com.feelingk.iap.net;

public class Header
{
  public final int HEADER_SIZE = 12;
  private int mHeaderDataLength;
  private byte[] mHeaderSpecifier = new byte[2];
  
  public int getDataLength()
  {
    return this.mHeaderDataLength;
  }
  
  public byte[] getSpecifier()
  {
    return this.mHeaderSpecifier;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    System.arraycopy(paramArrayOfByte, 0, this.mHeaderSpecifier, 0, 2);
    byte[] arrayOfByte = new byte[10];
    System.arraycopy(paramArrayOfByte, 2, arrayOfByte, 0, 10);
    this.mHeaderDataLength = (Integer.parseInt(new String(arrayOfByte).trim()) - 1);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.Header
 * JD-Core Version:    0.7.0.1
 */