package net.daum.adam.publisher.impl.c;

import java.util.Map;

class e
  extends c
{
  e(Map<String, String> paramMap, p paramp)
  {
    super(paramMap, paramp);
  }
  
  void a()
  {
    int j = a("width");
    int n = a("height");
    String str = b("url");
    boolean bool = d("useCustomClose");
    int k = j;
    int m = n;
    if (this.b != null)
    {
      k = j;
      m = n;
      if (this.b.m() == null)
      {
        int i;
        if (j > 0)
        {
          i = j;
          if (j <= this.b.m().b) {}
        }
        else
        {
          i = this.b.m().b;
        }
        if (n > 0)
        {
          k = i;
          m = n;
          if (n <= this.b.m().c) {}
        }
        else
        {
          m = this.b.m().c;
          k = i;
        }
      }
    }
    this.b.m().a(str, k, m, bool, true);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.e
 * JD-Core Version:    0.7.0.1
 */