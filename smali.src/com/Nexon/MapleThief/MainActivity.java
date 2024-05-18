package com.Nexon.MapleThief;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.skt.arm.ArmManager;
import java.io.File;

public class MainActivity
  extends Activity
{
  public String TstoreAID = "OA00303854";
  private ArmManager arm;
  
  public void goNextAct()
  {
    if (!BNVInstaller.CheckAlzza(getFilesDir().getAbsolutePath())) {
      startActivity(new Intent(this, DunfightActivity.class));
    }
    for (;;)
    {
      finish();
      return;
      startActivity(new Intent(this, ItarosActivity.class));
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    goNextAct();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.MainActivity
 * JD-Core Version:    0.7.0.1
 */