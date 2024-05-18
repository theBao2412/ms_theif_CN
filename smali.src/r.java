import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.util.a;
import java.util.HashMap;

public final class r
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramWebView = (String)paramHashMap.get("a");
    if (paramWebView == null)
    {
      a.a("Could not get the action parameter for open GMSG.");
      return;
    }
    if (paramWebView.equals("webapp"))
    {
      AdActivity.launchAdActivity(paramd, new e("webapp", paramHashMap));
      return;
    }
    AdActivity.launchAdActivity(paramd, new e("intent", paramHashMap));
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     r
 * JD-Core Version:    0.7.0.1
 */