package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;
import java.io.UnsupportedEncodingException;

public class ItemUseConfirm
  extends MsgConfirm
{
  private int itemCount = 0;
  private String itemID = null;
  private String itemName = null;
  
  public int getCount()
  {
    return this.itemCount;
  }
  
  public String getItemID()
  {
    return this.itemID;
  }
  
  public String getItemName()
  {
    return this.itemName;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    localObject = null;
    try
    {
      String str = new String(getMsg(), "MS949");
      localObject = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException2)
    {
      try
      {
        int i;
        this.itemName = new String((byte[])localObject, "MS949").trim();
        CommonF.LOGGER.i("ItemUseConfirm", "itemName : " + this.itemName);
        this.itemCount = paramArrayOfByte[i];
        return;
        localUnsupportedEncodingException2 = localUnsupportedEncodingException2;
        localUnsupportedEncodingException2.printStackTrace();
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        for (;;)
        {
          localUnsupportedEncodingException1.printStackTrace();
        }
      }
    }
    new StringBuilder(String.valueOf(localObject)).append("1").toString();
    i = getMsgLength() + 14;
    localObject = new byte[10];
    System.arraycopy(paramArrayOfByte, i, localObject, 0, 10);
    this.itemID = new String((byte[])localObject);
    i += 10;
    localObject = new byte[30];
    System.arraycopy(paramArrayOfByte, i, localObject, 0, 30);
    i += 30;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.ItemUseConfirm
 * JD-Core Version:    0.7.0.1
 */