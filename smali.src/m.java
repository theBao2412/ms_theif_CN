import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.util.HashMap;

public final class m
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramd = (String)paramHashMap.get("js");
    if (paramd == null) {
      com.google.ads.util.a.b("Could not get the JS to evaluate.");
    }
    if ((paramWebView instanceof g))
    {
      paramHashMap = ((g)paramWebView).b();
      if (paramHashMap == null) {
        com.google.ads.util.a.b("Could not get the AdActivity from the AdWebView.");
      }
    }
    else
    {
      com.google.ads.util.a.b("Trying to evaluate JS in a WebView that isn't an AdWebView");
      return;
    }
    paramHashMap = paramHashMap.getOpeningAdWebView();
    if (paramHashMap == null)
    {
      com.google.ads.util.a.b("Could not get the opening WebView.");
      return;
    }
    a.a(paramHashMap, paramd);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     m
 * JD-Core Version:    0.7.0.1
 */