package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class Response
  implements ResTags
{
  private static final String TAG = "Response";
  public String mCode = null;
  public String mReason = null;
  public String mTr_id = null;
  
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
        searchResultTag(paramNodeList.item(i));
        i += 1;
      }
    }
  }
  
  private void ParseValue(NodeList paramNodeList)
  {
    if (paramNodeList == null) {}
    for (;;)
    {
      return;
      int j = paramNodeList.getLength();
      int i = 0;
      while (i < j)
      {
        searchValueTag(paramNodeList.item(i));
        i += 1;
      }
    }
  }
  
  private NodeList findTag(NodeList paramNodeList, String paramString)
  {
    if (paramNodeList == null) {}
    for (;;)
    {
      return null;
      int j = paramNodeList.getLength();
      int i = 0;
      while (i < j)
      {
        Node localNode = paramNodeList.item(i);
        if (localNode.getNodeName().equalsIgnoreCase(paramString)) {
          return localNode.getChildNodes();
        }
        i += 1;
      }
    }
  }
  
  protected static String getValue(Node paramNode)
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
  
  public void clear()
  {
    this.mTr_id = null;
    this.mCode = null;
    this.mReason = null;
  }
  
  public boolean parseXML(NodeList paramNodeList)
  {
    if (paramNodeList == null) {}
    while (paramNodeList.getLength() <= 0) {
      return false;
    }
    ParseResult(findTag(paramNodeList, "result"));
    ParseValue(findTag(paramNodeList, "value"));
    return true;
  }
  
  protected boolean searchResultTag(Node paramNode)
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
      if (str.equalsIgnoreCase("tr_id"))
      {
        this.mTr_id = getValue(paramNode);
        return true;
      }
      if (str.equalsIgnoreCase("code"))
      {
        this.mCode = getValue(paramNode);
        return true;
      }
    } while (!str.equalsIgnoreCase("reason"));
    this.mReason = getValue(paramNode);
    return true;
  }
  
  protected abstract boolean searchValueTag(Node paramNode);
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Util.addString(localStringBuffer, "tr_id", this.mTr_id);
    Util.addString(localStringBuffer, "code", this.mCode);
    Util.addString(localStringBuffer, "reason", this.mReason);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.Response
 * JD-Core Version:    0.7.0.1
 */