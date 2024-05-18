package com.kaf;

public class NotSupportException
  extends Exception
{
  public NotSupportException(String paramString)
  {
    super(paramString);
  }
  
  public NotSupportException(String paramString1, String paramString2)
  {
    super(paramString1 + " : " + paramString2);
  }
  
  public NotSupportException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.NotSupportException
 * JD-Core Version:    0.7.0.1
 */