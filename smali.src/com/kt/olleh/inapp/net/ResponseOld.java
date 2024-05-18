package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ResponseOld
  implements ResTags
{
  public String mResultCode = null;
  public String mResultMessage = null;
  
  private void ParseResult(NodeList paramNodeList)
  {
    if (paramNodeList == null) {}
    for (;;)
    {
      return;
      int j = paramNodeList.getLength();
      int i = 0;
      while (i < j)
      {
        searchTag(paramNodeList.item(i));
        i += 1;
      }
    }
  }
  
  private String getValue(Node paramNode)
  {
    paramNode = paramNode.getChildNodes();
    if (paramNode == null) {}
    for (;;)
    {
      return null;
      int j = paramNode.getLength();
      if (j > 0)
      {
        int i = 0;
        while (i < j)
        {
          Node localNode = paramNode.item(i);
          if ((localNode.getNodeName() != null) && (localNode.getNodeValue() != null)) {
            return localNode.getNodeValue();
          }
          i += 1;
        }
      }
    }
  }
  
  private boolean searchTag(Node paramNode)
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
      if (str.equalsIgnoreCase("resultCode"))
      {
        this.mResultCode = getValue(paramNode);
        return true;
      }
    } while (!str.equalsIgnoreCase("resultMessage"));
    this.mResultMessage = getValue(paramNode);
    return true;
  }
  
  public void clear()
  {
    this.mResultCode = null;
    this.mResultMessage = null;
  }
  
  public boolean parseXML(NodeList paramNodeList)
  {
    if (paramNodeList == null) {}
    while (paramNodeList.getLength() <= 0) {
      return false;
    }
    ParseResult(paramNodeList);
    return true;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Util.addString(localStringBuffer, "resultCode", this.mResultCode);
    Util.addString(localStringBuffer, "resultMessage", this.mResultMessage);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResponseOld
 * JD-Core Version:    0.7.0.1
 */