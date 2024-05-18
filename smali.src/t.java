import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class t
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    paramHashMap = (String)paramHashMap.get("applicationTimeout");
    if (paramHashMap != null) {}
    try
    {
      paramd.a((Float.parseFloat(paramHashMap) * 1000.0F));
      return;
    }
    catch (NumberFormatException paramd)
    {
      a.b("Trying to set applicationTimeout to invalid value: " + paramHashMap, paramd);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     t
 * JD-Core Version:    0.7.0.1
 */