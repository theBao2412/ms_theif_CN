package com.kt.olleh.inapp.net;

import android.util.Log;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.util.Util;
import java.util.Vector;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ResDIListExpand
  extends Response
{
  public String mApp_id = null;
  public String mList_num = null;
  private Vector<ResDIListExpandRecord> mRecord = new Vector();
  
  private boolean setDiList(NodeList paramNodeList)
  {
    if (paramNodeList == null) {
      return false;
    }
    int j = paramNodeList.getLength();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return true;
      }
      Object localObject = paramNodeList.item(i);
      if (((Node)localObject).getNodeName().equalsIgnoreCase("row"))
      {
        localObject = ((Node)localObject).getChildNodes();
        if (localObject == null)
        {
          if (!Config.DEBUG) {
            break;
          }
          Log.d("ResGetDIUsableList", "DiList == null");
          return false;
        }
        int k = ((NodeList)localObject).getLength();
        if (k <= 0)
        {
          if (!Config.DEBUG) {
            break;
          }
          Log.d("ResGetDIUsableList", "DiList count : " + k);
          return false;
        }
        ResDIListExpandRecord localResDIListExpandRecord = new ResDIListExpandRecord();
        localResDIListExpandRecord.searchRecordTag((NodeList)localObject);
        getRecord().add(localResDIListExpandRecord);
      }
      i += 1;
    }
  }
  
  public void clear()
  {
    this.mApp_id = null;
    this.mList_num = null;
    int j;
    int i;
    if (this.mRecord != null)
    {
      j = this.mRecord.size();
      i = 0;
    }
    for (;;)
    {
      if (i >= j)
      {
        this.mRecord.clear();
        this.mRecord = null;
        super.clear();
        return;
      }
      ResDIListExpandRecord localResDIListExpandRecord = (ResDIListExpandRecord)this.mRecord.get(i);
      if (localResDIListExpandRecord != null) {
        localResDIListExpandRecord.clear();
      }
      i += 1;
    }
  }
  
  public String getAppId()
  {
    return this.mApp_id;
  }
  
  public String getListNum()
  {
    return this.mList_num;
  }
  
  public Vector<ResDIListExpandRecord> getRecord()
  {
    return this.mRecord;
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
        toString();
        return true;
      }
      if (str.equalsIgnoreCase("list_num"))
      {
        this.mList_num = getValue(paramNode);
        toString();
        return true;
      }
    } while (!str.equalsIgnoreCase("di_list"));
    setDiList(paramNode.getChildNodes());
    return false;
  }
  
  public void setAppId(String paramString)
  {
    this.mApp_id = paramString;
  }
  
  public void setDiTitle(String paramString)
  {
    this.mList_num = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    Util.addString(localStringBuffer, "app_id", this.mApp_id);
    Util.addString(localStringBuffer, "list_num", this.mList_num);
    return localStringBuffer.toString();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.ResDIListExpand
 * JD-Core Version:    0.7.0.1
 */