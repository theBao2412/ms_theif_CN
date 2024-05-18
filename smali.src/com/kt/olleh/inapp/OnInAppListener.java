package com.kt.olleh.inapp;

import com.kt.olleh.inapp.net.Response;

public abstract interface OnInAppListener
{
  public abstract void OnError(String paramString1, String paramString2);
  
  public abstract void OnResultAPI(String paramString, Response paramResponse);
  
  public abstract void OnResultFileURL(String paramString1, String paramString2);
  
  public abstract void OnResultOLDAPI(String paramString1, String paramString2);
  
  public abstract void OnResultPurchase(String paramString);
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.OnInAppListener
 * JD-Core Version:    0.7.0.1
 */