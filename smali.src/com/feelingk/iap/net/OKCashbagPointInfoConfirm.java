package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class OKCashbagPointInfoConfirm
  extends MsgConfirm
{
  static final String TAG = "OKCashbagPointInfoConfirm";
  public String OCBPointBalance;
  
  public String getOCBPointBalance()
  {
    return this.OCBPointBalance;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    try
    {
      CommonF.LOGGER.i("OKCashbagPointInfoConfirm", "OKCashbagPointInfoConfirm result code : " + getResultCode());
      byte[] arrayOfByte = new byte[6];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 6);
      this.OCBPointBalance = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("OKCashbagPointInfoConfirm", "OCBPointBalance: " + this.OCBPointBalance);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      CommonF.LOGGER.e("OKCashbagPointInfoConfirm", "[OKCashbagPointInfoConfirm] :" + paramArrayOfByte.toString());
      setResultCode((byte)-10);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.OKCashbagPointInfoConfirm
 * JD-Core Version:    0.7.0.1
 */