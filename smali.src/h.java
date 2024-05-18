import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.util.AdUtil;
import java.util.HashMap;
import java.util.Map;

public final class h
  extends WebViewClient
{
  private d a;
  private Map<String, i> b;
  private boolean c;
  private boolean d;
  private boolean e;
  private boolean f;
  
  public h(d paramd, Map<String, i> paramMap, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramd;
    this.b = paramMap;
    this.c = paramBoolean1;
    this.d = paramBoolean2;
    this.e = false;
    this.f = false;
  }
  
  public final void a()
  {
    this.e = true;
  }
  
  public final void b()
  {
    this.f = true;
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (this.e)
    {
      paramString = this.a.g();
      if (paramString == null) {
        break label45;
      }
      paramString.b();
    }
    for (;;)
    {
      this.e = false;
      if (this.f)
      {
        a.a(paramWebView);
        this.f = false;
      }
      return;
      label45:
      com.google.ads.util.a.a("adLoader was null while trying to setFinishedLoadingHtml().");
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    com.google.ads.util.a.a("shouldOverrideUrlLoading(\"" + paramString + "\")");
    Uri localUri = Uri.parse(paramString);
    Object localObject = AdUtil.b(localUri);
    if (localObject == null)
    {
      com.google.ads.util.a.e("An error occurred while parsing the url parameters.");
      return true;
    }
    localObject = (String)((HashMap)localObject).get("ai");
    if (localObject != null) {
      this.a.l().a((String)localObject);
    }
    if (a.a(localUri))
    {
      a.a(this.a, this.b, localUri, paramWebView);
      return true;
    }
    if (this.d)
    {
      if (AdUtil.a(localUri)) {
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      }
      paramWebView = new HashMap();
      paramWebView.put("u", paramString);
      AdActivity.launchAdActivity(this.a, new e("intent", paramWebView));
      return true;
    }
    if (this.c)
    {
      if ((this.a.w()) && (AdUtil.a(localUri))) {}
      for (paramWebView = "webapp";; paramWebView = "intent")
      {
        paramString = new HashMap();
        paramString.put("u", localUri.toString());
        AdActivity.launchAdActivity(this.a, new e(paramWebView, paramString));
        return true;
      }
    }
    com.google.ads.util.a.e("URL is not a GMSG and can't handle URL: " + paramString);
    return true;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     h
 * JD-Core Version:    0.7.0.1
 */