package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import d;

public class AdView
  extends RelativeLayout
  implements Ad
{
  private d a;
  
  public AdView(Activity paramActivity, AdSize paramAdSize, String paramString)
  {
    super(paramActivity.getApplicationContext());
    if (!a(paramActivity, paramAdSize, null)) {
      return;
    }
    a(paramActivity, paramAdSize, paramString);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet);
  }
  
  private void a(Activity paramActivity, AdSize paramAdSize, String paramString)
  {
    this.a = new d(paramActivity, this, paramAdSize, paramString, false);
    setGravity(17);
    setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    int i = (int)TypedValue.applyDimension(1, paramAdSize.getWidth(), paramActivity.getResources().getDisplayMetrics());
    int j = (int)TypedValue.applyDimension(1, paramAdSize.getHeight(), paramActivity.getResources().getDisplayMetrics());
    addView(this.a.i(), i, j);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return;
    }
    Object localObject1 = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adSize");
    if (localObject1 == null)
    {
      a(paramContext, "AdView missing required XML attribute \"adSize\".", AdSize.BANNER, paramAttributeSet);
      return;
    }
    if ("BANNER".equals(localObject1)) {
      localObject1 = AdSize.BANNER;
    }
    String str1;
    for (;;)
    {
      str1 = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adUnitId");
      if (str1 != null) {
        break label166;
      }
      a(paramContext, "AdView missing required XML attribute \"adUnitId\".", (AdSize)localObject1, paramAttributeSet);
      return;
      if ("IAB_MRECT".equals(localObject1))
      {
        localObject1 = AdSize.IAB_MRECT;
      }
      else if ("IAB_BANNER".equals(localObject1))
      {
        localObject1 = AdSize.IAB_BANNER;
      }
      else
      {
        if (!"IAB_LEADERBOARD".equals(localObject1)) {
          break;
        }
        localObject1 = AdSize.IAB_LEADERBOARD;
      }
    }
    a(paramContext, "Invalid \"adSize\" value in XML layout: " + (String)localObject1 + ".", AdSize.BANNER, paramAttributeSet);
    return;
    label166:
    if (isInEditMode())
    {
      a(paramContext, "Ads by Google", -1, (AdSize)localObject1, paramAttributeSet);
      return;
    }
    Object localObject2;
    String str2;
    TypedValue localTypedValue;
    if (str1.startsWith("@string/"))
    {
      localObject2 = str1.substring("@string/".length());
      str2 = paramContext.getPackageName();
      localTypedValue = new TypedValue();
    }
    for (;;)
    {
      try
      {
        getResources().getValue(str2 + ":string/" + (String)localObject2, localTypedValue, true);
        if (localTypedValue.string != null)
        {
          str1 = localTypedValue.string.toString();
          boolean bool = paramAttributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", "loadAdOnCreate", false);
          if (!(paramContext instanceof Activity)) {
            break label476;
          }
          localObject2 = (Activity)paramContext;
          if (!a(paramContext, (AdSize)localObject1, paramAttributeSet)) {
            break;
          }
          a((Activity)localObject2, (AdSize)localObject1, str1);
          if (!bool) {
            break;
          }
          paramContext = new AdRequest();
          paramAttributeSet = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "keywords");
          if (paramAttributeSet == null) {
            break label470;
          }
          paramAttributeSet = paramAttributeSet.split(",");
          int j = paramAttributeSet.length;
          int i = 0;
          if (i >= j) {
            break label470;
          }
          localObject1 = paramAttributeSet[i].trim();
          if (((String)localObject1).length() != 0) {
            paramContext.addKeyword((String)localObject1);
          }
          i += 1;
          continue;
        }
        a(paramContext, "\"adUnitId\" was not a string: \"" + str1 + "\".", (AdSize)localObject1, paramAttributeSet);
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        a(paramContext, "Could not find resource for \"adUnitId\": \"" + str1 + "\".", (AdSize)localObject1, paramAttributeSet);
        return;
      }
    }
    label470:
    loadAd(paramContext);
    return;
    label476:
    a.b("AdView was initialized with a Context that wasn't an Activity.");
  }
  
  private void a(Context paramContext, String paramString, int paramInt, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    TextView localTextView;
    if (getChildCount() == 0)
    {
      if (paramAttributeSet != null) {
        break label164;
      }
      localTextView = new TextView(paramContext);
      localTextView.setGravity(17);
      localTextView.setText(paramString);
      localTextView.setTextColor(paramInt);
      localTextView.setBackgroundColor(-16777216);
      if (paramAttributeSet != null) {
        break label179;
      }
      paramString = new LinearLayout(paramContext);
      label62:
      paramString.setGravity(17);
      if (paramAttributeSet != null) {
        break label193;
      }
    }
    label164:
    label179:
    label193:
    for (paramAttributeSet = new LinearLayout(paramContext);; paramAttributeSet = new LinearLayout(paramContext, paramAttributeSet))
    {
      paramAttributeSet.setGravity(17);
      paramAttributeSet.setBackgroundColor(paramInt);
      paramInt = (int)TypedValue.applyDimension(1, paramAdSize.getWidth(), paramContext.getResources().getDisplayMetrics());
      int i = (int)TypedValue.applyDimension(1, paramAdSize.getHeight(), paramContext.getResources().getDisplayMetrics());
      paramString.addView(localTextView, paramInt - 2, i - 2);
      paramAttributeSet.addView(paramString);
      addView(paramAttributeSet, paramInt, i);
      return;
      localTextView = new TextView(paramContext, paramAttributeSet);
      break;
      paramString = new LinearLayout(paramContext, paramAttributeSet);
      break label62;
    }
  }
  
  private void a(Context paramContext, String paramString, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    a.b(paramString);
    a(paramContext, paramString, -65536, paramAdSize, paramAttributeSet);
    if (!isInEditMode())
    {
      if ((paramContext instanceof Activity)) {
        a((Activity)paramContext, paramAdSize, "");
      }
    }
    else {
      return;
    }
    a.b("AdView was initialized with a Context that wasn't an Activity.");
  }
  
  private boolean a(Context paramContext, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    if (!AdUtil.b(paramContext))
    {
      a(paramContext, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", paramAdSize, paramAttributeSet);
      return false;
    }
    return true;
  }
  
  public void destroy()
  {
    this.a.b();
  }
  
  public boolean isReady()
  {
    if (this.a == null) {
      return false;
    }
    return this.a.o();
  }
  
  public boolean isRefreshing()
  {
    return this.a.p();
  }
  
  public void loadAd(AdRequest paramAdRequest)
  {
    if (isRefreshing()) {
      this.a.c();
    }
    this.a.a(paramAdRequest);
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    this.a.a(paramAdListener);
  }
  
  public void stopLoading()
  {
    this.a.z();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.AdView
 * JD-Core Version:    0.7.0.1
 */