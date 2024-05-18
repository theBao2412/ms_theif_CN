import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class w
  implements Runnable
{
  private Context a;
  private String b;
  
  public w(String paramString, Context paramContext)
  {
    this.b = paramString;
    this.a = paramContext;
  }
  
  public final void run()
  {
    try
    {
      a.a("Pinging URL: " + this.b);
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(this.b).openConnection();
      try
      {
        AdUtil.a(localHttpURLConnection, this.a);
        localHttpURLConnection.setInstanceFollowRedirects(true);
        localHttpURLConnection.connect();
        int i = localHttpURLConnection.getResponseCode();
        if ((i < 200) || (i >= 300)) {
          a.e("Did not receive 2XX (got " + i + ") from pinging URL: " + this.b);
        }
        return;
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
      return;
    }
    catch (IOException localIOException)
    {
      a.b("Unable to ping the URL: " + this.b, localIOException);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     w
 * JD-Core Version:    0.7.0.1
 */