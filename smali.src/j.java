import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import java.util.HashMap;

public final class j
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramd = (String)paramHashMap.get("urls");
    if (paramd == null)
    {
      com.google.ads.util.a.e("Could not get the urls param from canOpenURLs gmsg.");
      return;
    }
    paramHashMap = paramd.split(",");
    HashMap localHashMap = new HashMap();
    PackageManager localPackageManager = paramWebView.getContext().getPackageManager();
    int j = paramHashMap.length;
    int i = 0;
    if (i < j)
    {
      Object localObject = paramHashMap[i];
      paramd = localObject.split(";", 2);
      String str = paramd[0];
      if (paramd.length >= 2)
      {
        paramd = paramd[1];
        label89:
        if (localPackageManager.resolveActivity(new Intent(paramd, Uri.parse(str)), 65536) == null) {
          break label143;
        }
      }
      label143:
      for (boolean bool = true;; bool = false)
      {
        localHashMap.put(localObject, Boolean.valueOf(bool));
        i += 1;
        break;
        paramd = "android.intent.action.VIEW";
        break label89;
      }
    }
    a.a(paramWebView, localHashMap);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     j
 * JD-Core Version:    0.7.0.1
 */