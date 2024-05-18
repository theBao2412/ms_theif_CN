package net.daum.adam.publisher.impl.c;

import android.app.AlertDialog;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import net.daum.adam.publisher.impl.d.a;
import net.daum.adam.publisher.impl.e;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;

public class p
  extends WebView
{
  private static final String a = "MraidView";
  private static final int b = -1;
  private static final int c = 10000;
  private static final int d = 5000;
  private int e = -2;
  private int f = -2;
  private WebViewClient g;
  private WebChromeClient h;
  private Handler i = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      final p localp;
      do
      {
        return;
        localp = p.this;
        if (localp.g() != null) {
          localp.g().onFailure(null);
        }
      } while ((localp.m() == null) || (!localp.m().c().equals(p.a.b)));
      String str2 = "Ad@m 광고 페이지 수신에 실패했습니다.";
      String str1 = str2;
      if (paramAnonymousMessage.obj != null)
      {
        str1 = str2;
        if ((paramAnonymousMessage.obj instanceof String)) {
          str1 = (String)paramAnonymousMessage.obj;
        }
      }
      a.a().b();
      a.a().a(str1).a("확인", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          a.a().b();
          localp.m().g();
        }
      }).a(true).a(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymous2DialogInterface)
        {
          a.a().b();
          localp.m().g();
        }
      }).a(localp.getContext()).c().show();
    }
  };
  private boolean j;
  private k k;
  private b l;
  private l m;
  private boolean n = true;
  private g o;
  private f p;
  private k q;
  private h r;
  private e s;
  private j t;
  private i u;
  
  public p(Context paramContext)
  {
    this(paramContext, false);
  }
  
  p(Context paramContext, a parama, d paramd, l paraml)
  {
    super(paramContext);
    this.m = paraml;
    a(parama, paramd);
  }
  
  public p(Context paramContext, boolean paramBoolean) {}
  
  private void a(a parama, d paramd)
  {
    e.b("MraidView", "initialize");
    setBackgroundColor(0);
    WebSettings localWebSettings = getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDefaultTextEncodingName("utf-8");
    localWebSettings.setLoadsImagesAutomatically(true);
    if (parama.equals(a.a))
    {
      setScrollContainer(false);
      setVerticalScrollBarEnabled(false);
      setHorizontalScrollBarEnabled(false);
    }
    this.l = new b(this);
    this.k = new k(this, parama, paramd);
    this.g = new c(this.i);
    setWebViewClient(this.g);
    this.h = new b(null);
    setWebChromeClient(this.h);
    b(e.a());
  }
  
  private boolean a(URI paramURI)
  {
    e.b("MraidView", "executeCommand : " + paramURI.toASCIIString());
    String str = paramURI.getHost();
    Object localObject = URLEncodedUtils.parse(paramURI, "UTF-8");
    paramURI = new HashMap();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)((Iterator)localObject).next();
      paramURI.put(localNameValuePair.getName(), localNameValuePair.getValue());
    }
    paramURI = i.a(str, paramURI, this);
    if (paramURI == null)
    {
      b(str);
      return false;
    }
    paramURI.a();
    b(str);
    return true;
  }
  
  private boolean d(String paramString)
  {
    return (".mov".endsWith(paramString)) || (".avi".endsWith(paramString)) || (".mpg".endsWith(paramString)) || (".mpeg".endsWith(paramString)) || (".wmv".endsWith(paramString)) || (".wma".endsWith(paramString)) || (".mp4".endsWith(paramString)) || (".3pg".endsWith(paramString));
  }
  
  private void q()
  {
    if (this.r != null) {
      this.r.onFailure(this);
    }
  }
  
  protected l a()
  {
    return this.m;
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    this.e = paramInt1;
    this.f = paramInt2;
  }
  
  protected void a(String paramString)
  {
    e.b("MraidView", "Execute javascript : " + paramString);
    if (paramString != null) {}
    try
    {
      super.loadUrl("javascript:" + paramString);
      return;
    }
    catch (Exception paramString)
    {
      e.a("MraidView", paramString.toString(), paramString);
    }
  }
  
  protected void a(String paramString1, String paramString2)
  {
    a("window.mraidbridge.fireErrorEvent('" + paramString1 + "', '" + paramString2 + "');");
  }
  
  protected void a(ArrayList<m> paramArrayList)
  {
    paramArrayList = paramArrayList.toString();
    paramArrayList = "{" + paramArrayList.substring(1, paramArrayList.length() - 1) + "}";
    a("window.mraidbridge.fireChangeEvent(" + paramArrayList + ");");
    Log.d("MraidView", "Fire changes: " + paramArrayList);
  }
  
  protected void a(m paramm)
  {
    paramm = "{" + paramm.toString() + "}";
    a("window.mraidbridge.fireChangeEvent(" + paramm + ");");
    Log.d("MraidView", "Fire change: " + paramm);
  }
  
  public void a(e parame)
  {
    this.s = parame;
  }
  
  public void a(f paramf)
  {
    this.p = paramf;
  }
  
  public void a(g paramg)
  {
    this.o = paramg;
  }
  
  public void a(h paramh)
  {
    this.r = paramh;
  }
  
  public void a(i parami)
  {
    this.u = parami;
  }
  
  public void a(j paramj)
  {
    this.t = paramj;
  }
  
  public void a(k paramk)
  {
    this.q = paramk;
  }
  
  public void a(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public void a(float[] paramArrayOfFloat)
  {
    e.b("MraidView", "MRAID App Mode");
    a("window.mraidbridge.fireTileEvent(" + paramArrayOfFloat[0] + "," + paramArrayOfFloat[1] + "," + paramArrayOfFloat[2] + ")");
  }
  
  protected void b(String paramString)
  {
    a("window.mraidbridge.nativeCallComplete('" + paramString + "');");
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      getSettings().setCacheMode(-1);
      setDrawingCacheEnabled(true);
      return;
    }
    getSettings().setCacheMode(2);
    clearCache(true);
    setDrawingCacheEnabled(false);
  }
  
  public boolean b()
  {
    if (m() != null) {
      return m().f();
    }
    return false;
  }
  
  public boolean c()
  {
    return this.n;
  }
  
  public boolean c(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 1)) {
      return false;
    }
    e.b("MraidView", "processClickAction : " + paramString);
    for (;;)
    {
      try
      {
        localObject = Uri.parse(paramString);
        if (paramString.startsWith("tel:"))
        {
          localObject = new Intent("android.intent.action.DIAL", (Uri)localObject);
          if (d(paramString)) {
            ((Intent)localObject).setDataAndType(Uri.parse(paramString), "video/*");
          }
          if (localObject != null)
          {
            ((Intent)localObject).addFlags(402653184);
            localObject = PendingIntent.getActivity(getContext(), 0, (Intent)localObject, 0);
          }
        }
      }
      catch (Throwable localThrowable)
      {
        Object localObject;
        if (!paramString.startsWith("tel:")) {
          continue;
        }
        Toast.makeText(getContext(), "전화 기능이 지원되지 않습니다", 1).show();
        return false;
        e.a("Click failed:" + paramString, localCanceledException);
      }
      try
      {
        ((PendingIntent)localObject).send();
        return true;
      }
      catch (PendingIntent.CanceledException localCanceledException)
      {
        e.a("MraidView", localCanceledException.toString(), localCanceledException);
        return false;
      }
      localObject = new Intent("android.intent.action.VIEW", (Uri)localObject);
    }
    return false;
  }
  
  public g d()
  {
    return this.o;
  }
  
  public void destroy()
  {
    if (this.k != null)
    {
      e.b("MraidView", "Release MraidDisplayController resources");
      this.k.d();
    }
    super.destroy();
  }
  
  public f e()
  {
    return this.p;
  }
  
  public k f()
  {
    return this.q;
  }
  
  public h g()
  {
    return this.r;
  }
  
  public e h()
  {
    return this.s;
  }
  
  public j i()
  {
    return this.t;
  }
  
  public i j()
  {
    return this.u;
  }
  
  protected void k()
  {
    a("window.mraidbridge.setAdamProperties({'isApp':true});");
    e.b("MraidView", "MRAID App Mode");
  }
  
  protected void l()
  {
    a("window.mraidbridge.fireReadyEvent();");
  }
  
  public void loadUrl(String paramString)
  {
    Object localObject1 = new DefaultHttpClient();
    Object localObject2 = new HttpGet(paramString);
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      localObject2 = ((HttpClient)localObject1).execute((HttpUriRequest)localObject2);
      localObject1 = ((HttpResponse)localObject2).getEntity();
      localObject2 = "" + ((HttpResponse)localObject2).getStatusLine().getStatusCode();
      if ((((String)localObject2).charAt(0) != '2') && (((String)localObject2).charAt(0) != '3'))
      {
        q();
        return;
      }
      if (localObject1 != null)
      {
        localObject1 = ((HttpEntity)localObject1).getContent();
        localObject2 = new byte[4096];
        for (;;)
        {
          int i1 = ((InputStream)localObject1).read((byte[])localObject2);
          if (i1 == -1) {
            break;
          }
          localStringBuffer.append(new String((byte[])localObject2, 0, i1));
        }
      }
      loadDataWithBaseURL(paramString, localStringBuffer.toString(), "text/html", "UTF-8", null);
    }
    catch (ClientProtocolException paramString)
    {
      q();
      return;
    }
    catch (IOException paramString)
    {
      q();
      return;
    }
    catch (Exception paramString)
    {
      q();
      return;
    }
  }
  
  public k m()
  {
    return this.k;
  }
  
  public b n()
  {
    return this.l;
  }
  
  public int o()
  {
    return this.e;
  }
  
  public int p()
  {
    return this.f;
  }
  
  public static enum a
  {
    private a() {}
  }
  
  private class b
    extends WebChromeClient
  {
    private b() {}
    
    public void onConsoleMessage(String paramString1, int paramInt, String paramString2)
    {
      if (paramString1.toLowerCase().indexOf("error") > -1) {}
    }
    
    public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      return false;
    }
  }
  
  private class c
    extends WebViewClient
  {
    AtomicBoolean a = null;
    Object b = null;
    Handler c = null;
    Thread d = null;
    ProgressDialog e = null;
    
    public c(Handler paramHandler)
    {
      this.c = paramHandler;
      this.a = new AtomicBoolean(true);
      this.b = new Object();
    }
    
    public void onLoadResource(WebView paramWebView, String paramString)
    {
      e.b("MraidView", "Loaded resource: " + paramString);
      super.onLoadResource(paramWebView, paramString);
    }
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      this.a.set(false);
      if ((paramWebView instanceof p)) {
        paramString = (p)paramWebView;
      }
      for (;;)
      {
        if ((this.d != null) && (this.d.isAlive()))
        {
          this.d.interrupt();
          this.d = null;
        }
        if (paramString != null) {}
        try
        {
          if ((paramString.m() != null) && (paramString.m().c().equals(p.a.b)) && (this.e != null) && (this.e.isShowing())) {
            this.e.dismiss();
          }
          if ((!p.a(p.this)) && (p.b(p.this)))
          {
            p.this.k();
            p.c(p.this).e();
            p.this.a(l.a(p.d(p.this)));
            p.this.a(q.a(true));
            p.this.l();
            if (p.this.f() != null) {
              p.this.f().a(p.this);
            }
            p.a(p.this, true);
          }
          if (p.this.j() != null) {
            p.this.j().onLoad((p)paramWebView);
          }
          return;
          paramString = null;
        }
        catch (Exception paramString)
        {
          for (;;)
          {
            e.a("MraidView", paramString.toString(), paramString);
          }
        }
      }
    }
    
    public void onPageStarted(final WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      if ((paramWebView instanceof p)) {}
      for (paramWebView = (p)paramWebView;; paramWebView = null) {
        try
        {
          if (this.d != null)
          {
            this.d.interrupt();
            this.d = null;
          }
          this.d = new Thread("CheckIfContentDelayLoading")
          {
            public void run()
            {
              long l = System.currentTimeMillis();
              try
              {
                e.b("MraidView", "++++++++++++++++++++ Contents Loading ++++++++++++++++++++");
                if ((paramWebView != null) && (paramWebView.m() != null) && (paramWebView.m().c().equals(p.a.b))) {
                  Thread.sleep(10000L);
                }
                while (Thread.interrupted())
                {
                  e.b("MraidView", "" + (System.currentTimeMillis() - l) + " Millis");
                  return;
                  Thread.sleep(5000L);
                }
              }
              catch (InterruptedException localInterruptedException)
              {
                for (;;)
                {
                  e.b("MraidView", "++++++++++++++++++++ Thread has been interrupted ++++++++++++++++++++");
                }
                synchronized (p.c.this.b)
                {
                  e.b("MraidView", "" + (System.currentTimeMillis() - l) + " Millis");
                  if (p.c.this.a.get())
                  {
                    e.b("MraidView", "++++++++++++++++++++ Thread timeout ++++++++++++++++++++");
                    if ((p.c.this.e != null) && (p.c.this.e.isShowing())) {
                      p.c.this.e.dismiss();
                    }
                    p.c.this.c.sendEmptyMessage(-1);
                    return;
                  }
                }
                e.b("MraidView", "++++++++++++++++++++ Success Loading ++++++++++++++++++++");
              }
            }
          };
          int i = this.d.getPriority();
          try
          {
            this.d.setPriority(net.daum.adam.publisher.impl.i.a.intValue());
            this.d.start();
            if ((paramWebView != null) && (paramWebView.m() != null) && (paramWebView.m().c().equals(p.a.b)))
            {
              this.e = ProgressDialog.show(p.this.getContext(), "", "페이지를 불러오고 있습니다.\n잠시만 기다려주세요.", true);
              this.e.setCancelable(true);
              this.e.setOnCancelListener(new DialogInterface.OnCancelListener()
              {
                public void onCancel(DialogInterface paramAnonymousDialogInterface)
                {
                  e.b("MraidView", "Close window before expandable ad loaded");
                  p.this.stopLoading();
                  p.this.m().g();
                }
              });
              return;
            }
          }
          catch (Exception paramString)
          {
            for (;;)
            {
              this.d.setPriority(i);
            }
          }
          return;
        }
        catch (Exception paramWebView)
        {
          e.a("MraidView", paramWebView.toString(), paramWebView);
        }
      }
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      this.a.set(false);
      if ((paramWebView instanceof p)) {}
      for (paramWebView = (p)paramWebView;; paramWebView = null)
      {
        if (paramWebView != null) {}
        try
        {
          if ((paramWebView.m() != null) && (paramWebView.m().c().equals(p.a.b)) && (this.e != null) && (this.e.isShowing())) {
            this.e.dismiss();
          }
          if ((this.d != null) && (this.d.isAlive()))
          {
            this.d.interrupt();
            this.d = null;
          }
        }
        catch (Exception paramWebView)
        {
          for (;;)
          {
            e.a("MraidView", paramWebView.toString(), paramWebView);
          }
        }
        e.b("MraidView", "Error: " + paramString1);
        paramWebView = new Message();
        paramWebView.what = -1;
        paramWebView.obj = paramString1;
        this.c.sendMessage(paramWebView);
        return;
      }
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView = Uri.parse(paramString).getScheme();
      if ((p.this.c()) && (paramWebView.equals("mraid")))
      {
        p.a(p.this, URI.create(paramString));
        return true;
      }
      return p.this.c(paramString);
    }
  }
  
  public static enum d
  {
    private d() {}
  }
  
  public static abstract interface e
  {
    public abstract void a(p paramp, boolean paramBoolean);
  }
  
  public static abstract interface f
  {
    public abstract void onClose(p paramp, p.m paramm);
  }
  
  public static abstract interface g
  {
    public abstract void onExpand(p paramp);
  }
  
  public static abstract interface h
  {
    public abstract void onFailure(p paramp);
  }
  
  public static abstract interface i
  {
    public abstract void onLoad(p paramp);
  }
  
  public static abstract interface j
  {
    public abstract void onOpen(p paramp, p.a parama);
  }
  
  public static abstract interface k
  {
    public abstract void a(p paramp);
  }
  
  public static enum l
  {
    private l() {}
  }
  
  public static enum m
  {
    private m() {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.p
 * JD-Core Version:    0.7.0.1
 */