import android.content.Context;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Locale;

public final class k
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str = (String)paramHashMap.get("u");
    if (str == null)
    {
      a.e("Could not get URL from click gmsg.");
      return;
    }
    f localf = paramd.l();
    if (localf != null)
    {
      paramd = Uri.parse(str);
      paramHashMap = paramd.getHost();
      if ((paramHashMap != null) && (paramHashMap.toLowerCase(Locale.US).endsWith(".admob.com")))
      {
        paramHashMap = null;
        Object localObject = paramd.getPath();
        paramd = paramHashMap;
        if (localObject != null)
        {
          localObject = ((String)localObject).split("/");
          paramd = paramHashMap;
          if (localObject.length >= 4) {
            paramd = localObject[2] + "/" + localObject[3];
          }
        }
        localf.b(paramd);
      }
    }
    new Thread(new w(str, paramWebView.getContext().getApplicationContext())).start();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     k
 * JD-Core Version:    0.7.0.1
 */