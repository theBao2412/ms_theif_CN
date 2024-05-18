package com.feelingk.iap.net;

import java.io.UnsupportedEncodingException;

public class ItemWholeAuthConfirm
  extends MsgConfirm
{
  private int itemAuthCount = 0;
  private ItemAuth[] items = null;
  
  public int getItemAuthCount()
  {
    return this.itemAuthCount;
  }
  
  public ItemAuth[] getItems()
  {
    return this.items;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    int i = getMsgLength() + 14;
    this.itemAuthCount = paramArrayOfByte[i];
    int j = i + 1;
    this.items = new ItemAuth[this.itemAuthCount];
    i = 0;
    for (;;)
    {
      if (i >= this.itemAuthCount) {
        return;
      }
      this.items[i] = new ItemAuth();
      byte[] arrayOfByte = new byte[10];
      System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, 10);
      this.items[i].pId = new String(arrayOfByte);
      j += 10;
      arrayOfByte = new byte[30];
      System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, 30);
      j += 30;
      try
      {
        this.items[i].pName = new String(arrayOfByte, "MS949").trim();
        i += 1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          localUnsupportedEncodingException.printStackTrace();
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.ItemWholeAuthConfirm
 * JD-Core Version:    0.7.0.1
 */