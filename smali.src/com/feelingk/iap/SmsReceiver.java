package com.feelingk.iap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import com.feelingk.iap.util.CommonF.LOGGER;

public class SmsReceiver
  extends BroadcastReceiver
{
  String mSmsAddress = null;
  String mSmsAuthNumber = null;
  String mSmsMessage = null;
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getExtras();
    int i;
    if (paramContext != null)
    {
      paramIntent = (Object[])paramContext.get("pdus");
      paramContext = new SmsMessage[paramIntent.length];
      i = 0;
      if (i < paramIntent.length) {
        break label42;
      }
      i = 0;
    }
    for (;;)
    {
      if (i >= paramContext.length)
      {
        return;
        label42:
        paramContext[i] = SmsMessage.createFromPdu((byte[])paramIntent[i]);
        i += 1;
        break;
      }
      this.mSmsMessage = paramContext[i].getDisplayMessageBody().toString();
      CommonF.LOGGER.i("mSmsMessage: ", this.mSmsMessage);
      CommonF.LOGGER.i("mSmsMessage length: ", this.mSmsMessage.length());
      if (this.mSmsMessage.length() >= 27)
      {
        paramIntent = this.mSmsMessage.substring(0, 20);
        CommonF.LOGGER.i("isDanaMsg: ", paramIntent);
        if (paramIntent.equals("[  tstore.co.kr]승인번호"))
        {
          this.mSmsAuthNumber = this.mSmsMessage.substring(21, 27);
          CommonF.LOGGER.i("mSmsAuthNumber: ", this.mSmsAuthNumber);
          IAPLib.setOTPNumber(this.mSmsAuthNumber);
        }
      }
      i += 1;
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.SmsReceiver
 * JD-Core Version:    0.7.0.1
 */