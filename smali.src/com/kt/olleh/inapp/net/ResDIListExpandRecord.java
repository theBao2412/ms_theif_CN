package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ResDIListExpandRecord
  implements ResTags
{
  private String mDi_id = null;
  private String mDi_title = null;
  private String mGift_flag = null;
  private String mPrice = null;
  
  public void clear()
  {
    this.mGift_flag = null;
    this.mDi_title = null;
    this.mDi_id = null;
    this.mPrice = null;
  }
  
  public String getDiID()
  {
    return this.mDi_id;
  }
  
  public String getDiTitle()
  {
    return this.mDi_title;
  }
  
  public String getGiftFlag()
  {
    return this.mGift_flag;
  }
  
  public String getPrice()
  {
    return this.mPrice;
  }
  
  public boolean searchListTag(Node paramNode)
  {
    if (paramNode == null) {}
    String str;
    do
    {
      do
      {
        return false;
        str = paramNode.getNodeName();
      } while (str == null);
      if (str.equalsIgnoreCase("gift_flag"))
      {
        setGiftFlag(Response.getValue(paramNode));
        return true;
      }
      if (str.equalsIgnoreCase("di_title"))
      {
        setDiTitle(Response.getValue(paramNode));
        return true;
      }
      if (str.equalsIgnoreCase("di_id"))
      {
        setDiID(Response.getValue(paramNode));
        return true;
      }
    } while (!str.equalsIgnoreCase("price"));
    setPrice(Response.getValue(paramNode));
    return true;
  }
  
  public void searchRecordTag(NodeList paramNodeList)
  {
    int j = paramNodeList.getLength();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      searchListTag(paramNodeList.item(i));
      i += 1;
    }
  }
  
  public void setDiID(String paramString)
  {
    this.mDi_id = paramString;
  }
  
  public void setDiTitle(String paramString)
  {
    this.mDi_title = paramString;
  }
  
  public void setGiftFlag(String paramString)
  {
    this.mGift_flag = paramString;
  }
  
  public void setPrice(String paramString)
  {
    this.mPrice = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Util.addString(localStringBuffer, "gift_flag", getGiftFlag());
    Util.addString(localStringBuffer, "di_title", getDiTitle());
    Util.addString(localStringBuffer, "di_id", getDiID());
    Util.addString(localStringBuffer, "price", getPrice());
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResDIListExpandRecord
 * JD-Core Version:    0.7.0.1
 */