import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class l
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    if ((paramWebView instanceof g))
    {
      ((g)paramWebView).a();
      return;
    }
    a.b("Trying to close WebView that isn't an AdWebView");
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     l
 * JD-Core Version:    0.7.0.1
 */