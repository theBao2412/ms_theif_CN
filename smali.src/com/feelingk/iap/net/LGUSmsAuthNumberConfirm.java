package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class LGUSmsAuthNumberConfirm
  extends MsgConfirm
{
  private String authKey;
  private int key_Len = 0;
  
  public String getAuthKey()
  {
    return this.authKey;
  }
  
  public int getKey_Len()
  {
    return this.key_Len;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    this.key_Len = (paramArrayOfByte[i] & 0xFF);
    i += 1;
    byte[] arrayOfByte = new byte[this.key_Len];
    System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, arrayOfByte.length);
    i = arrayOfByte.length;
    try
    {
      this.authKey = new String(arrayOfByte, "MS949").trim();
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      CommonF.LOGGER.i("IAPNet", "[LGUSmsAuthNumberConfirm] :" + paramArrayOfByte.toString());
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.LGUSmsAuthNumberConfirm
 * JD-Core Version:    0.7.0.1
 */