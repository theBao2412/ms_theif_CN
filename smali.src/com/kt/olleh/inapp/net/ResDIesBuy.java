package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResDIesBuy
  extends Response
{
  public String mResultCode = null;
  public String mResultMessage = null;
  
  public void clear()
  {
    this.mResultCode = null;
    this.mResultMessage = null;
    super.clear();
  }
  
  public String getResultCode()
  {
    return this.mResultCode;
  }
  
  public String getResultMessage()
  {
    return this.mResultMessage;
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
      if (str.equalsIgnoreCase("resultCode"))
      {
        this.mResultCode = getValue(paramNode);
        return true;
      }
    } while (!str.equalsIgnoreCase("resultMessage"));
    this.mResultMessage = getValue(paramNode);
    return true;
  }
  
  public void setResultCode(String paramString)
  {
    this.mResultCode = paramString;
  }
  
  public void setResultMessage(String paramString)
  {
    this.mResultMessage = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "resultCode", this.mResultCode);
    Util.addString(localStringBuffer, "resultMessage", this.mResultMessage);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResDIesBuy
 * JD-Core Version:    0.7.0.1
 */