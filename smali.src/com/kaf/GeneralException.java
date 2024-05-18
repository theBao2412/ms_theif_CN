package com.kaf;

import java.io.ByteArrayOutputStream;
import java.io.PrintWriter;

public class GeneralException
  extends Exception
{
  protected String additionalExceptionMessage;
  protected String errorCode;
  
  public GeneralException(String paramString)
  {
    super(paramString);
    this.errorCode = paramString;
  }
  
  public GeneralException(String paramString1, String paramString2)
  {
    super(paramString1 + " : " + paramString2);
    this.additionalExceptionMessage = paramString2;
    this.errorCode = paramString1;
  }
  
  public GeneralException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.errorCode = paramString;
  }
  
  public static String getStackTraceString(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintWriter localPrintWriter = new PrintWriter(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.flush();
    return localByteArrayOutputStream.toString();
  }
  
  public String getAdditionalExceptionMessage()
  {
    return this.additionalExceptionMessage;
  }
  
  public String getErrorCode()
  {
    return this.errorCode;
  }
  
  public String getStackTraceString()
  {
    return getStackTraceString(this);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kaf.GeneralException
 * JD-Core Version:    0.7.0.1
 */