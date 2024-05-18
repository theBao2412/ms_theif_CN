package com.chartboost.sdk;

import org.json.JSONObject;

public abstract interface CBAPIConnectionDelegate
{
  public abstract void didFailToReceiveAPIResponse(CBAPIRequest paramCBAPIRequest);
  
  public abstract void didReceiveAPIResponse(JSONObject paramJSONObject, CBAPIRequest paramCBAPIRequest);
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBAPIConnectionDelegate
 * JD-Core Version:    0.7.0.1
 */