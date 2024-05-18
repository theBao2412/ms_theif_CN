package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResDIGetFile
  extends Response
{
  public String mFile2byte = null;
  public String mSeq_key = null;
  
  public void clear()
  {
    this.mSeq_key = null;
    this.mFile2byte = null;
    super.clear();
  }
  
  public String getFile2byte()
  {
    return this.mFile2byte;
  }
  
  public String getSeqKey()
  {
    return this.mSeq_key;
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
        return true;
      }
    } while (!str.equalsIgnoreCase("file2byte"));
    this.mFile2byte = getValue(paramNode);
    return true;
  }
  
  public void setFile2byte(String paramString)
  {
    this.mFile2byte = paramString;
  }
  
  public void setSeqKey(String paramString)
  {
    this.mSeq_key = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "app_id", this.mSeq_key);
    Util.addString(localStringBuffer, "file2byte", this.mFile2byte);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResDIGetFile
 * JD-Core Version:    0.7.0.1
 */