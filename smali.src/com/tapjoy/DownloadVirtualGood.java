package com.tapjoy;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class DownloadVirtualGood
  extends Activity
{
  public static final String EXTRA_KEY_VIRTUAL_GOOD_NAME = "NAME";
  private Button cancelBtn;
  View.OnClickListener cancelListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      DownloadVirtualGood.this.finish();
    }
  };
  private String clientPackage = "";
  private Button downloadBtn;
  View.OnClickListener downloadListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = new Intent(DownloadVirtualGood.this, TJCVirtualGoods.class);
      paramAnonymousView.putExtra("URL_PARAMS", DownloadVirtualGood.this.urlParams);
      paramAnonymousView.putExtra("my_items_tab", true);
      DownloadVirtualGood.this.startActivity(paramAnonymousView);
      DownloadVirtualGood.this.finish();
    }
  };
  private String urlParams = "";
  private TextView vgAcquiredMsg;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.clientPackage = getPackageName();
    paramBundle = getIntent().getExtras();
    if ((paramBundle != null) && (paramBundle.containsKey("URL_PARAMS"))) {
      this.urlParams = paramBundle.getString("URL_PARAMS");
    }
    TapjoyLog.i("DOWNLOAD VIRTUAL GOODS", "clientPackage: " + TJCVirtualGoods.getClientPackage());
    setContentView(getResources().getIdentifier("tapjoy_virtualgoods_reconnectvirtualgoods", "layout", this.clientPackage));
    this.downloadBtn = ((Button)findViewById(getResources().getIdentifier("DownloadBtn", "id", this.clientPackage)));
    this.cancelBtn = ((Button)findViewById(getResources().getIdentifier("CancelBtn", "id", this.clientPackage)));
    this.vgAcquiredMsg = ((TextView)findViewById(getResources().getIdentifier("VGAcquiredMsgText", "id", this.clientPackage)));
    this.downloadBtn.setOnClickListener(this.downloadListener);
    this.cancelBtn.setOnClickListener(this.cancelListener);
    this.vgAcquiredMsg.setText("You have successfully acquired item '" + paramBundle.getString("NAME") + "'." + " Would you like to download it now?");
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.DownloadVirtualGood
 * JD-Core Version:    0.7.0.1
 */