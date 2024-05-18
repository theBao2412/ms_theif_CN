package com.Nexon.MapleThief;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.EGLContextFactory;
import android.opengl.GLSurfaceView.Renderer;
import android.util.Log;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

class BNVGLView
  extends GLSurfaceView
{
  private static long StartTime = 0L;
  private static final String TAG = "OpenGL";
  private static final boolean USING_MY_THREAD = false;
  private Thread m_GLThread;
  private boolean m_isThreadEnd;
  private boolean m_isThreadPause;
  
  public BNVGLView(Context paramContext)
  {
    super(paramContext);
    init(false, 8, 0);
    setRenderer(new Renderer());
  }
  
  private static void checkEglError(String paramString, EGL10 paramEGL10)
  {
    for (;;)
    {
      int i = paramEGL10.eglGetError();
      if (i == 12288) {
        return;
      }
      Log.e("OpenGL", String.format("%s: EGL error: 0x%x", new Object[] { paramString, Integer.valueOf(i) }));
    }
  }
  
  private void init(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean) {
      getHolder().setFormat(-3);
    }
    StartTime = System.currentTimeMillis();
    setEGLContextFactory(new ContextFactory(null));
    if (paramBoolean) {}
    for (ConfigChooser localConfigChooser = new ConfigChooser(8, 8, 8, 8, paramInt1, paramInt2);; localConfigChooser = new ConfigChooser(5, 6, 5, 0, paramInt1, paramInt2))
    {
      setEGLConfigChooser(localConfigChooser);
      return;
    }
  }
  
  public void onPause()
  {
    setRenderMode(0);
  }
  
  public void onResume()
  {
    setRenderMode(1);
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.v("Debug_Android", "GLView Changed w : " + paramInt2 + ", h : " + paramInt3);
    super.surfaceChanged(paramSurfaceHolder, paramInt1, paramInt2, paramInt3);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.v("Debug_Android", "GLView Created");
    super.surfaceCreated(paramSurfaceHolder);
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.v("Debug_Android", "GLView Destroyed");
    super.surfaceDestroyed(paramSurfaceHolder);
  }
  
  private static class ConfigChooser
    implements GLSurfaceView.EGLConfigChooser
  {
    private static int EGL_OPENGL_ES2_BIT = 4;
    private static int[] s_configAttribs2 = { 12324, 4, 12323, 4, 12322, 4, 12352, EGL_OPENGL_ES2_BIT, 12344 };
    protected int mAlphaSize;
    protected int mBlueSize;
    protected int mDepthSize;
    protected int mGreenSize;
    protected int mRedSize;
    protected int mStencilSize;
    private int[] mValue = new int[1];
    
    public ConfigChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
    {
      this.mRedSize = paramInt1;
      this.mGreenSize = paramInt2;
      this.mBlueSize = paramInt3;
      this.mAlphaSize = paramInt4;
      this.mDepthSize = paramInt5;
      this.mStencilSize = paramInt6;
    }
    
    private int findConfigAttrib(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
    {
      if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, this.mValue)) {
        paramInt2 = this.mValue[0];
      }
      return paramInt2;
    }
    
    private void printConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
    {
      int[] arrayOfInt1 = new int[33];
      int[] tmp8_6 = arrayOfInt1;
      tmp8_6[0] = 12320;
      int[] tmp14_8 = tmp8_6;
      tmp14_8[1] = 12321;
      int[] tmp20_14 = tmp14_8;
      tmp20_14[2] = 12322;
      int[] tmp26_20 = tmp20_14;
      tmp26_20[3] = 12323;
      int[] tmp32_26 = tmp26_20;
      tmp32_26[4] = 12324;
      int[] tmp38_32 = tmp32_26;
      tmp38_32[5] = 12325;
      int[] tmp44_38 = tmp38_32;
      tmp44_38[6] = 12326;
      int[] tmp51_44 = tmp44_38;
      tmp51_44[7] = 12327;
      int[] tmp58_51 = tmp51_44;
      tmp58_51[8] = 12328;
      int[] tmp65_58 = tmp58_51;
      tmp65_58[9] = 12329;
      int[] tmp72_65 = tmp65_58;
      tmp72_65[10] = 12330;
      int[] tmp79_72 = tmp72_65;
      tmp79_72[11] = 12331;
      int[] tmp86_79 = tmp79_72;
      tmp86_79[12] = 12332;
      int[] tmp93_86 = tmp86_79;
      tmp93_86[13] = 12333;
      int[] tmp100_93 = tmp93_86;
      tmp100_93[14] = 12334;
      int[] tmp107_100 = tmp100_93;
      tmp107_100[15] = 12335;
      int[] tmp114_107 = tmp107_100;
      tmp114_107[16] = 12336;
      int[] tmp121_114 = tmp114_107;
      tmp121_114[17] = 12337;
      int[] tmp128_121 = tmp121_114;
      tmp128_121[18] = 12338;
      int[] tmp135_128 = tmp128_121;
      tmp135_128[19] = 12339;
      int[] tmp142_135 = tmp135_128;
      tmp142_135[20] = 12340;
      int[] tmp149_142 = tmp142_135;
      tmp149_142[21] = 12343;
      int[] tmp156_149 = tmp149_142;
      tmp156_149[22] = 12342;
      int[] tmp163_156 = tmp156_149;
      tmp163_156[23] = 12341;
      int[] tmp170_163 = tmp163_156;
      tmp170_163[24] = 12345;
      int[] tmp177_170 = tmp170_163;
      tmp177_170[25] = 12346;
      int[] tmp184_177 = tmp177_170;
      tmp184_177[26] = 12347;
      int[] tmp191_184 = tmp184_177;
      tmp191_184[27] = 12348;
      int[] tmp198_191 = tmp191_184;
      tmp198_191[28] = 12349;
      int[] tmp205_198 = tmp198_191;
      tmp205_198[29] = 12350;
      int[] tmp212_205 = tmp205_198;
      tmp212_205[30] = 12351;
      int[] tmp219_212 = tmp212_205;
      tmp219_212[31] = 12352;
      int[] tmp226_219 = tmp219_212;
      tmp226_219[32] = 12354;
      tmp226_219;
      int[] arrayOfInt2 = new int[1];
      int i = 0;
      if (i >= arrayOfInt1.length) {
        return;
      }
      int j = arrayOfInt1[i];
      String str = new String[] { "EGL_BUFFER_SIZE", "EGL_ALPHA_SIZE", "EGL_BLUE_SIZE", "EGL_GREEN_SIZE", "EGL_RED_SIZE", "EGL_DEPTH_SIZE", "EGL_STENCIL_SIZE", "EGL_CONFIG_CAVEAT", "EGL_CONFIG_ID", "EGL_LEVEL", "EGL_MAX_PBUFFER_HEIGHT", "EGL_MAX_PBUFFER_PIXELS", "EGL_MAX_PBUFFER_WIDTH", "EGL_NATIVE_RENDERABLE", "EGL_NATIVE_VISUAL_ID", "EGL_NATIVE_VISUAL_TYPE", "EGL_PRESERVED_RESOURCES", "EGL_SAMPLES", "EGL_SAMPLE_BUFFERS", "EGL_SURFACE_TYPE", "EGL_TRANSPARENT_TYPE", "EGL_TRANSPARENT_RED_VALUE", "EGL_TRANSPARENT_GREEN_VALUE", "EGL_TRANSPARENT_BLUE_VALUE", "EGL_BIND_TO_TEXTURE_RGB", "EGL_BIND_TO_TEXTURE_RGBA", "EGL_MIN_SWAP_INTERVAL", "EGL_MAX_SWAP_INTERVAL", "EGL_LUMINANCE_SIZE", "EGL_ALPHA_MASK_SIZE", "EGL_COLOR_BUFFER_TYPE", "EGL_RENDERABLE_TYPE", "EGL_CONFORMANT" }[i];
      if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, j, arrayOfInt2)) {
        Log.w("OpenGL", String.format("  %s: %d\n", new Object[] { str, Integer.valueOf(arrayOfInt2[0]) }));
      }
      for (;;)
      {
        i += 1;
        break;
        Log.w("OpenGL", String.format("  %s: failed\n", new Object[] { str }));
        while (paramEGL10.eglGetError() != 12288) {}
      }
    }
    
    private void printConfigs(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
    {
      int j = paramArrayOfEGLConfig.length;
      Log.w("OpenGL", String.format("%d configurations", new Object[] { Integer.valueOf(j) }));
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          return;
        }
        Log.w("OpenGL", String.format("Configuration %d:\n", new Object[] { Integer.valueOf(i) }));
        printConfig(paramEGL10, paramEGLDisplay, paramArrayOfEGLConfig[i]);
        i += 1;
      }
    }
    
    public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay)
    {
      int[] arrayOfInt = new int[1];
      paramEGL10.eglChooseConfig(paramEGLDisplay, s_configAttribs2, null, 0, arrayOfInt);
      int i = arrayOfInt[0];
      if (i <= 0) {
        throw new IllegalArgumentException("No configs match configSpec");
      }
      EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
      paramEGL10.eglChooseConfig(paramEGLDisplay, s_configAttribs2, arrayOfEGLConfig, i, arrayOfInt);
      return chooseConfig(paramEGL10, paramEGLDisplay, arrayOfEGLConfig);
    }
    
    public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
    {
      int j = paramArrayOfEGLConfig.length;
      int i = 0;
      if (i >= j) {
        return null;
      }
      EGLConfig localEGLConfig = paramArrayOfEGLConfig[i];
      int k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12325, 0);
      int m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12326, 0);
      if ((k < this.mDepthSize) || (m < this.mStencilSize)) {}
      int n;
      int i1;
      do
      {
        i += 1;
        break;
        k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12324, 0);
        m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12323, 0);
        n = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12322, 0);
        i1 = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12321, 0);
      } while ((k != this.mRedSize) || (m != this.mGreenSize) || (n != this.mBlueSize) || (i1 != this.mAlphaSize));
      return localEGLConfig;
    }
  }
  
  private static class ContextFactory
    implements GLSurfaceView.EGLContextFactory
  {
    private static int EGL_CONTEXT_CLIENT_VERSION = 12440;
    
    public EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
    {
      Log.w("OpenGL", "creating OpenGL ES 2.0 context");
      BNVGLView.checkEglError("Before eglCreateContext", paramEGL10);
      int i = EGL_CONTEXT_CLIENT_VERSION;
      paramEGLDisplay = paramEGL10.eglCreateContext(paramEGLDisplay, paramEGLConfig, EGL10.EGL_NO_CONTEXT, new int[] { i, 2, 12344 });
      BNVGLView.checkEglError("After eglCreateContext", paramEGL10);
      return paramEGLDisplay;
    }
    
    public void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
    {
      paramEGL10.eglDestroyContext(paramEGLDisplay, paramEGLContext);
    }
  }
  
  class Renderer
    implements GLSurfaceView.Renderer
  {
    Renderer() {}
    
    public void onDrawFrame(GL10 paramGL10)
    {
      long l = System.currentTimeMillis() - BNVGLView.StartTime;
      if (l < NativeClass.FPS) {}
      try
      {
        Thread.sleep(NativeClass.FPS - l);
        BNVGLView.StartTime = System.currentTimeMillis();
        NativeClass.OnNativeFrame();
        return;
      }
      catch (InterruptedException paramGL10)
      {
        for (;;)
        {
          paramGL10.printStackTrace();
        }
      }
    }
    
    public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
    {
      Log.v("Debug_Android", "GLView Renderer Changed w : " + paramInt1 + ", h : " + paramInt2);
      NativeClass.OnNativeSize(paramInt1, paramInt2);
    }
    
    public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
    {
      Log.v("Debug_Android", "GLView Renderer Created");
      NativeClass.OnNativeInitialize();
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.BNVGLView
 * JD-Core Version:    0.7.0.1
 */