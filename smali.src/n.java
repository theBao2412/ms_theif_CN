import android.content.Context;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class n
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramd = (String)paramHashMap.get("u");
    if (paramd == null)
    {
      a.e("Could not get URL from click gmsg.");
      return;
    }
    new Thread(new w(paramd, paramWebView.getContext().getApplicationContext())).start();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     n
 * JD-Core Version:    0.7.0.1
 */