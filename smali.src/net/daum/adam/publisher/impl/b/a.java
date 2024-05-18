package net.daum.adam.publisher.impl.b;

import java.util.ArrayList;

public final class a
{
  protected static final int a = 200;
  protected static final int b = 1;
  protected static final int c = 2;
  protected static final int d = 3;
  protected static final int e = 4;
  protected static String f = "";
  protected static String g = "";
  public static boolean h = false;
  public static boolean i = false;
  public static boolean j = false;
  private String k = "";
  private int l = 0;
  private int m = 0;
  private int n;
  private int o;
  private ArrayList<String> p = new ArrayList();
  private ArrayList<String> q = new ArrayList();
  private ArrayList<String> r = new ArrayList();
  
  private void g(String paramString)
  {
    this.p.add(paramString);
  }
  
  public int a()
  {
    return this.l;
  }
  
  public void a(int paramInt)
  {
    this.l = paramInt;
  }
  
  public void a(String paramString)
  {
    this.n = c(paramString);
  }
  
  public int b()
  {
    return this.n;
  }
  
  protected void b(int paramInt)
  {
    this.m = paramInt;
  }
  
  public void b(String paramString)
  {
    this.o = c(paramString);
  }
  
  public int c()
  {
    return this.o;
  }
  
  public int c(String paramString)
  {
    if ("agree".equals(paramString)) {
      return 1;
    }
    if ("send".equals(paramString)) {
      return 2;
    }
    if ("refresh".equals(paramString)) {
      return 3;
    }
    return 4;
  }
  
  public ArrayList<String> d()
  {
    return this.p;
  }
  
  protected void d(String paramString)
  {
    this.q.add(paramString);
    g(paramString);
  }
  
  public ArrayList<String> e()
  {
    return this.q;
  }
  
  protected void e(String paramString)
  {
    this.r.add(paramString);
    g(paramString);
  }
  
  public ArrayList<String> f()
  {
    return this.r;
  }
  
  protected void f(String paramString)
  {
    if (paramString.length() > 0)
    {
      this.k = paramString;
      return;
    }
    this.k = "";
  }
  
  protected int g()
  {
    return this.m;
  }
  
  protected String h()
  {
    return this.k;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.b.a
 * JD-Core Version:    0.7.0.1
 */