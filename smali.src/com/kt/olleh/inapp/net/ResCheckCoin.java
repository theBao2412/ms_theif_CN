package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResCheckCoin
  extends Response
{
  public String mAmount = null;
  public String mCoin = null;
  public String mSeq_key = null;
  
  public void clear()
  {
    this.mSeq_key = null;
    this.mCoin = null;
    this.mAmount = null;
    super.clear();
  }
  
  protected boolean searchValueTag(Node paramNode)
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
      if (str.equalsIgnoreCase("seq_key"))
      {
        this.mSeq_key = getValue(paramNode);
        toString();
        return true;
      }
      if (str.equalsIgnoreCase("coin"))
      {
        this.mCoin = getValue(paramNode);
        toString();
        return true;
      }
    } while (!str.equalsIgnoreCase("amount"));
    this.mAmount = getValue(paramNode);
    toString();
    return true;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "seq_key", this.mSeq_key);
    Util.addString(localStringBuffer, "coin", this.mCoin);
    Util.addString(localStringBuffer, "amount", this.mAmount);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResCheckCoin
 * JD-Core Version:    0.7.0.1
 */