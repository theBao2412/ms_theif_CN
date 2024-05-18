package net.daum.adam.publisher.impl;

import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;

public final class d
{
  private static final String a = "AdClickTraceHttpContext";
  
  public static void a(String paramString1, final String paramString2)
  {
    e.b("AdClickTraceHttpContext", "Ad Click Trace Request URL : " + paramString1);
    new Thread(new Runnable()
    {
      public void run()
      {
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
        HttpGet localHttpGet = new HttpGet(this.a);
        if ((paramString2 != null) && (paramString2.length() > 0)) {
          localHttpGet.setHeader("User-Agent", paramString2);
        }
        try
        {
          localDefaultHttpClient.execute(localHttpGet);
          return;
        }
        catch (ClientProtocolException localClientProtocolException)
        {
          e.b("AdClickTraceHttpContext", "Ad Click Trace Request Failed : " + this.a);
          return;
        }
        catch (IOException localIOException)
        {
          e.b("AdClickTraceHttpContext", "Ad Click Trace Request Failed : " + this.a);
          return;
        }
        catch (Exception localException)
        {
          e.b("AdClickTraceHttpContext", "Ad Click Trace Request Failed : " + this.a);
          return;
        }
        finally
        {
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
    }, "AdClickTraceHttpContext").start();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.d
 * JD-Core Version:    0.7.0.1
 */