import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class p
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramWebView = (String)paramHashMap.get("url");
    paramHashMap = (String)paramHashMap.get("afma_notify_dt");
    a.c("Received ad url: <\"url\": \"" + paramWebView + "\", \"afmaNotifyDt\": \"" + paramHashMap + "\">");
    paramd = paramd.g();
    if (paramd != null) {
      paramd.b(paramWebView);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     p
 * JD-Core Version:    0.7.0.1
 */