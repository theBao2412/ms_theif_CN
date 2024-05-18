package net.daum.adam.publisher.impl.a;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import net.daum.adam.publisher.AdView;
import net.daum.adam.publisher.AdView.AnimationType;

public class a
{
  private static final long c = 300L;
  private AdView a;
  private Animation.AnimationListener b;
  
  public a(AdView paramAdView, Animation.AnimationListener paramAnimationListener)
  {
    this.a = paramAdView;
    this.b = paramAnimationListener;
  }
  
  public void a(AdView.AnimationType paramAnimationType)
  {
    b localb;
    if (paramAnimationType == AdView.AnimationType.FLIP_HORIZONTAL)
    {
      localb = new b(0.0F, 90.0F, this.a.getWidth() / 2.0F, this.a.getHeight() / 2.0F, 0.0F, false);
      localb.setDuration(300L);
      localb.setFillAfter(false);
      localb.setAnimationListener(this.b);
      localb.setInterpolator(new AccelerateInterpolator());
      this.a.setAnimationHide(localb);
      localb = new b(270.0F, 360.0F, this.a.getWidth() / 2.0F, this.a.getHeight() / 2.0F, 0.0F, false);
      localb.setDuration(300L);
      localb.setFillAfter(false);
      localb.setAnimationListener(this.b);
      localb.setInterpolator(new DecelerateInterpolator());
      this.a.setAnimationShow(localb);
    }
    for (;;)
    {
      if ((paramAnimationType != AdView.AnimationType.NONE) && (this.a.getAnimationHide() != null)) {
        this.a.startAnimation(this.a.getAnimationHide());
      }
      return;
      if (paramAnimationType == AdView.AnimationType.FLIP_VERTICAL)
      {
        localb = new b(0.0F, 90.0F, this.a.getWidth() / 2.0F, this.a.getHeight() / 2.0F, 0.0F, false, true);
        localb.setDuration(300L);
        localb.setFillAfter(false);
        localb.setAnimationListener(this.b);
        localb.setInterpolator(new AccelerateInterpolator());
        this.a.setAnimationHide(localb);
        localb = new b(270.0F, 360.0F, this.a.getWidth() / 2.0F, this.a.getHeight() / 2.0F, 0.0F, false, true);
        localb.setDuration(300L);
        localb.setFillAfter(false);
        localb.setAnimationListener(this.b);
        localb.setInterpolator(new DecelerateInterpolator());
        this.a.setAnimationShow(localb);
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.a.a
 * JD-Core Version:    0.7.0.1
 */