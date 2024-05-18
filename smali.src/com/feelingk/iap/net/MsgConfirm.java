package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF.LOGGER;

public class MsgConfirm
  extends Confirm
{
  private byte[] mMessage;
  private int mMessageLength = 0;
  private String mSWDumpMessage = null;
  private String mUserMessage = null;
  
  public String GetDumpMessage()
  {
    return this.mSWDumpMessage;
  }
  
  public String GetUserMessage()
  {
    return this.mUserMessage;
  }
  
  public void SetDumpMessage(String paramString)
  {
    this.mSWDumpMessage = paramString;
  }
  
  public void SetUserMessage(String paramString)
  {
    this.mUserMessage = paramString;
  }
  
  public byte[] getMsg()
  {
    return this.mMessage;
  }
  
  public int getMsgLength()
  {
    return this.mMessageLength;
  }
  
  protected void parse(byte[] paramArrayOfByte)
  {
    super.parse(paramArrayOfByte);
    this.mMessageLength = paramArrayOfByte[13];
    this.mMessage = new byte[this.mMessageLength];
    try
    {
      System.arraycopy(paramArrayOfByte, 14, this.mMessage, 0, this.mMessageLength);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      CommonF.LOGGER.i("IAPNet", "[MsgConfirm] :" + paramArrayOfByte.toString());
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.net.MsgConfirm
 * JD-Core Version:    0.7.0.1
 */