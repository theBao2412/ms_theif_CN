package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class SellerInfoConfirm
  extends MsgConfirm
{
  static final String TAG = "SellerInfoConfirm";
  private String mCompanyName;
  private String mSeller;
  private String mSellerEmail;
  private String mSellerName;
  private String mSellerPhoneNumber = null;
  
  public String getmCompanyName()
  {
    return this.mCompanyName;
  }
  
  public String getmSeller()
  {
    return this.mSeller;
  }
  
  public String getmSellerEmail()
  {
    return this.mSellerEmail;
  }
  
  public String getmSellerName()
  {
    return this.mSellerName;
  }
  
  public String getmSellerPhoneNumber()
  {
    return this.mSellerPhoneNumber;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    try
    {
      CommonF.LOGGER.i("SellerInfoConfirm", "SellerInfoConfirm result code : " + getResultCode());
      byte[] arrayOfByte = new byte[8];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 8);
      this.mSeller = new String(arrayOfByte, "MS949").trim();
      int j = i + 8;
      CommonF.LOGGER.i("SellerInfoConfirm", "mSeller: " + this.mSeller);
      i = paramArrayOfByte[j];
      CommonF.LOGGER.i("SellerInfoConfirm", "mSellerName[offset]: " + paramArrayOfByte[j]);
      j += 1;
      arrayOfByte = new byte[i & 0xFF];
      System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, arrayOfByte.length);
      this.mSellerName = new String(arrayOfByte, "MS949").trim();
      j += arrayOfByte.length;
      CommonF.LOGGER.i("SellerInfoConfirm", "mSellerName: " + this.mSellerName);
      i = paramArrayOfByte[j];
      CommonF.LOGGER.i("SellerInfoConfirm", "_emailLen[offset]: " + paramArrayOfByte[j]);
      j += 1;
      arrayOfByte = new byte[i & 0xFF];
      System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, arrayOfByte.length);
      this.mSellerEmail = new String(arrayOfByte, "MS949").trim();
      j += arrayOfByte.length;
      CommonF.LOGGER.i("SellerInfoConfirm", "mSellerEmail: " + this.mSellerEmail);
      i = paramArrayOfByte[j];
      CommonF.LOGGER.i("SellerInfoConfirm", "_companyName[offset]: " + paramArrayOfByte[j]);
      j += 1;
      arrayOfByte = new byte[i & 0xFF];
      System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, arrayOfByte.length);
      this.mCompanyName = new String(arrayOfByte, "MS949").trim();
      j += arrayOfByte.length;
      CommonF.LOGGER.i("SellerInfoConfirm", "mCompanyName: " + this.mCompanyName);
      i = paramArrayOfByte[j];
      CommonF.LOGGER.i("SellerInfoConfirm", "_sellerPhoneNumber[offset]: " + paramArrayOfByte[j]);
      j += 1;
      arrayOfByte = new byte[i & 0xFF];
      System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, arrayOfByte.length);
      this.mSellerPhoneNumber = new String(arrayOfByte, "MS949").trim();
      i = arrayOfByte.length;
      CommonF.LOGGER.i("SellerInfoConfirm", "mSellerPhoneNumber: " + this.mSellerPhoneNumber);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      CommonF.LOGGER.e("SellerInfoConfirm", "[SellerInfoConfirm] :" + paramArrayOfByte.toString());
      setResultCode((byte)-10);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.SellerInfoConfirm
 * JD-Core Version:    0.7.0.1
 */