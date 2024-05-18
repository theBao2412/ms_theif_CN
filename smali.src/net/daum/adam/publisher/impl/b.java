package net.daum.adam.publisher.impl;

public final class b
{
  public static final String a = "H";
  public static final String b = "MRAID";
  private static final String c = "Ad";
  private String d = null;
  private String e = null;
  private String f = null;
  private String g = null;
  private String h;
  private String i = null;
  private String j = null;
  
  public String a()
  {
    return this.e;
  }
  
  public void a(String paramString)
  {
    this.e = paramString;
  }
  
  public String b()
  {
    return this.f;
  }
  
  public void b(String paramString)
  {
    this.f = paramString;
  }
  
  public String c()
  {
    return this.g;
  }
  
  public void c(String paramString)
  {
    this.g = paramString;
  }
  
  public String d()
  {
    return this.h;
  }
  
  public void d(String paramString)
  {
    this.h = paramString;
  }
  
  public String e()
  {
    return this.d;
  }
  
  public void e(String paramString)
  {
    if (this.h != null)
    {
      this.h += paramString;
      return;
    }
    this.h = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    paramObject = (b)paramObject;
    boolean bool1 = bool2;
    try
    {
      if (this.e.equals(paramObject.a())) {
        if ((f() == null) || (paramObject.f() == null) || (!f().equals(paramObject.f())))
        {
          bool1 = bool2;
          if (d() != null)
          {
            bool1 = bool2;
            if (paramObject.d() != null)
            {
              boolean bool3 = d().equals(paramObject.d());
              bool1 = bool2;
              if (!bool3) {}
            }
          }
        }
        else
        {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception paramObject)
    {
      e.b("Ad", paramObject.toString());
    }
    return false;
  }
  
  public String f()
  {
    return this.i;
  }
  
  public void f(String paramString)
  {
    this.d = paramString;
  }
  
  public String g()
  {
    return this.j;
  }
  
  public void g(String paramString)
  {
    this.i = paramString;
  }
  
  public void h(String paramString)
  {
    this.j = paramString;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.b
 * JD-Core Version:    0.7.0.1
 */