package net.daum.adam.publisher.impl;

import java.util.List;
import net.daum.adam.publisher.impl.d.b;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;

public abstract class a
{
  private static final String a = "BaseHttpContext";
  private String b = null;
  private int c = 0;
  private a d = a.a;
  
  public a(String paramString)
  {
    this.b = paramString;
  }
  
  protected a a()
  {
    return this.d;
  }
  
  protected HttpResponse a(String paramString)
    throws Exception
  {
    DefaultHttpClient localDefaultHttpClient = b.a(e.c());
    try
    {
      paramString = new HttpGet(paramString);
      if ((this.b != null) && (this.b.length() > 0)) {
        paramString.setHeader("User-Agent", this.b);
      }
      paramString = localDefaultHttpClient.execute(paramString);
      this.c = paramString.getStatusLine().getStatusCode();
      return paramString;
    }
    catch (Exception paramString)
    {
      e.a("BaseHttpContext", paramString.toString(), paramString);
      a(a.a);
      throw paramString;
    }
  }
  
  protected HttpResponse a(String paramString, List<NameValuePair> paramList)
    throws Exception
  {
    DefaultHttpClient localDefaultHttpClient = b.a(e.c());
    try
    {
      paramString = new HttpPost(paramString);
      paramString.setEntity(new UrlEncodedFormEntity(paramList));
      if ((this.b != null) && (this.b.length() > 0)) {
        paramString.setHeader("User-Agent", this.b);
      }
      paramString = localDefaultHttpClient.execute(paramString);
      this.c = paramString.getStatusLine().getStatusCode();
      return paramString;
    }
    catch (Exception paramString)
    {
      e.a("BaseHttpContext", paramString.toString(), paramString);
      a(a.a);
      throw paramString;
    }
  }
  
  protected void a(a parama)
  {
    this.d = parama;
  }
  
  protected int b()
  {
    e.b("BaseHttpContext", "Response Code : " + this.c);
    return this.c;
  }
  
  static enum a
  {
    private a() {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.a
 * JD-Core Version:    0.7.0.1
 */