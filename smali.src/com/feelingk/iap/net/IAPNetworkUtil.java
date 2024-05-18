package com.feelingk.iap.net;

public class IAPNetworkUtil
{
  private static final String TAG = "IAPNet";
  
  public static byte[] iapMakePacketHeader(String paramString, int paramInt)
  {
    byte[] arrayOfByte = new byte[12];
    int i = 0;
    for (;;)
    {
      if (i >= 12)
      {
        System.arraycopy(paramString.getBytes(), 0, arrayOfByte, 0, 2);
        paramString = String.valueOf(paramInt).getBytes();
        System.arraycopy(paramString, 0, arrayOfByte, 2, paramString.length);
        return arrayOfByte;
      }
      arrayOfByte[i] = 0;
      i += 1;
    }
  }
  
  public static void packetDebug(byte[] paramArrayOfByte, int paramInt) {}
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.IAPNetworkUtil
 * JD-Core Version:    0.7.0.1
 */