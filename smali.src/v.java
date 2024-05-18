import android.webkit.WebView;
import android.widget.VideoView;
import com.google.ads.AdActivity;
import java.util.HashMap;

public final class v
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str = (String)paramHashMap.get("action");
    AdActivity localAdActivity;
    if ((paramWebView instanceof g))
    {
      localAdActivity = ((g)paramWebView).b();
      if (localAdActivity != null) {
        break label44;
      }
      com.google.ads.util.a.a("Could not get adActivity to create the video.");
    }
    label44:
    do
    {
      return;
      com.google.ads.util.a.a("Could not get adWebView to create the video.");
      return;
      if (str.equals("load"))
      {
        paramHashMap = (String)paramHashMap.get("url");
        paramd = paramd.e();
        if (paramd == null)
        {
          com.google.ads.util.a.e("activity was null while loading a video.");
          return;
        }
        paramd = new VideoView(paramd);
        paramd.setVideoPath(paramHashMap);
        localAdActivity.showVideo(paramd);
        return;
      }
      paramd = localAdActivity.getVideoView();
      if (paramd == null)
      {
        com.google.ads.util.a.e("Could not get the VideoView for a video GMSG.");
        return;
      }
      if (str.equals("play"))
      {
        paramd.setVisibility(0);
        paramd.start();
        com.google.ads.util.a.d("Video is now playing.");
        a.a(paramWebView, "onVideoEvent", "{'event': 'playing'}");
        return;
      }
      if (str.equals("pause"))
      {
        paramd.pause();
        return;
      }
      if (str.equals("stop"))
      {
        paramd.stopPlayback();
        return;
      }
      if (str.equals("remove"))
      {
        paramd.setVisibility(8);
        return;
      }
      if (str.equals("replay"))
      {
        paramd.setVisibility(0);
        paramd.seekTo(0);
        paramd.start();
        return;
      }
      if (str.equals("currentTime"))
      {
        paramHashMap = (String)paramHashMap.get("time");
        if (paramHashMap == null)
        {
          com.google.ads.util.a.e("No \"time\" parameter!");
          return;
        }
        paramd.seekTo((int)(Float.valueOf(paramHashMap).floatValue() * 1000.0F));
        return;
      }
    } while (str.equals("position"));
    com.google.ads.util.a.e("Unknown movie action: " + str);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     v
 * JD-Core Version:    0.7.0.1
 */