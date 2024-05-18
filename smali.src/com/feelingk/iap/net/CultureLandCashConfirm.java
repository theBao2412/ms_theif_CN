package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class CultureLandCashConfirm
  extends MsgConfirm
{
  static final String TAG = "CultureLandCashConfirm";
  public String cultureAutnName;
  public String cultureLandAuth;
  public String cultureLandCashBalance;
  public String cultureLandUserAuthNum;
  public String cultureLandUserKey;
  
  public String getCultureAutnName()
  {
    return this.cultureAutnName;
  }
  
  public String getCultureLandAuth()
  {
    return this.cultureLandAuth;
  }
  
  public String getCultureLandCashBalance()
  {
    return this.cultureLandCashBalance;
  }
  
  public String getCultureLandUserAuthNum()
  {
    return this.cultureLandUserAuthNum;
  }
  
  public String getCultureLandUserKey()
  {
    return this.cultureLandUserKey;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    try
    {
      CommonF.LOGGER.i("CultureLandCashConfirm", "CultureLandCashConfirm result code : " + getResultCode());
      byte[] arrayOfByte = new byte[12];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 12);
      this.cultureLandUserKey = new String(arrayOfByte, "MS949").trim();
      i += 12;
      CommonF.LOGGER.i("CultureLandCashConfirm", "cultureLandUserKey : " + this.cultureLandUserKey);
      arrayOfByte = new byte[25];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 25);
      i += 25;
      this.cultureLandUserAuthNum = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("CultureLandCashConfirm", "cultureLandUserAuthNum : " + this.cultureLandUserAuthNum);
      arrayOfByte = new byte[6];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 6);
      i += 6;
      this.cultureLandCashBalance = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("CultureLandCashConfirm", "cultureLandCashBalance : " + this.cultureLandCashBalance);
      arrayOfByte = new byte[1];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 1);
      i += 1;
      this.cultureLandAuth = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("CultureLandCashConfirm", "cultureLandAuth : " + this.cultureLandAuth);
      arrayOfByte = new byte[20];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 20);
      this.cultureAutnName = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("CultureLandCashConfirm", "cultureAutnName : " + this.cultureAutnName);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      CommonF.LOGGER.e("CultureLandCashConfirm", "[CultureLandCashConfirm] :" + paramArrayOfByte.toString());
      setResultCode((byte)-10);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.CultureLandCashConfirm
 * JD-Core Version:    0.7.0.1
 */