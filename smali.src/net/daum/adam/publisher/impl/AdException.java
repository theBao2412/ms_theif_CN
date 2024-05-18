package net.daum.adam.publisher.impl;

public final class AdException
  extends Exception
{
  private static final long a = 8643116348930268889L;
  private AdError b;
  
  public AdException(String paramString)
  {
    super(paramString);
    this.b = AdError.AD_DOWNLOAD_ERROR_SDKEXCEPTION;
  }
  
  public AdException(AdError paramAdError)
  {
    this.b = paramAdError;
  }
  
  public AdException(AdError paramAdError, String paramString)
  {
    super(paramString);
    this.b = paramAdError;
  }
  
  public AdError getSdkError()
  {
    return this.b;
  }
  
  public void printStackTrace()
  {
    if (e.h()) {
      super.printStackTrace();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.b != null)
    {
      if (this.b.toString().indexOf("[" + e.b() + "] ") != -1) {
        break label124;
      }
      localStringBuilder.append("[" + e.b() + "] " + this.b.toString());
    }
    for (;;)
    {
      localStringBuilder.append(':');
      if (getMessage() != null) {
        localStringBuilder.append(getMessage());
      }
      return localStringBuilder.toString();
      label124:
      localStringBuilder.append(this.b.toString());
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.AdException
 * JD-Core Version:    0.7.0.1
 */