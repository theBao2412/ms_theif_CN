package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.Config.Config;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class NetworkManager
{
  static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier()
  {
    public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
    {
      return true;
    }
  };
  private static final int RETRY_COUNT = 3;
  private static final int SOCKET_TIMEOUT = 10000;
  private static final String TAG = "NetworkManager";
  private final String RS_GEN_HTTPS = "https://175.196.95.20:443/INAP_GW/inap_gw/getSymKeyGen";
  private final String TB_GEN_HTTPS = "https://221.148.247.203:7777/INAP_GW/inap_gw/getSymKeyGen";
  private HttpClient mClient = null;
  private int mLastError = -1;
  private int mLastStatus = 410;
  private int mRetryCount = 3;
  private volatile boolean mRun = true;
  private HttpURLConnection mURLConnection = null;
  private HttpsURLConnection mhttpsURLConnection = null;
  
  private static void trustAllHosts()
  {
    X509TrustManager local2 = new X509TrustManager()
    {
      public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
        throws CertificateException
      {}
      
      public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
        throws CertificateException
      {}
      
      public X509Certificate[] getAcceptedIssuers()
      {
        return new X509Certificate[0];
      }
    };
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      SecureRandom localSecureRandom = new SecureRandom();
      localSSLContext.init(null, new TrustManager[] { local2 }, localSecureRandom);
      HttpsURLConnection.setDefaultSSLSocketFactory(localSSLContext.getSocketFactory());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void cancel()
  {
    this.mRun = false;
    this.mLastError = -18;
    if (this.mURLConnection != null)
    {
      this.mURLConnection.disconnect();
      this.mURLConnection = null;
      this.mRetryCount = 0;
    }
    if (this.mhttpsURLConnection != null)
    {
      this.mhttpsURLConnection.disconnect();
      this.mhttpsURLConnection = null;
      this.mRetryCount = 0;
    }
  }
  
  public void close()
  {
    if (this.mClient != null) {
      this.mClient = null;
    }
  }
  
  public InputStream getData(String paramString)
  {
    if (Config.DEBUG) {
      Config.LogD("NetworkManager", "getData, ( url = " + paramString + ")");
    }
    this.mRetryCount = 3;
    int i = 0;
    if (this.mRetryCount <= 0) {
      label46:
      return null;
    }
    if (Config.DEBUG) {
      Config.LogD("NetworkManager", "getData, ( retryCount = " + this.mRetryCount + ")");
    }
    Object localObject2 = paramString;
    int j = i;
    Object localObject1 = paramString;
    String str = paramString;
    for (;;)
    {
      try
      {
        if (this.mRun)
        {
          localObject2 = paramString;
          str = paramString;
          if (paramString.contains("getSymKeyGen"))
          {
            localObject2 = paramString;
            str = paramString;
            if (!Config.bTBserver) {
              break label735;
            }
            paramString = "https://221.148.247.203:7777/INAP_GW/inap_gw/getSymKeyGen";
            localObject2 = paramString;
            str = paramString;
            if (Config.DEBUG)
            {
              localObject2 = paramString;
              str = paramString;
              Config.LogI("NetworkManager", "http->https change::case getSymKeyGen, url=" + paramString);
            }
            localObject2 = paramString;
            str = paramString;
            localObject1 = new URL(paramString);
            localObject2 = paramString;
            str = paramString;
            trustAllHosts();
            localObject2 = paramString;
            str = paramString;
            localObject1 = (HttpsURLConnection)((URL)localObject1).openConnection();
            localObject2 = paramString;
            str = paramString;
            ((HttpsURLConnection)localObject1).setHostnameVerifier(DO_NOT_VERIFY);
            localObject2 = paramString;
            str = paramString;
            this.mURLConnection = ((HttpURLConnection)localObject1);
            localObject2 = paramString;
            str = paramString;
            if (this.mURLConnection != null) {
              continue;
            }
            return null;
          }
          localObject2 = paramString;
          str = paramString;
          this.mURLConnection = ((HttpURLConnection)new URL(paramString).openConnection());
          continue;
        }
      }
      catch (IOException paramString)
      {
        if (this.mURLConnection != null)
        {
          this.mURLConnection.disconnect();
          this.mURLConnection = null;
        }
        j = i;
        localObject1 = localObject2;
        if (Config.DEBUG)
        {
          Config.LogE("NetworkManager", paramString.toString());
          localObject1 = localObject2;
          j = i;
        }
        if (Config.DEBUG) {
          Config.LogD("NetworkManager", "HTTP Status : " + j);
        }
        if (!this.mRun)
        {
          if (!Config.DEBUG) {
            break label46;
          }
          Config.LogD("NetworkManager", "User Cancel request");
          break label46;
          localObject2 = paramString;
          str = paramString;
          this.mURLConnection.setConnectTimeout(10000);
          localObject2 = paramString;
          str = paramString;
          this.mURLConnection.setReadTimeout(0);
          localObject2 = paramString;
          str = paramString;
          this.mURLConnection.setRequestProperty("Content-type", "*/*;");
          localObject2 = paramString;
          str = paramString;
          this.mURLConnection.setRequestProperty("Accept", "*/*;");
          localObject2 = paramString;
          str = paramString;
          this.mURLConnection.setUseCaches(false);
          localObject2 = paramString;
          str = paramString;
          j = this.mURLConnection.getResponseCode();
          localObject1 = paramString;
          continue;
        }
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          if (this.mURLConnection != null)
          {
            this.mURLConnection.disconnect();
            this.mURLConnection = null;
          }
          j = i;
          localObject1 = str;
          if (Config.DEBUG)
          {
            Config.LogE("NetworkManager", paramString.toString());
            j = i;
            localObject1 = str;
            continue;
            this.mLastStatus = j;
            if (this.mURLConnection == null)
            {
              this.mRetryCount -= 1;
              i = j;
              paramString = (String)localObject1;
              break;
            }
            if (j != 200) {
              break label711;
            }
            paramString = new StringBuilder();
            try
            {
              localObject2 = new BufferedReader(new InputStreamReader(this.mURLConnection.getInputStream()), 8192);
              for (;;)
              {
                str = ((BufferedReader)localObject2).readLine();
                if (str == null)
                {
                  ((BufferedReader)localObject2).close();
                  if (Config.DEBUG) {
                    Config.LogE("NetworkManager", paramString.toString());
                  }
                  return new ByteArrayInputStream(paramString.toString().getBytes("utf-8"));
                }
                paramString.append(str);
              }
            }
            catch (UnsupportedEncodingException paramString)
            {
              Config.LogD("NetworkManager", paramString.toString(), paramString);
              i = j;
              paramString = (String)localObject1;
            }
            catch (IOException paramString)
            {
              Config.LogD("NetworkManager", paramString.toString(), paramString);
              i = j;
              paramString = (String)localObject1;
            }
            catch (Exception paramString)
            {
              Config.LogD("NetworkManager", paramString.toString(), paramString);
              i = j;
              paramString = (String)localObject1;
            }
          }
        }
        break;
        label711:
        this.mLastError = -13;
        this.mRetryCount -= 1;
        i = j;
        paramString = (String)localObject1;
      }
      break;
      label735:
      paramString = "https://175.196.95.20:443/INAP_GW/inap_gw/getSymKeyGen";
    }
  }
  
  public InputStream getDataStandAlond(String paramString)
  {
    String str = null;
    if (paramString.equalsIgnoreCase("getSymKeyGen")) {
      str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason> 과금처리 실패 [OI1200:CP/SP 권한 체크시 에러가 발생하였습니다.] </reason></result><value><symmetric_key>8E0IU2955MUOEE2J</symmetric_key><seq_key>KEY0131103130171</seq_key></value></response>";
    }
    for (;;)
    {
      try
      {
        paramString = new ByteArrayInputStream(str.getBytes("utf-8"));
        return paramString;
      }
      catch (UnsupportedEncodingException paramString)
      {
        Config.LogE("NetworkManager", "getDataStandAlond() encoding error : " + paramString);
      }
      if (paramString.equalsIgnoreCase("getUseDiList")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
      } else if (paramString.equalsIgnoreCase("getBuyDiList")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
      } else if (paramString.equalsIgnoreCase("getAllDiList")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
      } else if (paramString.equalsIgnoreCase("getGiftDiList")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
      } else if (paramString.equalsIgnoreCase("getReceiveDiList")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
      } else if (paramString.equalsIgnoreCase("getDiDetail")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><di_id>di20110117000000001</di_id><di_title>디지털아이템명</di_title><desc>디지털아이템설명</desc><price>200</price><use_term>20110203</use_term><use_lmt_cnt>100</use_lmt_cnt></value></response>";
      } else if (paramString.equalsIgnoreCase("getDownloadDiList")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
      } else if (paramString.equalsIgnoreCase("buyDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
      } else if (paramString.equalsIgnoreCase("buyCancelDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
      } else if (paramString.equalsIgnoreCase("esBuyDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ollehstoreSoIP><resultCode>000</resultCode><resultMessage>정상</resultMessage></ollehstoreSoIP>";
      } else if (paramString.equalsIgnoreCase("giftDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
      } else if (paramString.equalsIgnoreCase("reGiftDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
      } else if (paramString.equalsIgnoreCase("approvedUseDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
      } else if (paramString.equalsIgnoreCase("approvedDownDi")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id><file_name>testfile</file_name><mime_type>txt</mime_type></value></response>";
      } else if (paramString.equalsIgnoreCase("getFile")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason> 사용자 인증 처리 실패 </reason><value><seq_key>KEY010110126347</seq_key><file2byte>UEsDBAoAAAAAAGt1hz6ZFwecEAAAABAAAAAQAAAAaW5hcEZpbGVUZXN0LnR4dGluYXBGaWxlRG93blRlc3RQSwECFAAKAAAAAABrdYc+mRcHnBAAAAAQAAAAEAAAAAAAAAAAACAAAAAAAAAAaW5hcEZpbGVUZXN0LnR4dFBLBQYAAAAAAQABAD4AAAA+AAAAAAA=</file2byte></value></result></response>";
      } else if (paramString.equalsIgnoreCase("getFile")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code> A005</code><reason> 사용자 인증 처리 실패 </reason><value><seq_key>KEY010110126347</seq_key><file2byte>UEsDBAoAAAAAAGt1hz6ZFwecEAAAABAAAAAQAAAAaW5hcEZpbGVUZXN0LnR4dGluYXBGaWxlRG93blRlc3RQSwECFAAKAAAAAABrdYc+mRcHnBAAAAAQAAAAEAAAAAAAAAAAACAAAAAAAAAAaW5hcEZpbGVUZXN0LnR4dFBLBQYAAAAAAQABAD4AAAA+AAAAAAA=</file2byte></value></result></response>";
      } else if (paramString.equalsIgnoreCase("checkShowId")) {
        str = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>사용자 인증 처리 실패 </reason></result><value><seq_key>KEY010110126347</seq_key><show_id>ollehmarket</show_id></value></response>";
      }
    }
    return null;
  }
  
  public int getLastError()
  {
    return this.mLastError;
  }
  
  public int getLastHttpCode()
  {
    return this.mLastStatus;
  }
  
  class GetGenHttpsConnection
    extends HttpsURLConnection
  {
    protected GetGenHttpsConnection(URL paramURL)
    {
      super();
    }
    
    public void connect()
      throws IOException
    {}
    
    public void disconnect() {}
    
    public String getCipherSuite()
    {
      return null;
    }
    
    public Certificate[] getLocalCertificates()
    {
      return null;
    }
    
    public Certificate[] getServerCertificates()
      throws SSLPeerUnverifiedException
    {
      return null;
    }
    
    public boolean usingProxy()
    {
      return false;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.net.NetworkManager
 * JD-Core Version:    0.7.0.1
 */