package com.tapjoy;

import android.content.Context;
import android.net.Uri;

public class TapjoyEvent
{
  public static final int EVENT_TYPE_IAP = 1;
  public static final int EVENT_TYPE_SHUTDOWN = 2;
  static final String TAPJOY_EVENT = "Event";
  private static TapjoyURLConnection tapjoyURLConnection = null;
  private Context context;
  
  public TapjoyEvent(Context paramContext)
  {
    this.context = paramContext;
    tapjoyURLConnection = new TapjoyURLConnection();
  }
  
  public String createEventParameter(String paramString)
  {
    return "ue[" + paramString + "]";
  }
  
  public void sendEvent(int paramInt, String paramString)
  {
    TapjoyLog.i("Event", "sendEvent type: " + paramInt);
    String str2 = new StringBuilder(String.valueOf(TapjoyConnectCore.getURLParams())).append("&publisher_user_id=").append(TapjoyConnectCore.getUserID()).toString() + "&event_type_id=" + paramInt;
    String str1 = str2;
    if (paramString != null)
    {
      str1 = str2;
      if (paramString.length() > 0) {
        str1 = str2 + "&" + paramString;
      }
    }
    new Thread(new EventThread(str1)).start();
  }
  
  public void sendIAPEvent(String paramString1, float paramFloat, int paramInt, String paramString2)
  {
    sendEvent(1, new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(createEventParameter("name"))).append("=").append(Uri.encode(paramString1)).toString())).append("&").append(createEventParameter("price")).append("=").append(Uri.encode(new StringBuilder().append(paramFloat).toString())).toString())).append("&").append(createEventParameter("quantity")).append("=").append(Uri.encode(new StringBuilder().append(paramInt).toString())).toString() + "&" + createEventParameter("currency_code") + "=" + Uri.encode(paramString2));
  }
  
  public void sendShutDownEvent()
  {
    sendEvent(2, null);
  }
  
  public class EventThread
    implements Runnable
  {
    private String params;
    
    public EventThread(String paramString)
    {
      this.params = paramString;
    }
    
    public void run()
    {
      TapjoyHttpURLResponse localTapjoyHttpURLResponse = TapjoyEvent.tapjoyURLConnection.getResponseFromURL("https://ws.tapjoyads.com/user_events?", this.params, 1);
      if (localTapjoyHttpURLResponse != null)
      {
        switch (localTapjoyHttpURLResponse.statusCode)
        {
        default: 
          TapjoyLog.e("Event", "Server/network error: " + localTapjoyHttpURLResponse.statusCode);
          return;
        case 200: 
          TapjoyLog.i("Event", "Successfully sent Tapjoy event");
          return;
        }
        TapjoyLog.e("Event", "Error sending event: " + localTapjoyHttpURLResponse.response);
        return;
      }
      TapjoyLog.e("Event", "Server/network error");
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyEvent
 * JD-Core Version:    0.7.0.1
 */