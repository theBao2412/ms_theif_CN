package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;
import java.io.UnsupportedEncodingException;

public class AutoPurchaseDismissCheckConfirm
  extends MsgConfirm
{
  private String mDismissCount;
  private int mDismissCountLength;
  private String mDismissInfo;
  
  public String getmDismissCount()
  {
    return this.mDismissCount;
  }
  
  public int getmDismissCountLength()
  {
    return this.mDismissCountLength;
  }
  
  public String getmDismissInfo()
  {
    return this.mDismissInfo;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    try
    {
      byte[] arrayOfByte = new byte[1];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, 1);
      this.mDismissInfo = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("24시간 이내 해지 여부", "mDismissInfo: " + this.mDismissInfo);
      i += 1;
      System.arraycopy(paramArrayOfByte, i, new byte[1], 0, 1);
      this.mDismissCountLength = paramArrayOfByte[i];
      CommonF.LOGGER.i("동월 내 해지 횟수 Length", "mDismissCountLength: " + this.mDismissCountLength);
      arrayOfByte = new byte[this.mDismissCountLength];
      System.arraycopy(paramArrayOfByte, i + 1, arrayOfByte, 0, this.mDismissCountLength);
      this.mDismissCount = new String(arrayOfByte, "MS949").trim();
      CommonF.LOGGER.i("동월 내 해지 횟수", "mDismissCount: " + this.mDismissCount);
      return;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.AutoPurchaseDismissCheckConfirm
 * JD-Core Version:    0.7.0.1
 */