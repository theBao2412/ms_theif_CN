package net.daum.adam.publisher.impl.c;

import java.util.Map;

abstract class c
{
  protected Map<String, String> a;
  protected p b;
  
  c(Map<String, String> paramMap, p paramp)
  {
    this.a = paramMap;
    this.b = paramp;
  }
  
  protected int a(String paramString)
  {
    paramString = (String)this.a.get(paramString);
    if (paramString == null) {
      return -1;
    }
    try
    {
      int i = Integer.parseInt(paramString, 10);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  abstract void a();
  
  protected String b(String paramString)
  {
    return (String)this.a.get(paramString);
  }
  
  protected void b()
  {
    if ((this.b != null) && (this.b.i() != null)) {
      this.b.i().onOpen(this.b, this.b.m().c());
    }
  }
  
  protected float c(String paramString)
  {
    if ((String)this.a.get(paramString) == null) {
      return 0.0F;
    }
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (NumberFormatException paramString) {}
    return 0.0F;
  }
  
  protected boolean d(String paramString)
  {
    return "true".equals(this.a.get(paramString));
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.c
 * JD-Core Version:    0.7.0.1
 */