import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class q
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramd = (String)paramHashMap.get("string");
    paramHashMap = (String)paramHashMap.get("afma_notify_dt");
    a.c("Received log message: <\"string\": \"" + paramd + "\", \"afmaNotifyDt\": \"" + paramHashMap + "\">");
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     q
 * JD-Core Version:    0.7.0.1
 */