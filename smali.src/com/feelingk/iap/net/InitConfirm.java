package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class InitConfirm
  extends MsgConfirm
{
  static final String TAG = "InitConfirm";
  private byte[] ExpireDate;
  private byte[] eToken;
  private int nCount = 0;
  private int nTokenLength = 0;
  
  public int getCount()
  {
    return this.nCount;
  }
  
  public byte[] getExpireDate()
  {
    return this.ExpireDate;
  }
  
  public byte[] getToken()
  {
    return this.eToken;
  }
  
  public int getTokenLength()
  {
    return this.nTokenLength;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int k = getMsgLength() + 14;
    try
    {
      CommonF.LOGGER.i("InitConfirm", "InitConfirm result code : " + getResultCode());
      int j = k + 1;
      int i = j;
      setResultCode((byte)-10);
    }
    catch (Exception paramArrayOfByte)
    {
      try
      {
        this.nCount = paramArrayOfByte[k];
        i = j;
        this.ExpireDate = new byte[14];
        i = j;
        System.arraycopy(paramArrayOfByte, j, this.ExpireDate, 0, 14);
        k = j + 14;
        j = k + 1;
        i = j;
        this.nTokenLength = paramArrayOfByte[k];
        i = j;
        if (this.nTokenLength > 4)
        {
          i = j;
          this.eToken = new byte[this.nTokenLength];
          i = j;
          System.arraycopy(paramArrayOfByte, j, this.eToken, 0, this.nTokenLength);
        }
        return;
      }
      catch (Exception paramArrayOfByte)
      {
        break label138;
      }
      paramArrayOfByte = paramArrayOfByte;
    }
    label138:
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.InitConfirm
 * JD-Core Version:    0.7.0.1
 */