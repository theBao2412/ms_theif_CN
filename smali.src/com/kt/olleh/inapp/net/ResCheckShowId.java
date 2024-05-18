package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResCheckShowId
  extends Response
{
  public String mSeq_key = null;
  public String mShow_id = null;
  
  public void clear()
  {
    this.mSeq_key = null;
    this.mShow_id = null;
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
    } while (!str.equalsIgnoreCase("show_id"));
    this.mShow_id = getValue(paramNode);
    toString();
    return true;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "app_id", this.mSeq_key);
    Util.addString(localStringBuffer, "show_id", this.mShow_id);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResCheckShowId
 * JD-Core Version:    0.7.0.1
 */