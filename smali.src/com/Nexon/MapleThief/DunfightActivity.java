package com.Nexon.MapleThief;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class DunfightActivity
  extends Activity
  implements View.OnClickListener
{
  private boolean bCheck = false;
  private Intent intent;
  private Button mBtnCheck = null;
  private Button mBtnNext = null;
  private TextView mTvString = null;
  
  public void onBackPressed()
  {
    finish();
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    Global.b_check = true;
    paramView = getFilesDir().getAbsolutePath() + File.separator + "prov.txt";
    try
    {
      paramView = new FileWriter(paramView);
      paramView.write(1);
      paramView.close();
      startActivity(new Intent(this, ItarosActivity.class));
      finish();
      return;
    }
    catch (IOException paramView)
    {
      for (;;)
      {
        paramView.printStackTrace();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    this.mBtnNext = ((Button)findViewById(2131099655));
    this.mTvString = ((TextView)findViewById(2131099657));
    this.mBtnNext.setBackgroundResource(2130837508);
    this.mBtnNext.setOnClickListener(this);
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
 * Qualified Name:     com.Nexon.MapleThief.DunfightActivity
 * JD-Core Version:    0.7.0.1
 */