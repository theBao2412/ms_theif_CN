package com.tapjoy;

public class TJCVirtualGoodsConnection
{
  static final String TAPJOY_VIRTUAL_GOODS_CONNECTION = "TapjoyVirtualGoodsConnection";
  private static TapjoyURLConnection tapjoyURLConnection = null;
  private static String urlDomain = null;
  private static String urlParams = null;
  
  public TJCVirtualGoodsConnection(String paramString1, String paramString2)
  {
    TapjoyLog.i("TapjoyVirtualGoodsConnection", "base: " + paramString1 + ", params: " + paramString2);
    tapjoyURLConnection = new TapjoyURLConnection();
    urlDomain = paramString1;
    urlParams = paramString2;
  }
  
  public String getAllPurchasedItemsFromServer(int paramInt1, int paramInt2)
  {
    TapjoyLog.i("TapjoyVirtualGoodsConnection", "getAllPurchasedItemsFromServer");
    String str1 = urlDomain + "get_vg_store_items/purchased?";
    String str2 = urlParams + "&start=" + paramInt1 + "&max=" + paramInt2;
    return tapjoyURLConnection.connectToURL(str1, str2);
  }
  
  public String getAllStoreItemsFromServer(int paramInt1, int paramInt2)
  {
    String str1 = urlDomain + "get_vg_store_items/all?";
    String str2 = urlParams + "&start=" + paramInt1 + "&max=" + paramInt2;
    return tapjoyURLConnection.connectToURL(str1, str2);
  }
  
  public String purchaseVGFromServer(String paramString)
  {
    String str = urlDomain + "points/purchase_vg?";
    paramString = urlParams + "&virtual_good_id=" + paramString;
    return tapjoyURLConnection.connectToURL(str, paramString);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TJCVirtualGoodsConnection
 * JD-Core Version:    0.7.0.1
 */