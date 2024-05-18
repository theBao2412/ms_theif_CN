package net.daum.adam.publisher.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.daum.adam.publisher.impl.b.a;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public final class h
{
  private StringBuilder a(Map<String, Object> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap.get(str);
      if (localObject != null)
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append('&');
        }
        localStringBuilder.append(str);
        localStringBuilder.append('=');
        localStringBuilder.append(localObject.toString());
      }
    }
    return localStringBuilder;
  }
  
  private List<NameValuePair> b(Map<String, Object> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap.get(str);
      if (localObject != null) {
        localArrayList.add(new BasicNameValuePair(str, localObject.toString()));
      }
    }
    return localArrayList;
  }
  
  public b a(String paramString1, Map<String, Object> paramMap, String paramString2)
    throws AdException
  {
    ArrayList localArrayList = new ArrayList();
    paramString2 = new f(localArrayList, paramString2);
    e.b("AdProtocolHandler", "URL : " + paramString1 + "?" + a(paramMap));
    paramString2.c(paramString1, b(paramMap));
    if (paramString2.b() == 200)
    {
      if (localArrayList.size() > 0)
      {
        paramString1 = (b)localArrayList.get(0);
        if (paramString1 == null) {
          throw new AdException(AdError.AD_DOWNLOAD_ERROR_NOAD);
        }
        if (paramString2.a() == a.a.c) {
          return paramString1;
        }
        throw new AdException(AdError.AD_DOWNLOAD_ERROR_INVALIDAD, paramString1.b());
      }
      throw new AdException(AdError.AD_DOWNLOAD_ERROR_NOAD);
    }
    throw new AdException(AdError.AD_DOWNLOAD_ERROR_HTTPFAILED);
  }
  
  public a b(String paramString1, Map<String, Object> paramMap, String paramString2)
  {
    e.b("AdProtocolHandler", "URL : " + paramString1 + "?" + a(paramMap));
    return new net.daum.adam.publisher.impl.b.b(paramString2).b(paramString1, b(paramMap));
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.h
 * JD-Core Version:    0.7.0.1
 */