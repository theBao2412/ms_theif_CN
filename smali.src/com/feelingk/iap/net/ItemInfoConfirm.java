package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;
import java.io.UnsupportedEncodingException;

public class ItemInfoConfirm
  extends MsgConfirm
{
  private boolean mAfterAutoPurchaseInfoAgree = false;
  private boolean mAutoPurchaseCheck = false;
  private String mDotoriBalance;
  private String mDotoriLinkInfo;
  private boolean mFinalVersionCheck = true;
  private String mItemPrice;
  private String mItemTitle;
  private String mNCMembershipInfo;
  private String mNCMembershipNumber;
  private String mOCBCardNum;
  private int mOCBCardNumLength;
  private String mOCBRegisterInfo;
  private String mPeriod;
  private String mTCash;
  
  public String getItemPeriod()
  {
    return this.mPeriod;
  }
  
  public String getItemPrice()
  {
    return this.mItemPrice;
  }
  
  public String getItemTCash()
  {
    return this.mTCash;
  }
  
  public String getItemTitle()
  {
    return this.mItemTitle;
  }
  
  public boolean getmAfterAutoPurchaseInfoAgree()
  {
    return this.mAfterAutoPurchaseInfoAgree;
  }
  
  public boolean getmAutoPurchaseCheck()
  {
    return this.mAutoPurchaseCheck;
  }
  
  public String getmDotoriBalance()
  {
    return this.mDotoriBalance;
  }
  
  public String getmDotoriLinkInfo()
  {
    return this.mDotoriLinkInfo;
  }
  
  public boolean getmFinalVersionCheck()
  {
    return this.mFinalVersionCheck;
  }
  
  public String getmNCMembershipInfo()
  {
    return this.mNCMembershipInfo;
  }
  
  public String getmNCMembershipNumber()
  {
    return this.mNCMembershipNumber;
  }
  
  public String getmOCBCardNum()
  {
    return this.mOCBCardNum;
  }
  
  public int getmOCBCardNumLength()
  {
    return this.mOCBCardNumLength;
  }
  
  public String getmOCBRegisterInfo()
  {
    return this.mOCBRegisterInfo;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    try
    {
      byte[] arrayOfByte = new byte[30];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 30);
      this.mItemTitle = new String(arrayOfByte, "MS949").trim();
      i += 30;
      CommonF.LOGGER.i("ItemInfoConfirm", "mItemTitle: " + this.mItemTitle);
      arrayOfByte = new byte[10];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 10);
      this.mItemPrice = new String(arrayOfByte, "MS949").trim();
      i += 10;
      CommonF.LOGGER.i("ItemInfoConfirm", "mItemPrice: " + this.mItemPrice);
      arrayOfByte = new byte[10];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 10);
      this.mPeriod = new String(arrayOfByte, "MS949").trim();
      i += 10;
      CommonF.LOGGER.i("ItemInfoConfirm", "mPeriod: " + this.mPeriod);
      arrayOfByte = new byte[10];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 10);
      this.mTCash = new String(arrayOfByte, "MS949").trim();
      i += 10;
      CommonF.LOGGER.i("ItemInfoConfirm", "mTCash: " + this.mTCash);
      arrayOfByte = new byte[1];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 1);
      this.mOCBRegisterInfo = new String(arrayOfByte, "MS949").trim();
      i += 1;
      CommonF.LOGGER.i("ItemInfoConfirm", "mOCBRegisterInfo: " + this.mOCBRegisterInfo);
      System.arraycopy(paramArrayOfByte, i, new byte[1], 0, 1);
      this.mOCBCardNumLength = paramArrayOfByte[i];
      i += 1;
      CommonF.LOGGER.i("ItemInfoConfirm", "mOCBCardNumLength: " + this.mOCBCardNumLength);
      arrayOfByte = new byte[this.mOCBCardNumLength];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, this.mOCBCardNumLength);
      this.mOCBCardNum = new String(arrayOfByte, "MS949").trim();
      i += this.mOCBCardNumLength;
      CommonF.LOGGER.i("ItemInfoConfirm", "mOCBCardNum: " + this.mOCBCardNum);
      arrayOfByte = new byte[1];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 1);
      this.mDotoriLinkInfo = new String(arrayOfByte, "MS949").trim();
      i += 1;
      CommonF.LOGGER.i("ItemInfoConfirm", "mDotoriLinkInfo: " + this.mDotoriLinkInfo);
      arrayOfByte = new byte[1];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 1);
      this.mNCMembershipInfo = new String(arrayOfByte, "MS949").trim();
      i += 1;
      CommonF.LOGGER.i("ItemInfoConfirm", "mNCMembershipInfo: " + this.mNCMembershipInfo);
      arrayOfByte = new byte[11];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 11);
      this.mNCMembershipNumber = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("ItemInfoConfirm", "mNCMembershipNumber: " + this.mNCMembershipNumber);
      arrayOfByte = new byte[6];
      System.arraycopy(paramArrayOfByte, i + 11, arrayOfByte, 0, 6);
      this.mDotoriBalance = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("ItemInfoConfirm", "mDotoriBalance: " + this.mDotoriBalance);
      return;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
  }
  
  public void setmAfterAutoPurchaseInfoAgree(boolean paramBoolean)
  {
    this.mAfterAutoPurchaseInfoAgree = paramBoolean;
  }
  
  public void setmAutoPurchaseCheck(boolean paramBoolean)
  {
    this.mAutoPurchaseCheck = paramBoolean;
  }
  
  public void setmFinalVersionCheck(boolean paramBoolean)
  {
    this.mFinalVersionCheck = paramBoolean;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.ItemInfoConfirm
 * JD-Core Version:    0.7.0.1
 */