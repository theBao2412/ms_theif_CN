package net.daum.adam.publisher.impl.c;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import java.util.Map;
import net.daum.adam.publisher.impl.e;

class f
  extends c
{
  f(Map<String, String> paramMap, p paramp)
  {
    super(paramMap, paramp);
  }
  
  void a()
  {
    b();
    Object localObject = b("number");
    if ((localObject == null) || (((String)localObject).length() < 1)) {
      e.b("MraidCommandMakeCall", "전화번호를 넣어주세요");
    }
    for (;;)
    {
      return;
      try
      {
        localObject = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + (String)localObject));
        if (localObject == null) {
          continue;
        }
        ((Intent)localObject).addFlags(402653184);
        localObject = PendingIntent.getActivity(this.b.getContext(), 0, (Intent)localObject, 0);
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
        e.b("전화 기능이 지원되지 않습니다.");
        return;
      }
      catch (Throwable localThrowable)
      {
        e.b("전화 기능을 사용할 수 없습니다.");
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.f
 * JD-Core Version:    0.7.0.1
 */