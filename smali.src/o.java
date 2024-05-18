import android.webkit.WebView;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.util.a;
import java.util.HashMap;

public final class o
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramWebView = (String)paramHashMap.get("type");
    paramHashMap = (String)paramHashMap.get("errors");
    a.e("Invalid " + paramWebView + " request error: " + paramHashMap);
    paramd = paramd.g();
    if (paramd != null) {
      paramd.a(AdRequest.ErrorCode.INVALID_REQUEST);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     o
 * JD-Core Version:    0.7.0.1
 */