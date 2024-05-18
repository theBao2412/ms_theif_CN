package net.daum.adam.publisher.impl;

public enum AdError
{
  private String a;
  
  static
  {
    AD_DOWNLOAD_ERROR_HTTPFAILED = new AdError("AD_DOWNLOAD_ERROR_HTTPFAILED", 3, "Http failed");
    AD_DOWNLOAD_ERROR_UNKNOWN_CLIENTID = new AdError("AD_DOWNLOAD_ERROR_UNKNOWN_CLIENTID", 4, "There's no client id in your app. Please provide a valid 'clientId' attribute in the 'net.daum.adam.publisher.AdView' tag of layout XML. For example, clientId=\"yourClientId\". Or you can use setClientId() method.");
    AD_DOWNLOAD_ERROR_INVALID_DEVICE = new AdError("AD_DOWNLOAD_ERROR_INVALID_DEVICE", 5, "invalid device");
    AD_DOWNLOAD_ERROR_INVALIDAD = new AdError("AD_DOWNLOAD_ERROR_INVALIDAD", 6, "invalid ad");
    AD_DOWNLOAD_ERROR_SDKEXCEPTION = new AdError("AD_DOWNLOAD_ERROR_SDKEXCEPTION", 7, "SDK exception");
  }
  
  private AdError(String paramString)
  {
    this.a = paramString;
  }
  
  public String toString()
  {
    return name() + "(" + this.a + ")";
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.AdError
 * JD-Core Version:    0.7.0.1
 */