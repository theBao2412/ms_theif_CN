package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResDIBuy
  extends Response
{
  public String mApp_id = null;
  public String mDi_id = null;
  public String mSeq_key = null;
  
  public void clear()
  {
    this.mApp_id = null;
    this.mSeq_key = null;
    this.mDi_id = null;
    super.clear();
  }
  
  public String getAppId()
  {
    return this.mApp_id;
  }
  
  public String getDiId()
  {
    return this.mDi_id;
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
      if (str.equalsIgnoreCase("app_id"))
      {
        this.mApp_id = getValue(paramNode);
        return true;
      }
      if (str.equalsIgnoreCase("seq_key"))
      {
        this.mSeq_key = getValue(paramNode);
        return true;
      }
    } while (!str.equalsIgnoreCase("di_id"));
    this.mDi_id = getValue(paramNode);
    return true;
  }
  
  public void setAppId(String paramString)
  {
    this.mApp_id = paramString;
  }
  
  public void setDiId(String paramString)
  {
    this.mDi_id = paramString;
  }
  
  public void setSeqKey(String paramString)
  {
    this.mSeq_key = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "app_id", this.mApp_id);
    Util.addString(localStringBuffer, "seq_key", this.mSeq_key);
    Util.addString(localStringBuffer, "di_id", this.mDi_id);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResDIBuy
 * JD-Core Version:    0.7.0.1
 */