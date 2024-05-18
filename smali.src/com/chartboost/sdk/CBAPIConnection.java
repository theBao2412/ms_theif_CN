package com.chartboost.sdk;

import android.os.Handler;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;
import org.json.JSONTokener;

public class CBAPIConnection
{
  private static final String CB_DEFAULT_ENDPOINT = "https://www.chartboost.com/";
  private CBAPIConnectionDelegate delegate;
  private String endpoint;
  private HttpClient httpClient;
  
  public CBAPIConnection(CBAPIConnectionDelegate paramCBAPIConnectionDelegate)
  {
    setEndpoint("https://www.chartboost.com/");
    setDelegate(paramCBAPIConnectionDelegate);
    this.httpClient = createHttpClient();
  }
  
  private HttpClient createHttpClient()
  {
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new TrustingSocketFactory((KeyStore)localObject);
      ((org.apache.http.conn.ssl.SSLSocketFactory)localObject).setHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      localObject = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return localObject;
    }
    catch (Exception localException) {}
    return new DefaultHttpClient();
  }
  
  public CBAPIConnectionDelegate getDelegate()
  {
    return this.delegate;
  }
  
  public String getEndpoint()
  {
    return this.endpoint;
  }
  
  public void sendRequest(final CBAPIRequest paramCBAPIRequest)
  {
    Object localObject2 = getEndpoint() + paramCBAPIRequest.getController() + "/" + paramCBAPIRequest.getAction() + ".json";
    Object localObject3 = paramCBAPIRequest.getQuery();
    Object localObject1 = localObject2;
    Iterator localIterator;
    if (localObject3 != null)
    {
      localObject1 = "";
      localIterator = ((Map)localObject3).keySet().iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localObject1 = localObject2 + "?" + (String)localObject1;
        localObject1 = new HttpPost((String)localObject1);
        localObject2 = paramCBAPIRequest.getBody();
        if (localObject2 != null)
        {
          localObject3 = new ArrayList();
          localIterator = ((Map)localObject2).keySet().iterator();
          if (localIterator.hasNext()) {
            break label268;
          }
        }
      }
      try
      {
        ((HttpPost)localObject1).setEntity(new UrlEncodedFormEntity((List)localObject3));
        new Thread()
        {
          public void run()
          {
            try
            {
              Object localObject = this.val$finalHttpClient.execute(this.val$finalHttpRequest);
              int i = ((HttpResponse)localObject).getStatusLine().getStatusCode();
              if ((i < 300) && (i >= 200))
              {
                localObject = new BufferedReader(new InputStreamReader(((HttpResponse)localObject).getEntity().getContent(), "UTF-8"));
                StringBuilder localStringBuilder = new StringBuilder();
                for (;;)
                {
                  String str = ((BufferedReader)localObject).readLine();
                  if (str == null)
                  {
                    localObject = new JSONObject(new JSONTokener(localStringBuilder.toString()));
                    Log.i("ChartBoost", "Request response received: " + ((JSONObject)localObject).optString("message"));
                    this.val$finalHandler.post(new Runnable()
                    {
                      public void run()
                      {
                        this.val$finalDelegate.didReceiveAPIResponse(this.val$finalJsonObject, this.val$finalRequest);
                      }
                    });
                    return;
                  }
                  localStringBuilder.append(str).append("\n");
                }
              }
              Log.w("ChartBoost", "Request failed: " + localException);
            }
            catch (Exception localException)
            {
              Log.e("ChartBoost", "Exception on http request: " + localException.getLocalizedMessage());
              return;
            }
            this.val$finalHandler.post(new Runnable()
            {
              public void run()
              {
                this.val$finalDelegate.didFailToReceiveAPIResponse(this.val$finalRequest);
              }
            });
          }
        }.start();
        return;
        String str1 = (String)localIterator.next();
        String str2 = (String)((Map)localObject3).get(str1);
        localObject1 = localObject1 + URLEncoder.encode(str1) + "=" + URLEncoder.encode(str2) + "&";
        continue;
        label268:
        str1 = (String)localIterator.next();
        ((List)localObject3).add(new BasicNameValuePair(str1, (String)((Map)localObject2).get(str1)));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          localUnsupportedEncodingException.printStackTrace();
        }
      }
    }
  }
  
  public void setDelegate(CBAPIConnectionDelegate paramCBAPIConnectionDelegate)
  {
    this.delegate = paramCBAPIConnectionDelegate;
  }
  
  public void setEndpoint(String paramString)
  {
    this.endpoint = paramString;
  }
  
  private class TrustingSocketFactory
    extends org.apache.http.conn.ssl.SSLSocketFactory
  {
    SSLContext sslContext = SSLContext.getInstance("TLS");
    
    public TrustingSocketFactory(KeyStore paramKeyStore)
      throws Exception
    {
      super();
      this$1 = new X509TrustManager()
      {
        public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {}
        
        public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {}
        
        public X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      };
      this.sslContext.init(null, new TrustManager[] { CBAPIConnection.this }, null);
    }
    
    public Socket createSocket()
      throws IOException
    {
      return this.sslContext.getSocketFactory().createSocket();
    }
    
    public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
      throws IOException, UnknownHostException
    {
      return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBAPIConnection
 * JD-Core Version:    0.7.0.1
 */