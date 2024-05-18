package net.daum.adam.publisher.impl.d;

import org.apache.http.HttpHost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class b
{
  public static DefaultHttpClient a()
  {
    return a(null);
  }
  
  public static DefaultHttpClient a(HttpHost paramHttpHost)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    if (paramHttpHost != null) {
      localBasicHttpParams.setParameter("http.route.default-proxy", paramHttpHost);
    }
    localBasicHttpParams.setParameter("http.protocol.expect-continue", Boolean.valueOf(false));
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    localBasicHttpParams.setParameter("http.connection.timeout", Integer.valueOf(3000));
    localBasicHttpParams.setParameter("http.socket.timeout", Integer.valueOf(3000));
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 3000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 3000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    return new DefaultHttpClient(localBasicHttpParams);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.d.b
 * JD-Core Version:    0.7.0.1
 */