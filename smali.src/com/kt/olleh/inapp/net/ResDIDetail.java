package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

public class ResDIDetail
  extends Response
{
  public String mApp_id = null;
  public String mDesc = null;
  public String mDi_id = null;
  public String mDi_title = null;
  public String mPrice = null;
  public String mUse_lmt_cnt = null;
  public String mUse_term = null;
  
  public void clear()
  {
    this.mApp_id = null;
    this.mDi_id = null;
    this.mDi_title = null;
    this.mDesc = null;
    this.mPrice = null;
    this.mUse_term = null;
    this.mUse_lmt_cnt = null;
    super.clear();
  }
  
  public String getAppId()
  {
    return this.mApp_id;
  }
  
  public String getDesc()
  {
    return this.mDesc;
  }
  
  public String getDiId()
  {
    return this.mDi_id;
  }
  
  public String getDiTitle()
  {
    return this.mDi_title;
  }
  
  public String getPrice()
  {
    return this.mPrice;
  }
  
  public String getUseLmtCnt()
  {
    return this.mUse_lmt_cnt;
  }
  
  public String getUseTerm()
  {
    return this.mUse_term;
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
      if (str.equalsIgnoreCase("di_id"))
      {
        this.mDi_id = getValue(paramNode);
        return true;
      }
      if (str.equalsIgnoreCase("di_title"))
      {
        this.mDi_title = getValue(paramNode);
        return true;
      }
      if (str.equalsIgnoreCase("desc"))
      {
        this.mDesc = getValue(paramNode);
        return true;
      }
      if (str.equalsIgnoreCase("price"))
      {
        this.mPrice = getValue(paramNode);
        return true;
      }
      if (str.equalsIgnoreCase("use_term"))
      {
        this.mUse_term = getValue(paramNode);
        return true;
      }
    } while (!str.equalsIgnoreCase("use_lmt_cnt"));
    this.mUse_lmt_cnt = getValue(paramNode);
    return true;
  }
  
  public void setAppId(String paramString)
  {
    this.mApp_id = paramString;
  }
  
  public void setDesc(String paramString)
  {
    this.mDesc = paramString;
  }
  
  public void setDiId(String paramString)
  {
    this.mDi_id = paramString;
  }
  
  public void setDiTitle(String paramString)
  {
    this.mDi_title = paramString;
  }
  
  public void setPrice(String paramString)
  {
    this.mPrice = paramString;
  }
  
  public void setUseLmtCnt(String paramString)
  {
    this.mUse_lmt_cnt = paramString;
  }
  
  public void setUseTerm(String paramString)
  {
    this.mUse_term = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "app_id", this.mApp_id);
    Util.addString(localStringBuffer, "di_id", this.mDi_id);
    Util.addString(localStringBuffer, "di_title", this.mDi_title);
    Util.addString(localStringBuffer, "desc", this.mDesc);
    Util.addString(localStringBuffer, "price", this.mPrice);
    Util.addString(localStringBuffer, "use_term", this.mUse_term);
    Util.addString(localStringBuffer, "use_lmt_cnt", this.mUse_lmt_cnt);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResDIDetail
 * JD-Core Version:    0.7.0.1
 */