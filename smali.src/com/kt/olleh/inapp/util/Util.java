package com.kt.olleh.inapp.util;

public class Util
{
  public static void addString(StringBuffer paramStringBuffer, String paramString, float paramFloat)
  {
    paramStringBuffer.append(paramString);
    paramStringBuffer.append(":");
    paramStringBuffer.append(paramFloat);
    paramStringBuffer.append("\n");
  }
  
  public static void addString(StringBuffer paramStringBuffer, String paramString, int paramInt)
  {
    paramStringBuffer.append(paramString);
    paramStringBuffer.append(":");
    paramStringBuffer.append(paramInt);
    paramStringBuffer.append("\n");
  }
  
  public static void addString(StringBuffer paramStringBuffer, String paramString1, String paramString2)
  {
    paramStringBuffer.append(paramString1);
    paramStringBuffer.append(":");
    paramStringBuffer.append(paramString2);
    paramStringBuffer.append("\n");
  }
  
  public static void addString(StringBuffer paramStringBuffer, String paramString, boolean paramBoolean)
  {
    paramStringBuffer.append(paramString);
    paramStringBuffer.append(":");
    paramStringBuffer.append(paramBoolean);
    paramStringBuffer.append("\n");
  }
  
  public static void addUrlString(StringBuffer paramStringBuffer, String paramString1, String paramString2, boolean paramBoolean)
  {
    paramStringBuffer.append(paramString1);
    paramStringBuffer.append("=");
    paramStringBuffer.append(paramString2);
    if (paramBoolean) {
      paramStringBuffer.append("&");
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.util.Util
 * JD-Core Version:    0.7.0.1
 */