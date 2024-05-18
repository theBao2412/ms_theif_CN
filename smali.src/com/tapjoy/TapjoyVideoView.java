package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.VideoView;
import java.util.Timer;
import java.util.TimerTask;

public class TapjoyVideoView
  extends Activity
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private static final String BUNDLE_DIALOG_SHOWING = "dialog_showing";
  private static final String BUNDLE_SEEK_TIME = "seek_time";
  private static final int DIALOG_WARNING_ID = 0;
  private static boolean streamingVideo = false;
  static int textSize = 16;
  private static TapjoyVideoObject videoData;
  private static boolean videoError = false;
  private static final String videoSecondsText = " seconds";
  private static final String videoWillResumeText = "";
  final String TAPJOY_VIDEO = "VIDEO";
  private boolean allowBackKey = false;
  private boolean clickRequestSuccess = false;
  int deviceScreenDensity;
  int deviceScreenLayoutSize;
  Dialog dialog;
  private boolean dialogShowing = false;
  final Handler mHandler = new Handler();
  final Runnable mUpdateResults = new Runnable()
  {
    public void run()
    {
      TapjoyVideoView.this.overlayText.setText(TapjoyVideoView.this.getRemainingVideoTime() + " seconds");
    }
  };
  private TextView overlayText = null;
  private RelativeLayout relativeLayout;
  private int seekTime = 0;
  private boolean sendClick = false;
  private ImageView tapjoyImage;
  private int timeRemaining = 0;
  Timer timer = null;
  private String videoPath = null;
  private VideoView videoView = null;
  private Bitmap watermark;
  private WebView webView;
  private String webviewURL = null;
  
  private int getRemainingVideoTime()
  {
    int j = (this.videoView.getDuration() - this.videoView.getCurrentPosition()) / 1000;
    int i = j;
    if (j < 0) {
      i = 0;
    }
    return i;
  }
  
  private void initVideoCompletionScreen()
  {
    this.webView = new WebView(this);
    this.webView.setWebViewClient(new WebViewClient()
    {
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        TapjoyLog.i("VIDEO", "URL = [" + paramAnonymousString + "]");
        if (paramAnonymousString.contains("offer_wall"))
        {
          TapjoyLog.i("VIDEO", "back to offers");
          TapjoyVideoView.this.finish();
        }
        for (;;)
        {
          return true;
          if (paramAnonymousString.contains("tjvideo"))
          {
            TapjoyLog.i("VIDEO", "replay");
            TapjoyVideoView.this.initVideoView();
          }
          else if (paramAnonymousString.contains("ws.tapjoyads.com"))
          {
            TapjoyLog.i("VIDEO", "Open redirecting URL = [" + paramAnonymousString + "]");
            paramAnonymousWebView.loadUrl(paramAnonymousString);
          }
          else
          {
            TapjoyLog.i("VIDEO", "Opening URL in new browser = [" + paramAnonymousString + "]");
            paramAnonymousWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString));
            TapjoyVideoView.this.startActivity(paramAnonymousWebView);
          }
        }
      }
    });
    this.webView.getSettings().setJavaScriptEnabled(true);
    this.webView.loadUrl(this.webviewURL);
  }
  
  private void initVideoView()
  {
    this.relativeLayout.removeAllViews();
    this.relativeLayout.setBackgroundColor(-16777216);
    RelativeLayout.LayoutParams localLayoutParams;
    if ((this.videoView == null) && (this.overlayText == null))
    {
      this.tapjoyImage = new ImageView(this);
      this.watermark = TapjoyVideo.getWatermarkImage();
      if (this.watermark != null) {
        this.tapjoyImage.setImageBitmap(this.watermark);
      }
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(12);
      localLayoutParams.addRule(11);
      this.tapjoyImage.setLayoutParams(localLayoutParams);
      this.videoView = new VideoView(this);
      this.videoView.setOnCompletionListener(this);
      this.videoView.setOnErrorListener(this);
      this.videoView.setOnPreparedListener(this);
      if (!streamingVideo) {
        break label375;
      }
      TapjoyLog.i("VIDEO", "streaming video: " + this.videoPath);
      this.videoView.setVideoURI(Uri.parse(this.videoPath));
    }
    for (;;)
    {
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(13);
      this.videoView.setLayoutParams(localLayoutParams);
      this.timeRemaining = (this.videoView.getDuration() / 1000);
      TapjoyLog.i("VIDEO", "videoView.getDuration(): " + this.videoView.getDuration());
      TapjoyLog.i("VIDEO", "timeRemaining: " + this.timeRemaining);
      this.overlayText = new TextView(this);
      this.overlayText.setTextSize(textSize);
      this.overlayText.setTypeface(Typeface.create("default", 1), 1);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(12);
      this.overlayText.setLayoutParams(localLayoutParams);
      startVideo();
      this.relativeLayout.addView(this.videoView);
      this.relativeLayout.addView(this.tapjoyImage);
      this.relativeLayout.addView(this.overlayText);
      return;
      label375:
      TapjoyLog.i("VIDEO", "cached video: " + this.videoPath);
      this.videoView.setVideoPath(this.videoPath);
    }
  }
  
  private void showVideoCompletionScreen()
  {
    this.relativeLayout.removeAllViews();
    this.relativeLayout.addView(this.webView, -1, -1);
  }
  
  private void startVideo()
  {
    this.videoView.requestFocus();
    if (this.dialogShowing)
    {
      this.videoView.seekTo(this.seekTime);
      TapjoyLog.i("VIDEO", "dialog is showing -- don't start");
    }
    for (;;)
    {
      if (this.timer != null) {
        this.timer.cancel();
      }
      this.timer = new Timer();
      this.timer.schedule(new RemainingTime(null), 500L, 100L);
      initVideoCompletionScreen();
      this.clickRequestSuccess = false;
      if (this.sendClick)
      {
        new Thread(new Runnable()
        {
          public void run()
          {
            TapjoyLog.i("VIDEO", "SENDING CLICK...");
            String str = new TapjoyURLConnection().connectToURL(TapjoyVideoView.videoData.clickURL);
            if ((str != null) && (str.contains("OK")))
            {
              TapjoyLog.i("VIDEO", "CLICK REQUEST SUCCESS!");
              TapjoyVideoView.this.clickRequestSuccess = true;
            }
          }
        }).start();
        this.sendClick = false;
      }
      return;
      TapjoyLog.i("VIDEO", "start");
      this.videoView.seekTo(0);
      this.videoView.start();
    }
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    TapjoyLog.i("VIDEO", "onCompletion");
    if (this.timer != null) {
      this.timer.cancel();
    }
    showVideoCompletionScreen();
    if (!videoError)
    {
      TapjoyVideo.videoNotifierComplete();
      new Thread(new Runnable()
      {
        public void run()
        {
          if (TapjoyVideoView.this.clickRequestSuccess) {
            TapjoyConnectCore.getInstance().actionComplete(TapjoyVideoView.videoData.offerID);
          }
        }
      }).start();
    }
    videoError = false;
    this.allowBackKey = true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    TapjoyLog.i("VIDEO", "onCreate");
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      TapjoyLog.i("VIDEO", "*** Loading saved data from bundle ***");
      this.seekTime = paramBundle.getInt("seek_time");
      this.dialogShowing = paramBundle.getBoolean("dialog_showing");
    }
    TapjoyLog.i("VIDEO", "dialogShowing: " + this.dialogShowing + ", seekTime: " + this.seekTime);
    this.sendClick = true;
    streamingVideo = false;
    if (TapjoyVideo.getInstance() == null)
    {
      TapjoyLog.i("VIDEO", "null video");
      finish();
      return;
    }
    videoData = TapjoyVideo.getInstance().getCurrentVideoData();
    this.videoPath = videoData.dataLocation;
    this.webviewURL = videoData.webviewURL;
    if ((this.videoPath == null) || (this.videoPath.length() == 0))
    {
      TapjoyLog.i("VIDEO", "no cached video, try streaming video at location: " + videoData.videoURL);
      this.videoPath = videoData.videoURL;
      streamingVideo = true;
    }
    TapjoyLog.i("VIDEO", "videoPath: " + this.videoPath);
    requestWindowFeature(1);
    this.relativeLayout = new RelativeLayout(this);
    paramBundle = new RelativeLayout.LayoutParams(-1, -1);
    this.relativeLayout.setLayoutParams(paramBundle);
    setContentView(this.relativeLayout);
    if (Integer.parseInt(Build.VERSION.SDK) > 3)
    {
      this.deviceScreenLayoutSize = new TapjoyDisplayMetricsUtil(this).getScreenLayoutSize();
      TapjoyLog.i("VIDEO", "deviceScreenLayoutSize: " + this.deviceScreenLayoutSize);
      textSize = 32;
    }
    TapjoyLog.i("VIDEO", "textSize: " + textSize);
    initVideoView();
    TapjoyLog.i("VIDEO", "onCreate DONE");
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    TapjoyLog.i("VIDEO", "dialog onCreateDialog");
    if (!this.dialogShowing) {
      return this.dialog;
    }
    switch (paramInt)
    {
    default: 
      this.dialog = null;
    }
    for (;;)
    {
      return this.dialog;
      this.dialog = new AlertDialog.Builder(this).setTitle("Cancel Video?").setMessage("Currency will not be awarded, are you sure you want to cancel the video?").setNegativeButton("End", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          TapjoyVideoView.this.finish();
        }
      }).setPositiveButton("Resume", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          TapjoyVideoView.this.videoView.seekTo(TapjoyVideoView.this.seekTime);
          TapjoyVideoView.this.videoView.start();
          TapjoyVideoView.this.dialogShowing = false;
          TapjoyLog.i("VIDEO", "RESUME VIDEO time: " + TapjoyVideoView.this.seekTime);
          TapjoyLog.i("VIDEO", "currentPosition: " + TapjoyVideoView.this.videoView.getCurrentPosition());
          TapjoyLog.i("VIDEO", "duration: " + TapjoyVideoView.this.videoView.getDuration() + ", elapsed: " + (TapjoyVideoView.this.videoView.getDuration() - TapjoyVideoView.this.videoView.getCurrentPosition()));
        }
      }).create();
      this.dialog.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          TapjoyLog.i("VIDEO", "dialog onCancel");
          paramAnonymousDialogInterface.dismiss();
          TapjoyVideoView.this.videoView.seekTo(TapjoyVideoView.this.seekTime);
          TapjoyVideoView.this.videoView.start();
          TapjoyVideoView.this.dialogShowing = false;
        }
      });
      this.dialog.show();
      this.dialogShowing = true;
    }
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    videoError = true;
    TapjoyLog.i("VIDEO", "onError");
    TapjoyVideo.videoNotifierError(3);
    this.allowBackKey = true;
    if (this.timer != null) {
      this.timer.cancel();
    }
    return false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (!this.allowBackKey)
      {
        this.seekTime = this.videoView.getCurrentPosition();
        this.videoView.pause();
        this.dialogShowing = true;
        showDialog(0);
        TapjoyLog.i("VIDEO", "PAUSE VIDEO time: " + this.seekTime);
        TapjoyLog.i("VIDEO", "currentPosition: " + this.videoView.getCurrentPosition());
        TapjoyLog.i("VIDEO", "duration: " + this.videoView.getDuration() + ", elapsed: " + (this.videoView.getDuration() - this.videoView.getCurrentPosition()));
      }
      do
      {
        return true;
        if (!this.videoView.isPlaying()) {
          break;
        }
        this.videoView.stopPlayback();
        showVideoCompletionScreen();
      } while (this.timer == null);
      this.timer.cancel();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.videoView.isPlaying())
    {
      TapjoyLog.i("VIDEO", "onPause");
      this.seekTime = this.videoView.getCurrentPosition();
      TapjoyLog.i("VIDEO", "seekTime: " + this.seekTime);
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    TapjoyLog.i("VIDEO", "onPrepared");
  }
  
  protected void onResume()
  {
    TapjoyLog.i("VIDEO", "onResume");
    super.onResume();
    setRequestedOrientation(0);
    if (this.seekTime > 0)
    {
      TapjoyLog.i("VIDEO", "seekTime: " + this.seekTime);
      this.videoView.seekTo(this.seekTime);
      if ((!this.dialogShowing) || (this.dialog == null) || (!this.dialog.isShowing())) {
        this.videoView.start();
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    TapjoyLog.i("VIDEO", "*** onSaveInstanceState ***");
    TapjoyLog.i("VIDEO", "dialogShowing: " + this.dialogShowing + ", seekTime: " + this.seekTime);
    paramBundle.putBoolean("dialog_showing", this.dialogShowing);
    paramBundle.putInt("seek_time", this.seekTime);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    TapjoyLog.i("VIDEO", "onWindowFocusChanged");
    super.onWindowFocusChanged(paramBoolean);
  }
  
  private class RemainingTime
    extends TimerTask
  {
    private RemainingTime() {}
    
    public void run()
    {
      TapjoyVideoView.this.mHandler.post(TapjoyVideoView.this.mUpdateResults);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyVideoView
 * JD-Core Version:    0.7.0.1
 */