package net.daum.adam.publisher.impl.a;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class b
  extends Animation
{
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private final boolean f;
  private final boolean g;
  private Camera h;
  
  public b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramBoolean, false);
  }
  
  public b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramFloat3;
    this.d = paramFloat4;
    this.e = paramFloat5;
    this.f = paramBoolean1;
    this.g = paramBoolean2;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = this.a;
    f1 += (this.b - f1) * paramFloat;
    float f2 = this.c;
    float f3 = this.d;
    Camera localCamera = this.h;
    paramTransformation = paramTransformation.getMatrix();
    localCamera.save();
    if (this.f)
    {
      localCamera.translate(0.0F, 0.0F, this.e * paramFloat);
      if (!this.g) {
        break label127;
      }
      localCamera.rotateY(f1);
    }
    for (;;)
    {
      localCamera.getMatrix(paramTransformation);
      localCamera.restore();
      paramTransformation.preTranslate(-f2, -f3);
      paramTransformation.postTranslate(f2, f3);
      return;
      localCamera.translate(0.0F, 0.0F, this.e * (1.0F - paramFloat));
      break;
      label127:
      localCamera.rotateX(f1);
    }
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    this.h = new Camera();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.a.b
 * JD-Core Version:    0.7.0.1
 */