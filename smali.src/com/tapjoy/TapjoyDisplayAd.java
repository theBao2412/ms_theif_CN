package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import java.io.ByteArrayInputStream;
import java.util.Timer;
import java.util.TimerTask;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

public class TapjoyDisplayAd
{
  private static final byte[] DECODE_TABLE;
  private static final int MASK_8BITS = 255;
  private static final byte PAD = 61;
  private static String adClickURL;
  private static Bitmap bitmapImage;
  private static TapjoyDisplayAdNotifier displayAdNotifier;
  private static String displayAdSize;
  public static String displayAdURLParams;
  private static TapjoyURLConnection tapjoyURLConnection = null;
  final String TAPJOY_DISPLAY_AD = "Banner Ad";
  View adView;
  private boolean autoRefresh;
  private byte[] buffer;
  private Context context;
  long elapsed_time;
  private boolean eof;
  private int modulus;
  private int pos;
  Timer resumeTimer;
  Timer timer;
  private int x;
  
  static
  {
    byte[] arrayOfByte = new byte[123];
    arrayOfByte[0] = -1;
    arrayOfByte[1] = -1;
    arrayOfByte[2] = -1;
    arrayOfByte[3] = -1;
    arrayOfByte[4] = -1;
    arrayOfByte[5] = -1;
    arrayOfByte[6] = -1;
    arrayOfByte[7] = -1;
    arrayOfByte[8] = -1;
    arrayOfByte[9] = -1;
    arrayOfByte[10] = -1;
    arrayOfByte[11] = -1;
    arrayOfByte[12] = -1;
    arrayOfByte[13] = -1;
    arrayOfByte[14] = -1;
    arrayOfByte[15] = -1;
    arrayOfByte[16] = -1;
    arrayOfByte[17] = -1;
    arrayOfByte[18] = -1;
    arrayOfByte[19] = -1;
    arrayOfByte[20] = -1;
    arrayOfByte[21] = -1;
    arrayOfByte[22] = -1;
    arrayOfByte[23] = -1;
    arrayOfByte[24] = -1;
    arrayOfByte[25] = -1;
    arrayOfByte[26] = -1;
    arrayOfByte[27] = -1;
    arrayOfByte[28] = -1;
    arrayOfByte[29] = -1;
    arrayOfByte[30] = -1;
    arrayOfByte[31] = -1;
    arrayOfByte[32] = -1;
    arrayOfByte[33] = -1;
    arrayOfByte[34] = -1;
    arrayOfByte[35] = -1;
    arrayOfByte[36] = -1;
    arrayOfByte[37] = -1;
    arrayOfByte[38] = -1;
    arrayOfByte[39] = -1;
    arrayOfByte[40] = -1;
    arrayOfByte[41] = -1;
    arrayOfByte[42] = -1;
    arrayOfByte[43] = 62;
    arrayOfByte[44] = -1;
    arrayOfByte[45] = 62;
    arrayOfByte[46] = -1;
    arrayOfByte[47] = 63;
    arrayOfByte[48] = 52;
    arrayOfByte[49] = 53;
    arrayOfByte[50] = 54;
    arrayOfByte[51] = 55;
    arrayOfByte[52] = 56;
    arrayOfByte[53] = 57;
    arrayOfByte[54] = 58;
    arrayOfByte[55] = 59;
    arrayOfByte[56] = 60;
    arrayOfByte[57] = 61;
    arrayOfByte[58] = -1;
    arrayOfByte[59] = -1;
    arrayOfByte[60] = -1;
    arrayOfByte[61] = -1;
    arrayOfByte[62] = -1;
    arrayOfByte[63] = -1;
    arrayOfByte[64] = -1;
    arrayOfByte[66] = 1;
    arrayOfByte[67] = 2;
    arrayOfByte[68] = 3;
    arrayOfByte[69] = 4;
    arrayOfByte[70] = 5;
    arrayOfByte[71] = 6;
    arrayOfByte[72] = 7;
    arrayOfByte[73] = 8;
    arrayOfByte[74] = 9;
    arrayOfByte[75] = 10;
    arrayOfByte[76] = 11;
    arrayOfByte[77] = 12;
    arrayOfByte[78] = 13;
    arrayOfByte[79] = 14;
    arrayOfByte[80] = 15;
    arrayOfByte[81] = 16;
    arrayOfByte[82] = 17;
    arrayOfByte[83] = 18;
    arrayOfByte[84] = 19;
    arrayOfByte[85] = 20;
    arrayOfByte[86] = 21;
    arrayOfByte[87] = 22;
    arrayOfByte[88] = 23;
    arrayOfByte[89] = 24;
    arrayOfByte[90] = 25;
    arrayOfByte[91] = -1;
    arrayOfByte[92] = -1;
    arrayOfByte[93] = -1;
    arrayOfByte[94] = -1;
    arrayOfByte[95] = 63;
    arrayOfByte[96] = -1;
    arrayOfByte[97] = 26;
    arrayOfByte[98] = 27;
    arrayOfByte[99] = 28;
    arrayOfByte[100] = 29;
    arrayOfByte[101] = 30;
    arrayOfByte[102] = 31;
    arrayOfByte[103] = 32;
    arrayOfByte[104] = 33;
    arrayOfByte[105] = 34;
    arrayOfByte[106] = 35;
    arrayOfByte[107] = 36;
    arrayOfByte[108] = 37;
    arrayOfByte[109] = 38;
    arrayOfByte[110] = 39;
    arrayOfByte[111] = 40;
    arrayOfByte[112] = 41;
    arrayOfByte[113] = 42;
    arrayOfByte[114] = 43;
    arrayOfByte[115] = 44;
    arrayOfByte[116] = 45;
    arrayOfByte[117] = 46;
    arrayOfByte[118] = 47;
    arrayOfByte[119] = 48;
    arrayOfByte[120] = 49;
    arrayOfByte[121] = 50;
    arrayOfByte[122] = 51;
    DECODE_TABLE = arrayOfByte;
  }
  
  public TapjoyDisplayAd(Context paramContext)
  {
    displayAdSize = TapjoyDisplayAdSize.TJC_AD_BANNERSIZE_640X100;
    this.context = paramContext;
    tapjoyURLConnection = new TapjoyURLConnection();
  }
  
  private boolean buildResponse(String paramString)
  {
    boolean bool = false;
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    try
    {
      paramString = new ByteArrayInputStream(paramString.getBytes("UTF-8"));
      paramString = localDocumentBuilderFactory.newDocumentBuilder().parse(paramString);
      adClickURL = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("ClickURL"));
      paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Image"));
      TapjoyLog.i("Banner Ad", "decoding...");
      decodeBase64(paramString.getBytes(), 0, paramString.getBytes().length);
      TapjoyLog.i("Banner Ad", "pos: " + this.pos);
      TapjoyLog.i("Banner Ad", "buffer_size: " + this.buffer.length);
      bitmapImage = BitmapFactory.decodeByteArray(this.buffer, 0, this.pos);
      TapjoyLog.i("Banner Ad", "image: " + bitmapImage.getWidth() + "x" + bitmapImage.getHeight());
      this.adView = new View(this.context);
      paramString = new ViewGroup.LayoutParams(bitmapImage.getWidth(), bitmapImage.getHeight());
      this.adView.setLayoutParams(paramString);
      this.adView.setBackgroundDrawable(new BitmapDrawable(bitmapImage));
      this.adView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          TapjoyLog.i("Banner Ad", "Opening URL in new browser = [" + TapjoyDisplayAd.adClickURL + "]");
          paramAnonymousView = new Intent(TapjoyDisplayAd.this.context, TJCOffersWebView.class);
          paramAnonymousView.putExtra("DISPLAY_AD_URL", TapjoyDisplayAd.adClickURL);
          paramAnonymousView.setFlags(268435456);
          TapjoyDisplayAd.this.context.startActivity(paramAnonymousView);
          if (TapjoyDisplayAd.this.resumeTimer != null) {
            TapjoyDisplayAd.this.resumeTimer.cancel();
          }
          TapjoyDisplayAd.this.elapsed_time = 0L;
          TapjoyDisplayAd.this.resumeTimer = new Timer();
          TapjoyDisplayAd.this.resumeTimer.schedule(new TapjoyDisplayAd.CheckForResumeTimer(TapjoyDisplayAd.this, null), 10000L, 10000L);
        }
      });
      TapjoyLog.i("Banner Ad", "notify displayAdNotifier");
      displayAdNotifier.getDisplayAdResponse(this.adView);
      bool = true;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        TapjoyLog.e("Banner Ad", "Error parsing XML: " + paramString.toString());
      }
    }
    if (this.timer != null)
    {
      this.timer.cancel();
      this.timer = null;
    }
    if ((this.autoRefresh) && (this.timer == null))
    {
      TapjoyLog.i("Banner Ad", "will refresh banner ad in 15s...");
      this.timer = new Timer();
      this.timer.schedule(new RefreshTimer(null), 15000L);
    }
    TapjoyLog.i("Banner Ad", "return: " + bool);
    return bool;
  }
  
  public static Bitmap getBitmapImage()
  {
    return bitmapImage;
  }
  
  public static String getLinkURL()
  {
    return adClickURL;
  }
  
  void decodeBase64(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.buffer = new byte[paramArrayOfByte.length];
    this.pos = 0;
    this.eof = false;
    this.modulus = 0;
    if (paramInt2 < 0) {
      this.eof = true;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramInt2) {}
      int j;
      for (;;)
      {
        if ((this.eof) && (this.modulus != 0)) {
          this.x <<= 6;
        }
        switch (this.modulus)
        {
        default: 
          return;
          j = paramArrayOfByte[paramInt1];
          if (j != 61) {
            break label113;
          }
          this.eof = true;
        }
      }
      label113:
      if ((j >= 0) && (j < DECODE_TABLE.length))
      {
        j = DECODE_TABLE[j];
        if (j >= 0)
        {
          int k = this.modulus + 1;
          this.modulus = k;
          this.modulus = (k % 4);
          this.x = ((this.x << 6) + j);
          if (this.modulus == 0)
          {
            byte[] arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = (j + 1);
            arrayOfByte[j] = ((byte)(this.x >> 16 & 0xFF));
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = (j + 1);
            arrayOfByte[j] = ((byte)(this.x >> 8 & 0xFF));
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = (j + 1);
            arrayOfByte[j] = ((byte)(this.x & 0xFF));
          }
        }
      }
      i += 1;
      paramInt1 += 1;
    }
    this.x <<= 6;
    paramArrayOfByte = this.buffer;
    paramInt1 = this.pos;
    this.pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(this.x >> 16 & 0xFF));
    return;
    paramArrayOfByte = this.buffer;
    paramInt1 = this.pos;
    this.pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(this.x >> 16 & 0xFF));
    paramArrayOfByte = this.buffer;
    paramInt1 = this.pos;
    this.pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(this.x >> 8 & 0xFF));
  }
  
  public void enableAutoRefresh(boolean paramBoolean)
  {
    this.autoRefresh = paramBoolean;
  }
  
  public String getBannerAdSize()
  {
    return displayAdSize;
  }
  
  public void getDisplayAd(TapjoyDisplayAdNotifier paramTapjoyDisplayAdNotifier)
  {
    TapjoyLog.i("Banner Ad", "Get Banner Ad");
    getDisplayAd(null, paramTapjoyDisplayAdNotifier);
  }
  
  public void getDisplayAd(String paramString, TapjoyDisplayAdNotifier paramTapjoyDisplayAdNotifier)
  {
    TapjoyLog.i("Banner Ad", "Get Banner Ad, currencyID: " + paramString);
    displayAdNotifier = paramTapjoyDisplayAdNotifier;
    displayAdURLParams = TapjoyConnectCore.getURLParams();
    displayAdURLParams = displayAdURLParams + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
    displayAdURLParams = displayAdURLParams + "&size=" + displayAdSize;
    if (paramString != null) {
      displayAdURLParams = displayAdURLParams + "&currency_id=" + paramString;
    }
    new Thread(new Runnable()
    {
      public void run()
      {
        String str = TapjoyDisplayAd.tapjoyURLConnection.connectToURL("https://ws.tapjoyads.com/display_ad?", TapjoyDisplayAd.displayAdURLParams);
        if ((str == null) || (str.length() == 0)) {
          TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("Network error.");
        }
        while (TapjoyDisplayAd.this.buildResponse(str)) {
          return;
        }
        TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("No ad to display.");
      }
    }).start();
  }
  
  public void setBannerAdSize(String paramString)
  {
    displayAdSize = paramString;
  }
  
  private class CheckForResumeTimer
    extends TimerTask
  {
    private CheckForResumeTimer() {}
    
    public void run()
    {
      TapjoyDisplayAd localTapjoyDisplayAd = TapjoyDisplayAd.this;
      localTapjoyDisplayAd.elapsed_time += 10000L;
      TapjoyLog.i("Banner Ad", "banner elapsed_time: " + TapjoyDisplayAd.this.elapsed_time + " (" + TapjoyDisplayAd.this.elapsed_time / 1000L / 60L + "m " + TapjoyDisplayAd.this.elapsed_time / 1000L % 60L + "s)");
      if (TapjoyDisplayAd.this.adView == null) {
        cancel();
      }
      do
      {
        return;
        TapjoyLog.i("Banner Ad", "adView.isShown: " + TapjoyDisplayAd.this.adView.isShown());
        if ((TapjoyDisplayAd.this.adView.isShown()) && (TapjoyConnectCore.getInstance() != null))
        {
          TapjoyLog.i("Banner Ad", "call connect");
          TapjoyConnectCore.getInstance().callConnect();
          cancel();
        }
      } while (TapjoyDisplayAd.this.elapsed_time < 1200000L);
      cancel();
    }
  }
  
  private class RefreshTimer
    extends TimerTask
  {
    private RefreshTimer() {}
    
    public void run()
    {
      TapjoyLog.i("Banner Ad", "refreshing banner ad...");
      TapjoyDisplayAd.this.getDisplayAd(TapjoyDisplayAd.displayAdNotifier);
      if (TapjoyDisplayAd.this.timer != null)
      {
        TapjoyDisplayAd.this.timer.cancel();
        TapjoyDisplayAd.this.timer = null;
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyDisplayAd
 * JD-Core Version:    0.7.0.1
 */