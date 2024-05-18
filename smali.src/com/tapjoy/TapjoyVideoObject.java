package com.tapjoy;

import java.lang.reflect.Array;

public class TapjoyVideoObject
{
  public static final int BUTTON_MAX = 10;
  public int buttonCount;
  public String[][] buttonData = (String[][])Array.newInstance(String.class, new int[] { 10, 2 });
  public String clickURL;
  public String currencyAmount;
  public String currencyName;
  public String dataLocation;
  public String iconURL;
  public String offerID;
  public String videoAdName;
  public String videoURL;
  public String webviewURL;
  
  public void addButton(String paramString1, String paramString2)
  {
    this.buttonData[this.buttonCount][0] = paramString1;
    this.buttonData[this.buttonCount][1] = paramString2;
    this.buttonCount += 1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyVideoObject
 * JD-Core Version:    0.7.0.1
 */