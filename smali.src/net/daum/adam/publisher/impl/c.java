package net.daum.adam.publisher.impl;

public final class c
{
  private static long a = 0L;
  private static b b = null;
  
  protected static long a()
  {
    return a;
  }
  
  protected static b a(int paramInt)
  {
    long l = System.currentTimeMillis();
    if ((a != 0L) && ((l - a) / 1000L < paramInt)) {
      return b();
    }
    return null;
  }
  
  protected static void a(b paramb)
  {
    a = System.currentTimeMillis();
    if (e.a()) {
      b = paramb;
    }
  }
  
  public static b b()
  {
    if (e.a())
    {
      e.b("AdCache", "GET CACHED DATA!!");
      return b;
    }
    return null;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c
 * JD-Core Version:    0.7.0.1
 */