package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResGetSymKeyGen
  extends Response
{
  public String mSeq_key = null;
  public String mSymmetric_key = null;
  
  public void clear()
  {
    this.mSymmetric_key = null;
    this.mSeq_key = null;
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
      if (str.equalsIgnoreCase("symmetric_key"))
      {
        this.mSymmetric_key = getValue(paramNode);
        return true;
      }
    } while (!str.equalsIgnoreCase("seq_key"));
    this.mSeq_key = getValue(paramNode);
    return true;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "symmetric_key", this.mSymmetric_key);
    Util.addString(localStringBuffer, "seq_key", this.mSeq_key);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResGetSymKeyGen
 * JD-Core Version:    0.7.0.1
 */