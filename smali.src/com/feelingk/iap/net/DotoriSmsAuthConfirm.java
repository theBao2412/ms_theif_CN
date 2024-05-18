package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class DotoriSmsAuthConfirm
  extends MsgConfirm
{
  private String mobileSign;
  private int mobileSign_Len = 0;
  private String signData;
  private int signData_Len = 0;
  
  public String getMobileSign()
  {
    return this.mobileSign;
  }
  
  public String getSignData()
  {
    return this.signData;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    this.mobileSign_Len = (paramArrayOfByte[i] & 0xFF);
    i += 1;
    byte[] arrayOfByte = new byte[this.mobileSign_Len];
    System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, arrayOfByte.length);
    i += arrayOfByte.length;
    try
    {
      this.mobileSign = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.e("DotoriSmsAuthConfirm", "mobileSign: " + this.mobileSign);
      this.signData_Len = (paramArrayOfByte[i] & 0xFF);
      i += 1;
      arrayOfByte = new byte[this.signData_Len];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, arrayOfByte.length);
      i = arrayOfByte.length;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          this.signData = new String(arrayOfByte, "MS949").trim();
          CommonF.LOGGER.e("DotoriSmsAuthConfirm", "signData: " + this.signData);
          return;
        }
        catch (Exception paramArrayOfByte)
        {
          CommonF.LOGGER.i("DotoriSmsAuthConfirm", paramArrayOfByte.toString());
        }
        localException = localException;
        CommonF.LOGGER.i("DotoriSmsAuthConfirm", localException.toString());
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.DotoriSmsAuthConfirm
 * JD-Core Version:    0.7.0.1
 */