package net.daum.adam.publisher.impl.c;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import java.util.Map;
import net.daum.adam.publisher.impl.e;

class h
  extends c
{
  h(Map<String, String> paramMap, p paramp)
  {
    super(paramMap, paramp);
  }
  
  void a()
  {
    b();
    Object localObject = b("url");
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      if (localIntent != null)
      {
        localIntent.setDataAndType(Uri.parse((String)localObject), "video/*");
        localIntent.addFlags(402653184);
        localObject = PendingIntent.getActivity(this.b.getContext(), 0, localIntent, 0);
      }
      try
      {
        ((PendingIntent)localObject).send();
        return;
      }
      catch (PendingIntent.CanceledException localCanceledException)
      {
        localCanceledException.printStackTrace();
        return;
      }
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      e.b("비디오 재생 기능이 지원되지 않습니다.");
      return;
    }
    catch (Throwable localThrowable)
    {
      e.b("비디오 재생 할 수 없습니다.");
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.h
 * JD-Core Version:    0.7.0.1
 */