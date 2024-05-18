import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.AdSize;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;

public final class g
  extends WebView
{
  private AdActivity a;
  private AdSize b;
  
  public g(Context paramContext, AdSize paramAdSize)
  {
    super(paramContext);
    this.b = paramAdSize;
    setBackgroundColor(0);
    AdUtil.a(this);
    getSettings().setJavaScriptEnabled(true);
    setScrollBarStyle(0);
  }
  
  public final void a()
  {
    if (this.a != null) {
      this.a.finish();
    }
  }
  
  public final void a(AdActivity paramAdActivity)
  {
    this.a = paramAdActivity;
  }
  
  public final AdActivity b()
  {
    return this.a;
  }
  
  public final void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
      return;
    }
    catch (Exception paramString1)
    {
      a.a("An error occurred while loading data in AdWebView:", paramString1);
    }
  }
  
  public final void loadUrl(String paramString)
  {
    try
    {
      super.loadUrl(paramString);
      return;
    }
    catch (Exception paramString)
    {
      a.a("An error occurred while loading a URL in AdWebView:", paramString);
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if (isInEditMode())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    if (this.b == null)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = View.MeasureSpec.getSize(paramInt2);
    float f = getContext().getResources().getDisplayMetrics().density;
    int n = (int)(this.b.getWidth() * f);
    int i1 = (int)(this.b.getHeight() * f);
    if ((i == 0) || (k == 0))
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    if ((n - 6.0F * f > j) || (i1 > m))
    {
      a.e("Not enough space to show ad! Wants: <" + n + ", " + i1 + ">, Has: <" + j + ", " + m + ">");
      setVisibility(8);
      setMeasuredDimension(0, 0);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     g
 * JD-Core Version:    0.7.0.1
 */