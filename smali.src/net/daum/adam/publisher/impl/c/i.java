package net.daum.adam.publisher.impl.c;

import java.util.HashMap;
import java.util.Map;

public class i
{
  private static Map<String, a> a = new HashMap();
  
  static
  {
    a.put("close", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        return new d(paramAnonymousMap, paramAnonymousp);
      }
    });
    a.put("expand", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        return new e(paramAnonymousMap, paramAnonymousp);
      }
    });
    a.put("usecustomclose", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        return new j(paramAnonymousMap, paramAnonymousp);
      }
    });
    a.put("open", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        return new g(paramAnonymousMap, paramAnonymousp);
      }
    });
    a.put("setExpandProperties", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        if (paramAnonymousp.a().equals(p.l.b)) {
          return new e(paramAnonymousMap, paramAnonymousp);
        }
        return null;
      }
    });
    a.put("makeCall", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        return new f(paramAnonymousMap, paramAnonymousp);
      }
    });
    a.put("playVideo", new a()
    {
      public c a(Map<String, String> paramAnonymousMap, p paramAnonymousp)
      {
        return new h(paramAnonymousMap, paramAnonymousp);
      }
    });
  }
  
  public static c a(String paramString, Map<String, String> paramMap, p paramp)
  {
    paramString = (a)a.get(paramString);
    if (paramString != null) {
      return paramString.a(paramMap, paramp);
    }
    return null;
  }
  
  private static abstract interface a
  {
    public abstract c a(Map<String, String> paramMap, p paramp);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.i
 * JD-Core Version:    0.7.0.1
 */