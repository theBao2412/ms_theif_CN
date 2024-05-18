package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.graphics.drawable.StateListDrawable;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager.BadTokenException;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TableLayout;
import android.widget.TextView;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.concurrent.RejectedExecutionException;

public class TJCVirtualGoods
  extends Activity
  implements View.OnClickListener
{
  private static final String BUNDLE_URL_PARAMS = "bundle_url_params";
  public static final String EXTRA_MY_ITEMS_TAB = "my_items_tab";
  public static final int NETWORK_DOWN = 11;
  public static final String NETWORK_DOWN_MESSAGE = "Service is unreachable.\nDo you want to try again?";
  public static final int NETWORK_TIME_OUT = 12;
  public static final int PARSER_CONFIGURATION_EXCEPTION = 14;
  private static final int PURCHASED_ITEM = 2;
  public static final int RESPONSE_FAIL = 13;
  public static final int SAX_EXCEPTION = 15;
  private static final int STORE_ITEM = 0;
  public static final String TAPJOY = "Tapjoy";
  public static final String TAPJOY_DATABASE = "Database";
  public static final String TAPJOY_DOWNLOADVIRTUALGOOD = "DownloadVirtualGood";
  public static final String TAPJOY_DOWNLOAD_COMPLETED = "Download Completed";
  public static final String TAPJOY_DOWNLOAD_FAILED = "Download Failed";
  public static final String TAPJOY_DOWNLOAD_PENDING = "Download Pending";
  public static final String TAPJOY_ERROR_NO_SPACE_ON_DEVICE = "No more space is available on Device.";
  public static final String TAPJOY_ERROR_NO_SPACE_ON_DEVICE_AND_SD_CARD = "No more space is available on Device and SD Card.";
  public static final String TAPJOY_FILE_SYSTEM = "File System";
  public static final String TAPJOY_VIRTUAL_GOODS = "Virtual Goods";
  public static final int VG_STATUS_DOWNLOAD_INIT = 1;
  public static final int VG_STATUS_DOWNLOAD_PENDING = 0;
  public static final int VG_STATUS_DOWNLOAD_SUCCESS_TO_PHONE = 10;
  public static final int VG_STATUS_DOWNLOAD_SUCCESS_TO_SD_CARD = 20;
  public static final int VG_STATUS_INSUFFICIENT_DISK_SPACE_PHONE = 44;
  public static final int VG_STATUS_INSUFFICIENT_DISK_SPACE_SD_CARD = 43;
  public static final int VG_STATUS_NETWORK_ERROR_PHONE = 42;
  public static final int VG_STATUS_NETWORK_ERROR_SD_CARD = 41;
  private static String clientPackage;
  static Context ctx;
  private static String currencyName;
  static boolean dataSavedAtSDCard;
  public static TextView detailDescQuantity;
  private static TextView detailDownloadStatusTextView;
  private static ImageView detailErrorIcon;
  private static ProgressBar detailProgressBar;
  public static Button detailRetryButton;
  public static String detailViewStoreID = "";
  public static boolean doNotify;
  private static boolean downloadStarted;
  public static boolean isPurchasedItemDetailView;
  public static boolean offersFromVG;
  private static TextView storeNoData;
  private static String tapPoints;
  public static TJCVirtualGoodsConnection tapjoyVGConnection = null;
  private static TapjoyDownloadListener tapjoyVGDownloadListener = null;
  private static FocusListener tapjoyVGFocusListener = null;
  private static String urlParams;
  private static String userID;
  public static boolean vgFromDownloadedVG;
  public static boolean vgFromOffers;
  private static TextView yourItemNoData;
  AlertDialog allItemAlert = null;
  AsyncTaskPool asyncTaskPool = new AsyncTaskPool(2);
  private Boolean checkPurchased = Boolean.valueOf(true);
  float[] cornerAll = { 10.0F, 10.0F, 10.0F, 10.0F, 10.0F, 10.0F, 10.0F, 10.0F };
  float[] cornerLeft = { 10.0F, 10.0F, 0.0F, 0.0F, 0.0F, 0.0F, 10.0F, 10.0F };
  float[] cornerNone = { 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F };
  float[] cornerRight = { 0.0F, 0.0F, 10.0F, 10.0F, 10.0F, 10.0F, 0.0F, 0.0F };
  private VGStoreItem currentVgStoreItem = null;
  private Button detailGetThisItemButton;
  private LinearLayout detailView;
  private Dialog exceptionDialog;
  private FetchAndBuildPurchasedItemsTask fetPurchasedVGItems = null;
  private FetchAndBuildStoreItemsTask fetchAllStoreItems = null;
  private Dialog getItemDialog;
  private Dialog getMoreItemDialog;
  private PurchaseVirtualGoodTask getPurchasedVGItems = null;
  private boolean isItemDetailView = false;
  private Dialog itemDownloadedDialog;
  private Button morePurchasedItem;
  private Button moreStoreItems;
  private TextView myItemsHeaderLeftTitle = null;
  private TextView myItemsHeaderRightTitle = null;
  private ProgressDialog progressDialog;
  AlertDialog purchasedItemAlert = null;
  private ArrayList<VGStoreItem> purchasedItemArray = null;
  private ProgressBar purchasedItemProgress;
  private int purchasedItemStart;
  private TableLayout purchasedItemTable;
  private int purchasedThroughAvailableItem = 0;
  TextView quantityTextView;
  private TextView storeHeaderLeftTitle = null;
  private TextView storeHeaderRightTitle = null;
  private ArrayList<VGStoreItem> storeItemArray = null;
  private int storeItemStart;
  private TableLayout storeItemTable;
  private ProgressBar storeProgress;
  private TabHost tabs;
  private TextView vgDetailFooterLeft = null;
  private Button vgDetailGetMoreBtn = null;
  private TextView vgFooterLeft = null;
  private Button vgGetMoreBtn = null;
  private TextView vgPurchasedFooterLeft = null;
  private Button vgPurchasedGetMoreBtn = null;
  private TJCVirtualGoodUtil virtualGoodUtil;
  
  static
  {
    ctx = null;
    doNotify = true;
    offersFromVG = false;
    vgFromOffers = false;
    vgFromDownloadedVG = false;
    userID = null;
    downloadStarted = false;
    isPurchasedItemDetailView = false;
  }
  
  private LinearLayout buildPurchasedItemRow(VGStoreItem paramVGStoreItem, int paramInt1, int paramInt2, Context paramContext)
  {
    new LinearLayout(paramContext);
    LinearLayout localLinearLayout = (LinearLayout)View.inflate(paramContext, paramContext.getResources().getIdentifier("tapjoy_virtualgoods_purchaseitems_row", "layout", getClientPackage()), null);
    localLinearLayout.setId(paramInt2);
    localLinearLayout.setOnClickListener((View.OnClickListener)paramContext);
    localLinearLayout.setBackgroundResource(paramContext.getResources().getIdentifier("tapjoy_tablerowstates", "drawable", getClientPackage()));
    ((TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_index", "id", getClientPackage()))).setText(paramInt1);
    Object localObject = (ImageView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_item_icon", "id", getClientPackage()));
    Drawable localDrawable = paramVGStoreItem.getThumbImage();
    if (localDrawable != null)
    {
      ((ImageView)localObject).setImageDrawable(localDrawable);
      ((TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_name", "id", getClientPackage()))).setText(paramVGStoreItem.getName());
      ((TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_type", "id", getClientPackage()))).setText(paramVGStoreItem.getVgStoreItemTypeName());
      localObject = (TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_attribute", "id", getClientPackage()));
      if (paramVGStoreItem.getVgStoreItemsAttributeValueList().size() <= 0) {
        break label429;
      }
      ((TextView)localObject).setText(((VGStoreItemAttributeValue)paramVGStoreItem.getVgStoreItemsAttributeValueList().get(0)).getAttributeType() + ": " + ((VGStoreItemAttributeValue)paramVGStoreItem.getVgStoreItemsAttributeValueList().get(0)).getAttributeValue());
    }
    for (;;)
    {
      paramContext = (TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_points_text", "id", getClientPackage()));
      paramContext.setText(paramVGStoreItem.getPrice());
      paramContext.setSelected(true);
      return localLinearLayout;
      if ((paramVGStoreItem.getThumbImageUrl() == null) || (paramVGStoreItem.getThumbImageUrl().equals(""))) {
        break;
      }
      this.asyncTaskPool.addTask(new FetchItemIconTask(null), new Object[] { localObject, paramVGStoreItem });
      break;
      label429:
      ((TextView)localObject).setVisibility(8);
    }
  }
  
  private LinearLayout buildStoreItemRow(VGStoreItem paramVGStoreItem, int paramInt1, int paramInt2, Context paramContext)
  {
    new LinearLayout(paramContext);
    LinearLayout localLinearLayout = (LinearLayout)View.inflate(paramContext, paramContext.getResources().getIdentifier("tapjoy_virtualgoods_row", "layout", getClientPackage()), null);
    localLinearLayout.setId(paramInt2);
    localLinearLayout.setOnClickListener((View.OnClickListener)paramContext);
    localLinearLayout.setBackgroundResource(paramContext.getResources().getIdentifier("tapjoy_tablerowstates", "drawable", getClientPackage()));
    ((TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_index", "id", getClientPackage()))).setText(paramInt1);
    Object localObject = (ImageView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_item_icon", "id", getClientPackage()));
    Drawable localDrawable = paramVGStoreItem.getThumbImage();
    if (localDrawable != null)
    {
      ((ImageView)localObject).setImageDrawable(localDrawable);
      ((TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_name", "id", getClientPackage()))).setText(paramVGStoreItem.getName());
      ((TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_type", "id", getClientPackage()))).setText(paramVGStoreItem.getVgStoreItemTypeName());
      localObject = (TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_attribute", "id", getClientPackage()));
      if (paramVGStoreItem.getVgStoreItemsAttributeValueList().size() <= 0) {
        break label429;
      }
      ((TextView)localObject).setText(((VGStoreItemAttributeValue)paramVGStoreItem.getVgStoreItemsAttributeValueList().get(0)).getAttributeType() + ": " + ((VGStoreItemAttributeValue)paramVGStoreItem.getVgStoreItemsAttributeValueList().get(0)).getAttributeValue());
    }
    for (;;)
    {
      paramContext = (TextView)localLinearLayout.findViewById(paramContext.getResources().getIdentifier("vg_row_points_text", "id", getClientPackage()));
      paramContext.setText(paramVGStoreItem.getPrice());
      paramContext.setSelected(true);
      return localLinearLayout;
      if ((paramVGStoreItem.getThumbImageUrl() == null) || (paramVGStoreItem.getThumbImageUrl().equals(""))) {
        break;
      }
      this.asyncTaskPool.addTask(new FetchItemIconTask(null), new Object[] { localObject, paramVGStoreItem });
      break;
      label429:
      ((TextView)localObject).setVisibility(8);
    }
  }
  
  private void checkPurchasedVGForDownload(int paramInt, Context paramContext)
  {
    paramContext = this.purchasedItemTable.findViewWithTag("MorePurchasedItemsButton");
    if (paramContext != null)
    {
      this.purchasedItemTable.removeView(paramContext);
      this.morePurchasedItem = ((Button)paramContext);
    }
    if (paramInt > 0)
    {
      if (paramInt <= 25) {
        break label105;
      }
      this.morePurchasedItem.setText("Show 25 more...");
    }
    for (;;)
    {
      this.purchasedItemTable.addView(this.morePurchasedItem);
      if (this.checkPurchased.booleanValue())
      {
        this.checkPurchased = Boolean.valueOf(false);
        this.virtualGoodUtil.downLoadPurcahasedVirtualGood(this.purchasedItemArray, this.purchasedItemTable, this.purchasedItemStart + this.purchasedThroughAvailableItem);
      }
      return;
      label105:
      this.morePurchasedItem.setText("Show " + paramInt + " more...");
    }
  }
  
  private static int createColor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = (paramInt1 >> 16 & 0xFF) + paramInt2;
    paramInt3 = (paramInt1 >> 8 & 0xFF) + paramInt3;
    paramInt4 = (paramInt1 & 0xFF) + paramInt4;
    paramInt1 = paramInt2;
    if (paramInt2 < 0) {
      paramInt1 = 0;
    }
    paramInt2 = paramInt3;
    if (paramInt3 < 0) {
      paramInt2 = 0;
    }
    paramInt3 = paramInt4;
    if (paramInt4 < 0) {
      paramInt3 = 0;
    }
    paramInt4 = paramInt1;
    if (paramInt1 > 255) {
      paramInt4 = 255;
    }
    paramInt1 = paramInt2;
    if (paramInt2 > 255) {
      paramInt1 = 255;
    }
    paramInt2 = paramInt3;
    if (paramInt3 > 255) {
      paramInt2 = 255;
    }
    return Color.argb(255, paramInt4, paramInt1, paramInt2);
  }
  
  private static GradientDrawable createGradient(int paramInt1, int paramInt2, int paramInt3, float paramFloat, int paramInt4, boolean paramBoolean, float[] paramArrayOfFloat)
  {
    int[] arrayOfInt = new int[100];
    int i1 = arrayOfInt.length;
    int i = (paramInt1 >> 16 & 0xFF) - paramInt2;
    int j = (paramInt1 >> 8 & 0xFF) - paramInt2;
    int k = (paramInt1 & 0xFF) - paramInt2;
    paramInt1 = i;
    if (i < 0) {
      paramInt1 = 0;
    }
    i = j;
    if (j < 0) {
      i = 0;
    }
    j = k;
    if (k < 0) {
      j = 0;
    }
    paramInt2 = (paramInt2 + paramInt3) / i1;
    k = paramInt2;
    if (paramInt2 <= 0) {
      k = 1;
    }
    paramInt2 = i;
    paramInt3 = j;
    i = 0;
    for (;;)
    {
      if (i >= i1)
      {
        Object localObject = GradientDrawable.Orientation.BOTTOM_TOP;
        if (paramBoolean) {
          localObject = GradientDrawable.Orientation.TOP_BOTTOM;
        }
        localObject = new GradientDrawable((GradientDrawable.Orientation)localObject, arrayOfInt);
        ((GradientDrawable)localObject).setCornerRadii(paramArrayOfFloat);
        if (paramFloat > 0.0F) {
          ((GradientDrawable)localObject).setStroke((int)paramFloat, paramInt4);
        }
        ((GradientDrawable)localObject).setGradientRadius(50.0F);
        return localObject;
      }
      int n = paramInt1 + k;
      int m = paramInt2 + k;
      j = paramInt3 + k;
      paramInt1 = n;
      if (n > 255) {
        paramInt1 = 255;
      }
      paramInt2 = m;
      if (m > 255) {
        paramInt2 = 255;
      }
      paramInt3 = j;
      if (j > 255) {
        paramInt3 = 255;
      }
      arrayOfInt[i] = Color.argb(255, paramInt1, paramInt2, paramInt3);
      i += 1;
    }
  }
  
  public static String getClientPackage()
  {
    return clientPackage;
  }
  
  public static TapjoyDownloadListener getVirtualGoodDownloadListener()
  {
    return tapjoyVGDownloadListener;
  }
  
  public static FocusListener getVirtualGoodsFocusListener()
  {
    return tapjoyVGFocusListener;
  }
  
  private void initView()
  {
    setContentView(getResources().getIdentifier("tapjoy_virtualgoods", "layout", getClientPackage()));
    int i = ctx.getSharedPreferences("tjcPrefrences", 0).getInt("tapjoyPrimaryColor", 0);
    TapjoyLog.i("Virtual Goods", "baseColor: " + Integer.toHexString(i));
    int j = createColor(i, -16, -16, -16);
    int k = createColor(i, -64, -64, -64);
    int m = createColor(i, 64, 64, 64);
    int n = createColor(i, -80, -80, -80);
    Object localObject3 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerLeft);
    Object localObject4 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerLeft);
    Object localObject5 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerLeft);
    Object localObject6 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerRight);
    Object localObject7 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerRight);
    Object localObject8 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerRight);
    Object localObject9 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerAll);
    GradientDrawable localGradientDrawable1 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable2 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable3 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerAll);
    GradientDrawable localGradientDrawable4 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable5 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable6 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerAll);
    GradientDrawable localGradientDrawable7 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable8 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable9 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerAll);
    GradientDrawable localGradientDrawable10 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable11 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable12 = createGradient(k, 48, 80, 1.0F, n, true, this.cornerAll);
    GradientDrawable localGradientDrawable13 = createGradient(j, 48, 80, 1.0F, n, false, this.cornerAll);
    GradientDrawable localGradientDrawable14 = createGradient(k, 48, 80, 1.0F, n, false, this.cornerAll);
    Object localObject2 = new StateListDrawable();
    Object localObject1 = new StateListDrawable();
    StateListDrawable localStateListDrawable1 = new StateListDrawable();
    StateListDrawable localStateListDrawable2 = new StateListDrawable();
    StateListDrawable localStateListDrawable3 = new StateListDrawable();
    StateListDrawable localStateListDrawable4 = new StateListDrawable();
    StateListDrawable localStateListDrawable5 = new StateListDrawable();
    ((StateListDrawable)localObject2).addState(new int[] { 16842919 }, (Drawable)localObject3);
    ((StateListDrawable)localObject2).addState(new int[] { -16842908, -16842913 }, (Drawable)localObject4);
    ((StateListDrawable)localObject2).addState(new int[] { -16842908, 16842913 }, (Drawable)localObject5);
    ((StateListDrawable)localObject1).addState(new int[] { 16842919 }, (Drawable)localObject6);
    ((StateListDrawable)localObject1).addState(new int[] { -16842908, -16842913 }, (Drawable)localObject7);
    ((StateListDrawable)localObject1).addState(new int[] { -16842908, 16842913 }, (Drawable)localObject8);
    localStateListDrawable1.addState(new int[] { 16842919 }, (Drawable)localObject9);
    localStateListDrawable1.addState(new int[] { -16842908, -16842913 }, localGradientDrawable1);
    localStateListDrawable1.addState(new int[] { -16842908, 16842913 }, localGradientDrawable2);
    localStateListDrawable2.addState(new int[] { 16842919 }, localGradientDrawable3);
    localStateListDrawable2.addState(new int[] { -16842908, -16842913 }, localGradientDrawable4);
    localStateListDrawable2.addState(new int[] { -16842908, 16842913 }, localGradientDrawable5);
    localStateListDrawable3.addState(new int[] { 16842919 }, localGradientDrawable6);
    localStateListDrawable3.addState(new int[] { -16842908, -16842913 }, localGradientDrawable7);
    localStateListDrawable3.addState(new int[] { -16842908, 16842913 }, localGradientDrawable8);
    localStateListDrawable4.addState(new int[] { 16842919 }, localGradientDrawable9);
    localStateListDrawable4.addState(new int[] { -16842908, -16842913 }, localGradientDrawable10);
    localStateListDrawable4.addState(new int[] { -16842908, 16842913 }, localGradientDrawable11);
    localStateListDrawable5.addState(new int[] { 16842919 }, localGradientDrawable12);
    localStateListDrawable5.addState(new int[] { -16842908, -16842913 }, localGradientDrawable13);
    localStateListDrawable5.addState(new int[] { -16842908, 16842913 }, localGradientDrawable14);
    localObject3 = (LinearLayout)findViewById(getResources().getIdentifier("vg_background", "id", getClientPackage()));
    localObject4 = (LinearLayout)findViewById(getResources().getIdentifier("vg_store_footer", "id", getClientPackage()));
    localObject5 = (LinearLayout)findViewById(getResources().getIdentifier("vg_item_footer", "id", getClientPackage()));
    localObject6 = (TextView)findViewById(getResources().getIdentifier("vg_detail_header", "id", getClientPackage()));
    localObject7 = (RelativeLayout)findViewById(getResources().getIdentifier("vg_detail_info", "id", getClientPackage()));
    localObject8 = (ScrollView)findViewById(getResources().getIdentifier("vg_detail_desc", "id", getClientPackage()));
    localObject9 = (LinearLayout)findViewById(getResources().getIdentifier("vg_detail_footer", "id", getClientPackage()));
    ((LinearLayout)localObject3).setBackgroundDrawable(createGradient(i, 32, 32, 0.0F, 0, false, this.cornerNone));
    ((LinearLayout)localObject4).setBackgroundDrawable(createGradient(i, 32, 32, 0.0F, 0, false, this.cornerNone));
    ((LinearLayout)localObject5).setBackgroundDrawable(createGradient(i, 32, 32, 0.0F, 0, false, this.cornerNone));
    ((TextView)localObject6).setBackgroundDrawable(createGradient(m, 32, 4, 2.0F, n, false, this.cornerAll));
    ((RelativeLayout)localObject7).setBackgroundDrawable(createGradient(m, 32, 4, 2.0F, n, true, this.cornerAll));
    ((ScrollView)localObject8).setBackgroundDrawable(createGradient(m, 32, 4, 2.0F, n, true, this.cornerAll));
    ((LinearLayout)localObject9).setBackgroundDrawable(createGradient(m, 32, 4, 2.0F, n, false, this.cornerAll));
    this.tabs = ((TabHost)findViewById(getResources().getIdentifier("VGTabHost", "id", getClientPackage())));
    this.tabs.setup();
    localObject3 = this.tabs.newTabSpec("tab1");
    ((TabHost.TabSpec)localObject3).setContent(getResources().getIdentifier("Store", "id", getClientPackage()));
    localObject4 = new Button(this);
    ((Button)localObject4).setText("Available Items");
    ((Button)localObject4).setTextColor(-1);
    ((Button)localObject4).setPadding(8, 8, 8, 8);
    ((Button)localObject4).setBackgroundDrawable((Drawable)localObject2);
    ((Button)localObject4).setShadowLayer(2.0F, 2.0F, 2.0F, getResources().getIdentifier("vg_shadow_color", "color", getClientPackage()));
    ((TabHost.TabSpec)localObject3).setIndicator((View)localObject4);
    this.tabs.addTab((TabHost.TabSpec)localObject3);
    localObject2 = this.tabs.newTabSpec("tab3");
    ((TabHost.TabSpec)localObject2).setContent(getResources().getIdentifier("YourItem", "id", getClientPackage()));
    localObject3 = new Button(this);
    ((Button)localObject3).setText("My Items");
    ((Button)localObject3).setTextColor(-1);
    ((Button)localObject3).setPadding(8, 8, 8, 8);
    ((Button)localObject3).setBackgroundDrawable((Drawable)localObject1);
    ((Button)localObject3).setShadowLayer(2.0F, 2.0F, 2.0F, getResources().getIdentifier("vg_shadow_color", "color", getClientPackage()));
    ((TabHost.TabSpec)localObject2).setIndicator((View)localObject3);
    this.tabs.addTab((TabHost.TabSpec)localObject2);
    this.storeProgress = ((ProgressBar)findViewById(getResources().getIdentifier("StoreProgress", "id", getClientPackage())));
    this.purchasedItemProgress = ((ProgressBar)findViewById(getResources().getIdentifier("YourItemProgress", "id", getClientPackage())));
    this.storeItemTable = ((TableLayout)findViewById(getResources().getIdentifier("StoreTable", "id", getClientPackage())));
    this.purchasedItemTable = ((TableLayout)findViewById(getResources().getIdentifier("YourItemTable", "id", getClientPackage())));
    this.getItemDialog = new Dialog(this);
    this.getMoreItemDialog = new Dialog(this);
    this.itemDownloadedDialog = new Dialog(this);
    this.detailView = ((LinearLayout)findViewById(getResources().getIdentifier("ItemDetail", "id", getClientPackage())));
    this.detailView.setVisibility(8);
    this.storeHeaderLeftTitle = ((TextView)findViewById(getResources().getIdentifier("storeHeaderLeftTitle", "id", getClientPackage())));
    this.storeHeaderLeftTitle.setText("Item");
    detailErrorIcon = (ImageView)findViewById(getResources().getIdentifier("vg_detail_error_icon", "id", getClientPackage()));
    this.myItemsHeaderLeftTitle = ((TextView)findViewById(getResources().getIdentifier("myItemsHeaderLeftTitle", "id", getClientPackage())));
    this.myItemsHeaderLeftTitle.setText("Item");
    this.storeHeaderRightTitle = ((TextView)findViewById(getResources().getIdentifier("storeHeaderRightTitle", "id", getClientPackage())));
    this.storeHeaderRightTitle.setText(currencyName);
    this.myItemsHeaderRightTitle = ((TextView)findViewById(getResources().getIdentifier("myItemsHeaderRightTitle", "id", getClientPackage())));
    this.myItemsHeaderRightTitle.setText(currencyName);
    this.vgFooterLeft = ((TextView)findViewById(getResources().getIdentifier("VGFooterLeft", "id", getClientPackage())));
    this.vgFooterLeft.setText("Your " + currencyName + ": " + tapPoints);
    this.vgPurchasedFooterLeft = ((TextView)findViewById(getResources().getIdentifier("VGYourItemFooterLeft", "id", getClientPackage())));
    this.vgPurchasedFooterLeft.setText("Your " + currencyName + ": " + tapPoints);
    this.vgDetailFooterLeft = ((TextView)findViewById(getResources().getIdentifier("VGDetailFooterLeft", "id", getClientPackage())));
    this.vgDetailFooterLeft.setText("Your " + currencyName + ": " + tapPoints);
    this.vgGetMoreBtn = ((Button)findViewById(getResources().getIdentifier("VGGetMoreBtn", "id", getClientPackage())));
    this.vgGetMoreBtn.setText("Get more " + currencyName);
    this.vgGetMoreBtn.setBackgroundDrawable(localStateListDrawable1);
    this.vgGetMoreBtn.setOnClickListener(this);
    this.vgPurchasedGetMoreBtn = ((Button)findViewById(getResources().getIdentifier("VGYourItemGetMoreBtn", "id", getClientPackage())));
    this.vgPurchasedGetMoreBtn.setText("Get more " + currencyName);
    this.vgPurchasedGetMoreBtn.setBackgroundDrawable(localStateListDrawable2);
    this.vgPurchasedGetMoreBtn.setOnClickListener(this);
    this.vgDetailGetMoreBtn = ((Button)findViewById(getResources().getIdentifier("VGDetailGetMoreBtn", "id", getClientPackage())));
    this.vgDetailGetMoreBtn.setText("Get more " + currencyName);
    this.vgDetailGetMoreBtn.setBackgroundDrawable(localStateListDrawable3);
    this.vgDetailGetMoreBtn.setOnClickListener(this);
    this.detailGetThisItemButton = ((Button)findViewById(getResources().getIdentifier("vg_detail_action_button", "id", getClientPackage())));
    this.detailGetThisItemButton.setText("Get this item");
    this.detailGetThisItemButton.setBackgroundDrawable(localStateListDrawable4);
    detailRetryButton = (Button)findViewById(getResources().getIdentifier("RetryDetailBtn", "id", getClientPackage()));
    detailRetryButton.setText("Retry");
    detailRetryButton.setBackgroundDrawable(localStateListDrawable5);
    detailRetryButton.setOnClickListener(this.virtualGoodUtil.retryDetailClickListener);
    this.moreStoreItems = new Button(this);
    this.moreStoreItems.setTag("MoreStoreItemsButton");
    this.moreStoreItems.setOnClickListener(this);
    this.morePurchasedItem = new Button(this);
    this.morePurchasedItem.setTag("MorePurchasedItemsButton");
    this.morePurchasedItem.setOnClickListener(this);
    storeNoData = (TextView)findViewById(getResources().getIdentifier("StoreNoDataText", "id", getClientPackage()));
    yourItemNoData = (TextView)findViewById(getResources().getIdentifier("YourItemNoDataText", "id", getClientPackage()));
    this.tabs.setCurrentTab(0);
    localObject1 = (ScrollView)findViewById(getResources().getIdentifier("StoreLayout", "id", getClientPackage()));
    ((ScrollView)localObject1).setFillViewport(false);
    ((ScrollView)localObject1).setScrollContainer(false);
    detailDownloadStatusTextView = (TextView)findViewById(getResources().getIdentifier("vg_detail_download_status_text", "id", getClientPackage()));
    detailProgressBar = (ProgressBar)findViewById(getResources().getIdentifier("vg_detail_progress_bar", "id", getClientPackage()));
  }
  
  private void purchaseVirtualGood()
  {
    TapjoyLog.i("Virtual Goods", "callGetPurchasedVGItems");
    this.getPurchasedVGItems = new PurchaseVirtualGoodTask(null);
    TapjoyLog.i("Virtual Goods", "Processing your request...");
    try
    {
      this.progressDialog = ProgressDialog.show(this, "", "Processing your request ...", true);
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          TapjoyLog.i("Virtual Goods", "getPurchasedVGItems...");
          this.getPurchasedVGItems.execute(new VGStoreItem[] { this.currentVgStoreItem });
          return;
        }
        catch (Exception localException2)
        {
          TapjoyLog.e("Virtual Goods", "exception: " + localException2.toString());
          this.progressDialog.cancel();
          showGetPurchasedItemsNetworkErrorDialog(this.currentVgStoreItem);
        }
        localException1 = localException1;
        TapjoyLog.e("Virtual Goods", "exception: " + localException1.toString());
      }
    }
  }
  
  public static void setVirtualGoodDownloadListener(TapjoyDownloadListener paramTapjoyDownloadListener)
  {
    tapjoyVGDownloadListener = paramTapjoyDownloadListener;
  }
  
  public static void setVirtualGoodsFocusListener(FocusListener paramFocusListener)
  {
    tapjoyVGFocusListener = paramFocusListener;
  }
  
  private void showCachedPurchasedItemsDialog()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        Object localObject = new AlertDialog.Builder(TJCVirtualGoods.this);
        ((AlertDialog.Builder)localObject).setTitle("Can't load my items");
        ((AlertDialog.Builder)localObject).setPositiveButton("OK", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.cancel();
          }
        });
        ((AlertDialog.Builder)localObject).setMessage("Service is unreachable.\nOnly showing downloaded items.");
        localObject = ((AlertDialog.Builder)localObject).create();
        try
        {
          ((AlertDialog)localObject).show();
          return;
        }
        catch (WindowManager.BadTokenException localBadTokenException) {}
      }
    });
  }
  
  private void showGetPurchasedItemsNetworkErrorDialog(VGStoreItem paramVGStoreItem)
  {
    this.currentVgStoreItem = paramVGStoreItem;
    this.exceptionDialog = new AlertDialog.Builder(this).setMessage("Service is unreachable.\nDo you want to try again?").setNegativeButton("Cancel", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    }).setPositiveButton("Retry", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        TJCVirtualGoods.this.purchaseVirtualGood();
      }
    }).create();
    try
    {
      if (this.exceptionDialog != null) {
        this.exceptionDialog.show();
      }
      return;
    }
    catch (WindowManager.BadTokenException paramVGStoreItem) {}
  }
  
  private void showGetStoreItemsNetworkErrorDialog()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(TJCVirtualGoods.this);
        localBuilder.setNegativeButton("Cancel", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.cancel();
          }
        });
        localBuilder.setPositiveButton("Retry", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            TJCVirtualGoods.this.fetchAllStoreItems = new TJCVirtualGoods.FetchAndBuildStoreItemsTask(TJCVirtualGoods.this, null);
            TJCVirtualGoods.this.fetchAllStoreItems.execute(new Void[0]);
            paramAnonymous2DialogInterface.cancel();
          }
        });
        localBuilder.setMessage("Service is unreachable.\nDo you want to try again?");
        TJCVirtualGoods.this.allItemAlert = localBuilder.create();
        try
        {
          TJCVirtualGoods.this.allItemAlert.show();
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void showItemDetail(VGStoreItem paramVGStoreItem, int paramInt1, final View paramView, int paramInt2)
  {
    TapjoyLog.i("Virtual Goods", "********************");
    TapjoyLog.i("Virtual Goods", "showItemDetail");
    paramView = (ImageView)findViewById(getResources().getIdentifier("vg_detail_item_icon", "id", getClientPackage()));
    paramView.setImageDrawable(null);
    Object localObject;
    int j;
    int i;
    if (paramVGStoreItem.getThumbImage() != null)
    {
      paramView.setImageDrawable(paramVGStoreItem.getThumbImage());
      ((TextView)findViewById(getResources().getIdentifier("vg_detail_item_name_text", "id", getClientPackage()))).setText(paramVGStoreItem.getName());
      ((TextView)findViewById(getResources().getIdentifier("vg_detail_item_type_text", "id", getClientPackage()))).setText(paramVGStoreItem.getVgStoreItemTypeName());
      paramView = (TextView)findViewById(getResources().getIdentifier("vg_detail_points_text", "id", getClientPackage()));
      paramView.setText(paramVGStoreItem.getPrice());
      paramView.setSelected(true);
      ((TextView)findViewById(getResources().getIdentifier("vg_detail_currency_text", "id", getClientPackage()))).setText(currencyName);
      paramView = (LinearLayout)findViewById(getResources().getIdentifier("ScrollLayout", "id", getClientPackage()));
      paramView.removeAllViews();
      localObject = paramVGStoreItem.getVgStoreItemsAttributeValueList();
      j = getResources().getColor(getResources().getIdentifier("virtual_goods_details_text_color", "color", getClientPackage()));
      i = 0;
      if (i < ((ArrayList)localObject).size()) {
        break label460;
      }
      if ((paramVGStoreItem.getDescription() != null) && (!paramVGStoreItem.getDescription().equals("")))
      {
        localObject = new TextView(this);
        ((TextView)localObject).setText("Description:");
        ((TextView)localObject).setTypeface(Typeface.DEFAULT_BOLD);
        ((TextView)localObject).setPadding(0, 0, 0, 3);
        ((TextView)localObject).setTextColor(j);
        paramView.addView((View)localObject);
        localObject = new TextView(this);
        ((TextView)localObject).setText(paramVGStoreItem.getDescription());
        ((TextView)localObject).setTextColor(j);
        paramView.addView((View)localObject);
      }
      paramVGStoreItem.getVgStoreItemID();
      paramView = paramVGStoreItem.getName();
      localObject = paramVGStoreItem.getPrice();
      this.currentVgStoreItem = paramVGStoreItem;
    }
    switch (paramInt1)
    {
    case 1: 
    default: 
    case 0: 
      for (;;)
      {
        this.isItemDetailView = true;
        return;
        if ((paramVGStoreItem.getThumbImageUrl() == null) || (paramVGStoreItem.getThumbImageUrl().equals(""))) {
          break;
        }
        break;
        label460:
        TextView localTextView = new TextView(this);
        String str = ((VGStoreItemAttributeValue)((ArrayList)localObject).get(i)).getAttributeType();
        if (str.equals("quantity"))
        {
          detailDescQuantity = new TextView(this);
          detailDescQuantity.setText(str + ": " + paramVGStoreItem.getNumberOwned());
          detailDescQuantity.setPadding(0, 0, 0, 10);
          detailDescQuantity.setTextColor(j);
          paramView.addView(detailDescQuantity);
        }
        for (;;)
        {
          i += 1;
          break;
          localTextView.setText(str + ": " + ((VGStoreItemAttributeValue)((ArrayList)localObject).get(i)).getAttributeValue());
          localTextView.setPadding(0, 0, 0, 10);
          localTextView.setTextColor(j);
          paramView.addView(localTextView);
        }
        this.detailGetThisItemButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            TJCVirtualGoods.this.getItemDialog = new AlertDialog.Builder(TJCVirtualGoods.this).setTitle("").setMessage("Are you sure you want  \n" + paramView + " for " + this.val$storeItemPrice + " " + TJCVirtualGoods.currencyName + "?").setPositiveButton("OK", new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                TJCVirtualGoods.this.purchaseVirtualGood();
              }
            }).setNegativeButton("Cancel", new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
            }).create();
            try
            {
              TJCVirtualGoods.this.getItemDialog.show();
              return;
            }
            catch (WindowManager.BadTokenException paramAnonymousView) {}
          }
        });
        if (this.detailGetThisItemButton.getBackground() == null) {
          this.detailGetThisItemButton.setText("Get this item");
        }
        this.detailGetThisItemButton.setVisibility(0);
        detailDownloadStatusTextView.setVisibility(8);
        detailProgressBar.setVisibility(8);
        detailErrorIcon.setVisibility(8);
        detailRetryButton.setVisibility(8);
      }
    }
    this.detailGetThisItemButton.setVisibility(8);
    paramView = paramVGStoreItem.getVgStoreItemID();
    TapjoyLog.i("Virtual Goods", "virtualGoodsToDownload size: " + this.virtualGoodUtil.virtualGoodsToDownload.size());
    if (this.virtualGoodUtil.virtualGoodsToDownload.containsKey(paramView))
    {
      localObject = (TJCVirtualGoodUtil.DownloadVirtualGoodTask)this.virtualGoodUtil.virtualGoodsToDownload.get(paramView);
      TapjoyLog.i("Virtual Goods", "showing detail view of an download in progress... " + paramVGStoreItem.getName() + ", status: " + ((TJCVirtualGoodUtil.DownloadVirtualGoodTask)localObject).virtualGoodDownloadStatus);
      updateDetailViewFromDownloader((TJCVirtualGoodUtil.DownloadVirtualGoodTask)localObject);
    }
    for (;;)
    {
      detailViewStoreID = paramView;
      isPurchasedItemDetailView = true;
      this.virtualGoodUtil.setDetailIndex(paramInt2);
      break;
      detailDownloadStatusTextView.setText("Download Completed");
      detailDownloadStatusTextView.setVisibility(0);
      detailProgressBar.setVisibility(8);
      detailErrorIcon.setVisibility(8);
      detailRetryButton.setVisibility(8);
    }
  }
  
  private void showItemDownloadedDialog(String paramString, final VGStoreItem paramVGStoreItem)
  {
    this.itemDownloadedDialog = new AlertDialog.Builder(this).setTitle("").setMessage(paramString).setPositiveButton("OK", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        TJCVirtualGoods.this.startDownloadingPurchasedVG(paramVGStoreItem);
      }
    }).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        TapjoyLog.i("Virtual Goods", "onCANCEL");
        TJCVirtualGoods.this.startDownloadingPurchasedVG(paramVGStoreItem);
      }
    }).create();
    try
    {
      this.itemDownloadedDialog.show();
      return;
    }
    catch (Exception paramString)
    {
      TapjoyLog.e("Virtual Goods", "showItemDownloadedDialog: " + paramString.toString());
    }
  }
  
  private void showMoreStoreItemsButton(int paramInt)
  {
    View localView = this.storeItemTable.findViewWithTag("MoreStoreItemsButton");
    if (localView != null)
    {
      this.storeItemTable.removeView(localView);
      this.moreStoreItems = ((Button)localView);
    }
    if (paramInt > 0)
    {
      if (paramInt <= 25) {
        break label63;
      }
      this.moreStoreItems.setText("Show 25 more...");
    }
    for (;;)
    {
      this.storeItemTable.addView(this.moreStoreItems);
      return;
      label63:
      this.moreStoreItems.setText("Show " + paramInt + " more...");
    }
  }
  
  private void showOffers()
  {
    TapjoyLog.i("Virtual Goods", "Showing offers (userID = " + userID + ")");
    Intent localIntent = new Intent(this, TJCOffersWebView.class);
    localIntent.putExtra("USER_ID", userID);
    localIntent.putExtra("URL_PARAMS", urlParams);
    startActivity(localIntent);
  }
  
  private void showPurchasedStoreItemTableView(int paramInt, Context paramContext)
  {
    if (paramInt == 0) {
      this.purchasedItemTable.removeAllViews();
    }
    if (this.purchasedItemArray.size() == 0)
    {
      TapjoyLog.i("Virtual Goods", "No items to display");
      yourItemNoData.setVisibility(0);
      return;
    }
    yourItemNoData.setVisibility(8);
    for (;;)
    {
      if (paramInt >= this.purchasedItemArray.size())
      {
        if (this.purchasedItemArray.size() > 0) {
          showMoreStoreItemsButton(VGStoreItem.availableItemsMoreDataAvailable);
        }
        updateHeaderFooters(this);
        return;
      }
      this.purchasedItemTable.addView(buildPurchasedItemRow((VGStoreItem)this.purchasedItemArray.get(paramInt), paramInt, 2, paramContext));
      View localView = new View(this);
      localView.setBackgroundResource(getResources().getIdentifier("tapjoy_gradientline", "drawable", getClientPackage()));
      this.purchasedItemTable.addView(localView, new ViewGroup.LayoutParams(-1, 1));
      paramInt += 1;
    }
  }
  
  private void showStoreItemTableView(int paramInt, Context paramContext)
  {
    if (paramInt == 0) {
      this.storeItemTable.removeAllViews();
    }
    if (this.storeItemArray.size() == 0)
    {
      storeNoData.setVisibility(0);
      return;
    }
    storeNoData.setVisibility(8);
    for (;;)
    {
      if (paramInt >= this.storeItemArray.size())
      {
        updateHeaderFooters(this);
        return;
      }
      LinearLayout localLinearLayout = buildStoreItemRow((VGStoreItem)this.storeItemArray.get(paramInt), paramInt, 0, paramContext);
      View localView = new View(this);
      localView.setBackgroundResource(getResources().getIdentifier("tapjoy_gradientline", "drawable", getClientPackage()));
      if (!((VGStoreItem)this.storeItemArray.get(paramInt)).isShown())
      {
        localLinearLayout.setVisibility(8);
        localView.setVisibility(8);
      }
      this.storeItemTable.addView(localLinearLayout);
      this.storeItemTable.addView(localView, new ViewGroup.LayoutParams(-1, 1));
      paramInt += 1;
    }
  }
  
  private void startDownloadingPurchasedVG(VGStoreItem paramVGStoreItem)
  {
    TapjoyLog.i("Virtual Goods", "--------------------");
    TapjoyLog.i("Virtual Goods", "SUCCESSFUL PURCHASE");
    Object localObject1 = new StatFs(Environment.getDataDirectory().getPath());
    long l = ((StatFs)localObject1).getAvailableBlocks() * ((StatFs)localObject1).getBlockSize();
    TapjoyLog.i("File System", "FREE INTERNAL MEMORY: " + l / 1024L + " KB");
    localObject1 = new StatFs(Environment.getExternalStorageDirectory().getPath());
    l = ((StatFs)localObject1).getAvailableBlocks() * ((StatFs)localObject1).getBlockSize();
    TapjoyLog.i("File System", "FREE EXTERNAL MEMORY: " + l / 1024L + " KB");
    int i = 0;
    for (;;)
    {
      if (i >= this.purchasedItemArray.size())
      {
        isPurchasedItemDetailView = true;
        detailViewStoreID = paramVGStoreItem.getVgStoreItemID();
        downloadStarted = true;
        this.storeItemArray.indexOf(paramVGStoreItem);
        paramVGStoreItem.setShown(false);
        localObject1 = this.virtualGoodUtil;
        localObject1.getClass();
        TJCVirtualGoodUtil.DownloadVirtualGoodTask localDownloadVirtualGoodTask = new TJCVirtualGoodUtil.DownloadVirtualGoodTask((TJCVirtualGoodUtil)localObject1);
        if (this.virtualGoodUtil.virtualGoodsToDownload.get(paramVGStoreItem.getVgStoreItemID()) == null)
        {
          this.virtualGoodUtil.virtualGoodsToDownload.put(paramVGStoreItem.getVgStoreItemID(), localDownloadVirtualGoodTask);
          this.purchasedThroughAvailableItem += 1;
          localObject1 = null;
          if (this.purchasedItemArray.size() > 0)
          {
            localObject2 = this.purchasedItemTable.findViewWithTag("MorePurchasedItemsButton");
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              this.purchasedItemTable.removeView((View)localObject2);
              localObject1 = localObject2;
            }
          }
          this.purchasedItemArray.add(paramVGStoreItem);
          if (this.virtualGoodUtil.purchaseItems == null)
          {
            this.virtualGoodUtil.purchaseItems = this.purchasedItemArray;
            yourItemNoData.setVisibility(8);
          }
          i = this.purchasedItemArray.indexOf(paramVGStoreItem);
          int j = ((VGStoreItem)this.purchasedItemArray.get(i)).getNumberOwned();
          ((VGStoreItem)this.purchasedItemArray.get(i)).setNumberOwned(j + 1);
          detailDescQuantity.setText("quantity: " + (j + 1));
          Object localObject2 = buildPurchasedItemRow(paramVGStoreItem, i, 2, this);
          this.purchasedItemTable.addView((View)localObject2);
          View localView = new View(this);
          localView.setBackgroundResource(getResources().getIdentifier("tapjoy_gradientline", "drawable", getClientPackage()));
          this.purchasedItemTable.addView(localView, new ViewGroup.LayoutParams(-1, 1));
          if (localObject1 != null) {
            this.purchasedItemTable.addView((Button)localObject1);
          }
          ((TextView)((LinearLayout)localObject2).findViewById(ctx.getResources().getIdentifier("vg_row_index", "id", getClientPackage()))).setText(i);
          localDownloadVirtualGoodTask.localProgressBar = ((ProgressBar)((LinearLayout)localObject2).findViewById(ctx.getResources().getIdentifier("vg_row_progress_bar", "id", getClientPackage())));
          this.detailGetThisItemButton.setVisibility(8);
          detailProgressBar.setVisibility(0);
          localDownloadVirtualGoodTask.localDownloadStatusText = ((TextView)((LinearLayout)localObject2).findViewById(ctx.getResources().getIdentifier("vg_row_download_status_text", "id", getClientPackage())));
          localDownloadVirtualGoodTask.localDownloadStatusText.setText("Download Pending");
          localDownloadVirtualGoodTask.localRetryButton = ((Button)((LinearLayout)localObject2).findViewById(ctx.getResources().getIdentifier("vg_row_retry_button", "id", getClientPackage())));
          localDownloadVirtualGoodTask.localErrorIcon = ((ImageView)((LinearLayout)localObject2).findViewById(ctx.getResources().getIdentifier("vg_row_error_icon", "id", getClientPackage())));
          localDownloadVirtualGoodTask.localRetryButton.setOnClickListener(this.virtualGoodUtil.retryClickListener);
          localDownloadVirtualGoodTask.localErrorIcon.setOnClickListener(this.virtualGoodUtil.errorMsgClickListener);
          this.virtualGoodUtil.setDetailIndex(i);
          updateDetailViewFromDownloader(localDownloadVirtualGoodTask);
          TJCVirtualGoodUtil.addTask(localDownloadVirtualGoodTask, new VGStoreItem[] { paramVGStoreItem });
        }
        this.itemDownloadedDialog.dismiss();
        return;
      }
      localObject1 = (VGStoreItem)this.purchasedItemArray.get(i);
      if (((VGStoreItem)localObject1).getVgStoreItemID().equals(paramVGStoreItem.getVgStoreItemID()))
      {
        i = ((VGStoreItem)localObject1).getNumberOwned();
        ((VGStoreItem)localObject1).setNumberOwned(i + 1);
        detailDescQuantity.setText("quantity: " + (i + 1));
        TapjoyLog.i("Virtual Goods", "ALREADY DOWNLOADED... updating quantity only");
        this.detailGetThisItemButton.setVisibility(8);
        detailDownloadStatusTextView.setText("Download Completed");
        detailDownloadStatusTextView.setVisibility(0);
        return;
      }
      i += 1;
    }
  }
  
  private void syncAndRebuildAllTables()
  {
    syncAndRebuildStoreItemTable();
    syncAndRebuildPurchasedItemTable();
  }
  
  private void syncAndRebuildStoreItemTable()
  {
    this.storeItemArray.clear();
    this.storeItemStart = 0;
    this.fetchAllStoreItems = new FetchAndBuildStoreItemsTask(null);
    this.fetchAllStoreItems.execute(new Void[0]);
  }
  
  public static void updateDetailProgressBar(int paramInt)
  {
    if (detailProgressBar != null)
    {
      detailDownloadStatusTextView.setText("Downloading... " + paramInt + "%");
      detailDownloadStatusTextView.setVisibility(0);
      detailProgressBar.setProgress(paramInt);
      detailProgressBar.setVisibility(0);
    }
  }
  
  public static void updateDetailViewFromDownloader(TJCVirtualGoodUtil.DownloadVirtualGoodTask paramDownloadVirtualGoodTask)
  {
    switch (paramDownloadVirtualGoodTask.virtualGoodDownloadStatus)
    {
    default: 
      return;
    case 1: 
      detailDownloadStatusTextView.setText("Downloading... " + paramDownloadVirtualGoodTask.progressPercent + "%");
      detailDownloadStatusTextView.setVisibility(0);
      detailProgressBar.setProgress(paramDownloadVirtualGoodTask.progressPercent);
      detailErrorIcon.setVisibility(8);
      detailRetryButton.setVisibility(8);
      detailProgressBar.setVisibility(0);
      return;
    case 0: 
      detailDownloadStatusTextView.setText("Download Pending");
      detailDownloadStatusTextView.setVisibility(0);
      detailProgressBar.setVisibility(8);
      detailErrorIcon.setVisibility(8);
      detailRetryButton.setVisibility(8);
      return;
    case 10: 
    case 20: 
      detailDownloadStatusTextView.setText("Download Completed");
      detailDownloadStatusTextView.setVisibility(0);
      detailProgressBar.setVisibility(8);
      detailErrorIcon.setVisibility(8);
      detailRetryButton.setVisibility(8);
      return;
    case 41: 
    case 42: 
      detailDownloadStatusTextView.setText("Download Failed");
      detailDownloadStatusTextView.setVisibility(0);
      detailProgressBar.setVisibility(8);
      detailErrorIcon.setVisibility(0);
      detailRetryButton.setVisibility(0);
      return;
    }
    detailDownloadStatusTextView.setText("Download Failed");
    detailDownloadStatusTextView.setVisibility(0);
    detailProgressBar.setVisibility(8);
    detailErrorIcon.setVisibility(0);
    detailRetryButton.setVisibility(0);
  }
  
  private void updateHeaderFooters(Context paramContext)
  {
    userID = TJCVirtualGoodsData.getUserID();
    currencyName = TJCVirtualGoodsData.getCurrencyName();
    tapPoints = TJCVirtualGoodsData.getPoints();
    this.storeHeaderRightTitle.setText(currencyName);
    this.myItemsHeaderRightTitle.setText(currencyName);
    this.vgFooterLeft.setText("Your " + currencyName + ": " + tapPoints);
    this.vgPurchasedFooterLeft.setText("Your " + currencyName + ": " + tapPoints);
    this.vgDetailFooterLeft.setText("Your " + currencyName + ": " + tapPoints);
    if (this.vgGetMoreBtn.getBackground() == null) {
      this.vgGetMoreBtn.setText("Get more " + currencyName);
    }
    if (this.vgPurchasedGetMoreBtn.getBackground() == null) {
      this.vgPurchasedGetMoreBtn.setText("Get more " + currencyName);
    }
    if (this.vgDetailGetMoreBtn.getBackground() == null) {
      this.vgDetailGetMoreBtn.setText("Get more " + currencyName);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 1: 
    default: 
      if ((paramView instanceof Button))
      {
        if ((paramView != this.vgGetMoreBtn) && (paramView != this.vgPurchasedGetMoreBtn) && (paramView != this.vgDetailGetMoreBtn)) {
          break label358;
        }
        offersFromVG = true;
        vgFromOffers = true;
        doNotify = false;
        showOffers();
      }
      break;
    }
    label358:
    do
    {
      return;
      TapjoyLog.i("Virtual Goods", "storeItemArray.size(): " + this.storeItemArray.size());
      this.isItemDetailView = true;
      this.tabs.setVisibility(8);
      this.detailView.setVisibility(0);
      int i = Integer.parseInt(((TextView)paramView.findViewById(getResources().getIdentifier("vg_row_index", "id", getClientPackage()))).getText().toString());
      TapjoyLog.i("Virtual Goods", "onClick index: " + i);
      if (i >= this.storeItemArray.size()) {
        break;
      }
      showItemDetail((VGStoreItem)this.storeItemArray.get(i), 0, paramView, i);
      break;
      TapjoyLog.i("Virtual Goods", "purchasedItemArray.size(): " + this.purchasedItemArray.size());
      i = Integer.parseInt(((TextView)paramView.findViewById(getResources().getIdentifier("vg_row_index", "id", getClientPackage()))).getText().toString());
      TapjoyLog.i("Virtual Goods", "onClick index: " + i);
      if (i >= this.purchasedItemArray.size()) {
        break;
      }
      this.isItemDetailView = true;
      this.tabs.setVisibility(8);
      this.detailView.setVisibility(0);
      showItemDetail((VGStoreItem)this.purchasedItemArray.get(i), 2, paramView, i);
      break;
      if (paramView == this.moreStoreItems)
      {
        this.moreStoreItems.setEnabled(false);
        this.storeItemStart += 25;
        this.fetchAllStoreItems = new FetchAndBuildStoreItemsTask(null);
        this.fetchAllStoreItems.execute(new Void[0]);
        return;
      }
    } while (paramView != this.morePurchasedItem);
    this.morePurchasedItem.setEnabled(false);
    this.purchasedItemStart += 25;
    this.fetPurchasedVGItems = new FetchAndBuildPurchasedItemsTask(null);
    this.fetPurchasedVGItems.execute(new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    TapjoyLog.i("Virtual Goods", "onCreate");
    boolean bool2 = false;
    ctx = this;
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    clientPackage = getPackageName();
    boolean bool1 = bool2;
    if (localBundle != null)
    {
      if (localBundle.containsKey("URL_PARAMS")) {
        urlParams = localBundle.getString("URL_PARAMS");
      }
      bool1 = bool2;
      if (localBundle.containsKey("my_items_tab")) {
        bool1 = localBundle.getBoolean("my_items_tab");
      }
    }
    if (paramBundle != null)
    {
      TapjoyLog.i("Virtual Goods", "*** Loading saved data from bundle ***");
      urlParams = paramBundle.getString("bundle_url_params");
    }
    TapjoyLog.i("Virtual Goods", "urlParams: " + urlParams);
    this.virtualGoodUtil = new TJCVirtualGoodUtil(this, clientPackage);
    tapjoyVGConnection = new TJCVirtualGoodsConnection("https://ws.tapjoyads.com/", urlParams);
    this.isItemDetailView = false;
    userID = TJCVirtualGoodsData.getUserID();
    currencyName = TJCVirtualGoodsData.getCurrencyName();
    tapPoints = TJCVirtualGoodsData.getPoints();
    this.storeItemArray = new ArrayList();
    this.purchasedItemArray = new ArrayList();
    initView();
    syncAndRebuildAllTables();
    if (bool1) {
      this.tabs.setCurrentTab(1);
    }
    this.virtualGoodUtil.setPurchasedItemArray(this.purchasedItemArray);
  }
  
  protected void onDestroy()
  {
    TapjoyLog.i("ExtendedFocusListener", "onDestroy");
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.isItemDetailView)
      {
        this.tabs.setVisibility(0);
        this.detailView.setVisibility(8);
        if (downloadStarted)
        {
          downloadStarted = false;
          this.tabs.setCurrentTab(1);
        }
        this.isItemDetailView = false;
        isPurchasedItemDetailView = false;
        return true;
      }
      doNotify = false;
      paramInt = 0;
      for (;;)
      {
        if (paramInt >= TJCVirtualGoodUtil.currentTasks.size())
        {
          TJCVirtualGoodUtil.currentTasks.clear();
          TJCVirtualGoodUtil.pendingTasks.clear();
          VGStoreItem.availableItemsMoreDataAvailable = 0;
          VGStoreItem.purchasedItemsMoreDataAvailable = 0;
          this.checkPurchased = Boolean.valueOf(true);
          downloadStarted = false;
          this.purchasedThroughAvailableItem = 0;
          if ((this.fetchAllStoreItems != null) && (this.fetchAllStoreItems.getStatus() == AsyncTask.Status.RUNNING)) {
            this.fetchAllStoreItems.cancel(true);
          }
          if ((this.fetPurchasedVGItems != null) && (this.fetPurchasedVGItems.getStatus() == AsyncTask.Status.RUNNING)) {
            this.fetPurchasedVGItems.cancel(true);
          }
          this.virtualGoodUtil.cancelExecution();
          finish();
          return true;
        }
        paramKeyEvent = (TJCVirtualGoodUtil.DownloadVirtualGoodTask)TJCVirtualGoodUtil.currentTasks.get(paramInt);
        if ((paramKeyEvent != null) && (paramKeyEvent.getStatus() == AsyncTask.Status.RUNNING)) {
          paramKeyEvent.cancel(true);
        }
        paramInt += 1;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (doNotify)
    {
      FocusListener localFocusListener = getVirtualGoodsFocusListener();
      if (localFocusListener != null)
      {
        TapjoyLog.i("ExtendedFocusListener", "On Pause");
        localFocusListener.onFocusLost();
      }
    }
    for (;;)
    {
      doNotify = true;
      return;
      TapjoyLog.i("ExtendedFocusListener", "On Pause Not called");
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((doNotify) && (!vgFromOffers) && (!vgFromDownloadedVG))
    {
      FocusListener localFocusListener = getVirtualGoodsFocusListener();
      if (localFocusListener != null)
      {
        TapjoyLog.i("ExtendedFocusListener", "On Resume");
        localFocusListener.onFocusGain();
      }
    }
    for (;;)
    {
      doNotify = true;
      vgFromOffers = false;
      return;
      TapjoyLog.i("ExtendedFocusListener", "On Resume Not Called");
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    TapjoyLog.i("Virtual Goods", "*** onSaveInstanceState ***");
    paramBundle.putString("bundle_url_params", urlParams);
  }
  
  public void syncAndRebuildPurchasedItemTable()
  {
    this.purchasedItemArray.clear();
    this.purchasedItemStart = 0;
    this.fetPurchasedVGItems = new FetchAndBuildPurchasedItemsTask(null);
    this.fetPurchasedVGItems.execute(new Void[0]);
  }
  
  public static class AsyncTaskPool
  {
    private ArrayList<AsyncTask> currentTasks = new ArrayList();
    private ArrayList<Object> pendingTasks = new ArrayList();
    private int poolSize;
    
    public AsyncTaskPool(int paramInt)
    {
      this.poolSize = paramInt;
      if (this.poolSize >= 5) {
        this.poolSize = 4;
      }
    }
    
    public boolean addTask(AsyncTask paramAsyncTask, Object... paramVarArgs)
    {
      if (this.currentTasks.size() < this.poolSize)
      {
        this.currentTasks.add(paramAsyncTask);
        if (paramVarArgs != null) {}
        try
        {
          paramAsyncTask.execute(paramVarArgs);
          return true;
        }
        catch (RejectedExecutionException paramAsyncTask)
        {
          return true;
        }
        paramAsyncTask.execute(new Object[0]);
        return true;
      }
      this.pendingTasks.add(new Object[] { paramAsyncTask, paramVarArgs });
      return true;
    }
    
    public int getPoolSize()
    {
      return this.poolSize;
    }
    
    public boolean removeAndExecuteNext(AsyncTask paramAsyncTask)
    {
      removeTask(paramAsyncTask);
      if ((this.pendingTasks.size() > 0) && (this.currentTasks.size() < this.poolSize))
      {
        paramAsyncTask = (Object[])this.pendingTasks.get(0);
        this.pendingTasks.remove(paramAsyncTask);
        addTask((AsyncTask)paramAsyncTask[0], (Object[])paramAsyncTask[1]);
      }
      return false;
    }
    
    public boolean removeTask(AsyncTask paramAsyncTask)
    {
      if (this.currentTasks.contains(paramAsyncTask))
      {
        this.currentTasks.remove(paramAsyncTask);
        return true;
      }
      return false;
    }
  }
  
  private class FetchAndBuildPurchasedItemsTask
    extends AsyncTask<Void, Void, ArrayList<VGStoreItem>>
  {
    private FetchAndBuildPurchasedItemsTask() {}
    
    protected ArrayList<VGStoreItem> doInBackground(Void... paramVarArgs)
    {
      TapjoyLog.i("Virtual Goods", "Fetching All Purchased Items");
      try
      {
        paramVarArgs = TJCVirtualGoods.tapjoyVGConnection.getAllPurchasedItemsFromServer(TJCVirtualGoods.this.purchasedItemStart, 25);
        if ((paramVarArgs != null) && (paramVarArgs.length() > 0))
        {
          paramVarArgs = TJCVirtualGoodsData.parseVGItemListResponse(paramVarArgs, 1, TJCVirtualGoods.this);
          return paramVarArgs;
        }
      }
      catch (Exception paramVarArgs)
      {
        TapjoyLog.e("Virtual Goods", paramVarArgs.toString());
      }
      return null;
    }
    
    protected void onCancelled()
    {
      int j = TJCVirtualGoods.this.purchasedItemArray.size();
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          return;
        }
        if (((VGStoreItem)TJCVirtualGoods.this.purchasedItemArray.get(i)).getThumbImage() != null) {
          ((BitmapDrawable)((VGStoreItem)TJCVirtualGoods.this.purchasedItemArray.get(i)).getThumbImage()).getBitmap().recycle();
        }
        i += 1;
      }
    }
    
    protected void onPostExecute(ArrayList<VGStoreItem> paramArrayList)
    {
      TJCVirtualGoods.this.purchasedItemProgress.setVisibility(8);
      TJCVirtualGoods.this.morePurchasedItem.setEnabled(true);
      if (paramArrayList == null)
      {
        TJCVirtualGoods.this.purchasedItemTable.removeAllViews();
        TJCVirtualGoods.this.purchasedItemArray.clear();
        TJCVirtualGoods.this.purchasedItemArray.addAll(TJCVirtualGoodsData.getPurchasedItems(TJCVirtualGoods.ctx));
        TJCVirtualGoods.this.virtualGoodUtil.virtualGoodsToDownload.clear();
        VGStoreItem.purchasedItemsMoreDataAvailable = 0;
        TJCVirtualGoods.this.showCachedPurchasedItemsDialog();
        TJCVirtualGoods.this.showPurchasedStoreItemTableView(0, TJCVirtualGoods.ctx);
      }
      do
      {
        return;
        int i = TJCVirtualGoods.this.purchasedItemArray.size();
        TJCVirtualGoods.this.purchasedItemArray.addAll(paramArrayList);
        TJCVirtualGoods.this.showPurchasedStoreItemTableView(i, TJCVirtualGoods.ctx);
        if (paramArrayList.size() > 0)
        {
          TJCVirtualGoods.this.checkPurchased = Boolean.valueOf(true);
          TJCVirtualGoods.this.checkPurchasedVGForDownload(VGStoreItem.purchasedItemsMoreDataAvailable, TJCVirtualGoods.ctx);
        }
      } while (TJCVirtualGoods.this.purchasedItemArray.size() >= 1);
      TJCVirtualGoods.yourItemNoData.setVisibility(0);
    }
    
    protected void onPreExecute()
    {
      TJCVirtualGoods.this.purchasedItemProgress.bringToFront();
      TJCVirtualGoods.this.purchasedItemProgress.setVisibility(0);
      TJCVirtualGoods.yourItemNoData.setVisibility(8);
    }
  }
  
  private class FetchAndBuildStoreItemsTask
    extends AsyncTask<Void, Void, ArrayList<VGStoreItem>>
  {
    private FetchAndBuildStoreItemsTask() {}
    
    protected ArrayList<VGStoreItem> doInBackground(Void... paramVarArgs)
    {
      TapjoyLog.i("Virtual Goods", "Fetching All Store Items");
      try
      {
        paramVarArgs = TJCVirtualGoods.tapjoyVGConnection.getAllStoreItemsFromServer(TJCVirtualGoods.this.storeItemStart, 25);
        if ((paramVarArgs != null) && (paramVarArgs.length() > 0))
        {
          paramVarArgs = TJCVirtualGoodsData.parseVGItemListResponse(paramVarArgs, 0, TJCVirtualGoods.this);
          return paramVarArgs;
        }
      }
      catch (Exception paramVarArgs)
      {
        TapjoyLog.e("Virtual Goods", "exception: " + paramVarArgs.toString());
      }
      return null;
    }
    
    protected void onCancelled()
    {
      int j = TJCVirtualGoods.this.storeItemArray.size();
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          return;
        }
        if (((VGStoreItem)TJCVirtualGoods.this.storeItemArray.get(i)).getThumbImage() != null) {
          ((BitmapDrawable)((VGStoreItem)TJCVirtualGoods.this.storeItemArray.get(i)).getThumbImage()).getBitmap().recycle();
        }
        i += 1;
      }
    }
    
    protected void onPostExecute(ArrayList<VGStoreItem> paramArrayList)
    {
      TJCVirtualGoods.this.storeProgress.setVisibility(8);
      TJCVirtualGoods.this.moreStoreItems.setEnabled(true);
      if (paramArrayList == null)
      {
        if (TJCVirtualGoods.this.storeItemArray.size() < 1) {
          TJCVirtualGoods.storeNoData.setVisibility(0);
        }
        TJCVirtualGoods.this.showGetStoreItemsNetworkErrorDialog();
        return;
      }
      int i = TJCVirtualGoods.this.storeItemArray.size();
      TJCVirtualGoods.this.storeItemArray.addAll(paramArrayList);
      TJCVirtualGoods.this.showStoreItemTableView(i, TJCVirtualGoods.ctx);
    }
    
    protected void onPreExecute()
    {
      TJCVirtualGoods.this.storeProgress.bringToFront();
      TJCVirtualGoods.this.storeProgress.setVisibility(0);
      TJCVirtualGoods.storeNoData.setVisibility(8);
    }
  }
  
  private class FetchItemIconTask
    extends AsyncTask<Object, Void, Drawable>
  {
    private VGStoreItem item;
    private ImageView itemIcon;
    
    private FetchItemIconTask() {}
    
    protected Drawable doInBackground(Object... paramVarArgs)
    {
      this.itemIcon = ((ImageView)paramVarArgs[0]);
      this.item = ((VGStoreItem)paramVarArgs[1]);
      try
      {
        paramVarArgs = new URL(this.item.getThumbImageUrl()).openConnection();
        paramVarArgs.setConnectTimeout(15000);
        paramVarArgs.setReadTimeout(30000);
        paramVarArgs.connect();
        paramVarArgs = new BufferedInputStream(paramVarArgs.getInputStream());
        Drawable localDrawable = Drawable.createFromStream(paramVarArgs, "src");
        paramVarArgs.close();
        return localDrawable;
      }
      catch (Exception paramVarArgs)
      {
        TapjoyLog.e("Virtual Goods", "FetchItemIconTask error: " + paramVarArgs.toString());
      }
      return null;
    }
    
    protected void onPostExecute(Drawable paramDrawable)
    {
      TJCVirtualGoods.this.asyncTaskPool.removeAndExecuteNext(this);
      this.item.setThumbImage(paramDrawable);
      this.itemIcon.setImageDrawable(paramDrawable);
    }
  }
  
  public static abstract interface FocusListener
  {
    public abstract void onFocusGain();
    
    public abstract void onFocusLost();
  }
  
  private class PurchaseVirtualGoodTask
    extends AsyncTask<VGStoreItem, Void, VGStoreItem>
  {
    boolean networkTimeout = false;
    String responseMessage = null;
    boolean successfulPurchase = false;
    
    private PurchaseVirtualGoodTask() {}
    
    protected VGStoreItem doInBackground(VGStoreItem... paramVarArgs)
    {
      for (;;)
      {
        try
        {
          TapjoyLog.i("Virtual Goods", "virtual_good_id: " + paramVarArgs[0].getVgStoreItemID());
          Object localObject = TJCVirtualGoods.tapjoyVGConnection.purchaseVGFromServer(paramVarArgs[0].getVgStoreItemID());
          if ((localObject == null) || (((String)localObject).length() <= 0)) {
            break;
          }
          localObject = TJCVirtualGoodsData.parsePurchaseVGWithCurrencyResponse((String)localObject, TJCVirtualGoods.this);
          if ((localObject != null) && (((ArrayList)localObject).size() > 0))
          {
            if (!((String)((ArrayList)localObject).get(2)).equals("")) {
              this.networkTimeout = true;
            }
            this.responseMessage = ((String)((ArrayList)localObject).get(0));
            if (((String)((ArrayList)localObject).get(1)).equals("false"))
            {
              this.successfulPurchase = false;
              TapjoyLog.i("Virtual Goods", "responseMessage: " + this.responseMessage + ", successfulPurchase: " + this.successfulPurchase);
              return paramVarArgs[0];
            }
            this.successfulPurchase = true;
            continue;
          }
          this.networkTimeout = true;
        }
        catch (Exception localException)
        {
          TapjoyLog.e("Tapjoy", "Failed to purchase item.  e: " + localException.toString());
          this.networkTimeout = true;
          return paramVarArgs[0];
        }
      }
      this.networkTimeout = true;
      paramVarArgs = paramVarArgs[0];
      return paramVarArgs;
    }
    
    protected void onPostExecute(VGStoreItem paramVGStoreItem)
    {
      TJCVirtualGoods.this.exceptionDialog = TJCVirtualGoods.this.exceptionDialog;
      TJCVirtualGoods.this.progressDialog.cancel();
      if (this.networkTimeout)
      {
        TJCVirtualGoods.this.currentVgStoreItem = paramVGStoreItem;
        TJCVirtualGoods.this.exceptionDialog = new AlertDialog.Builder(TJCVirtualGoods.this).setMessage("Service is unreachable.\nDo you want to try again?").setNegativeButton("Cancel", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.cancel();
          }
        }).setPositiveButton("Retry", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            TJCVirtualGoods.this.purchaseVirtualGood();
          }
        }).create();
      }
      try
      {
        if (TJCVirtualGoods.this.exceptionDialog != null) {
          TJCVirtualGoods.this.exceptionDialog.show();
        }
        for (;;)
        {
          label111:
          if (!this.networkTimeout)
          {
            TapjoyLog.i("Virtual Goods", "Now fetch store items again...");
            TJCVirtualGoods.this.storeItemStart = 0;
            TJCVirtualGoods.this.storeItemTable.removeAllViews();
            TJCVirtualGoods.this.storeItemArray.clear();
            TJCVirtualGoods.this.fetchAllStoreItems = new TJCVirtualGoods.FetchAndBuildStoreItemsTask(TJCVirtualGoods.this, null);
            TJCVirtualGoods.this.fetchAllStoreItems.execute(new Void[0]);
          }
          return;
          paramVGStoreItem.getVgStoreItemID();
          if (!this.successfulPurchase)
          {
            TJCVirtualGoods.this.getItemDialog.cancel();
            if (this.responseMessage.equalsIgnoreCase("Balance too low")) {
              this.responseMessage = "You do not have enough balance to purchase this item.";
            }
            TJCVirtualGoods.this.getMoreItemDialog = new AlertDialog.Builder(TJCVirtualGoods.this).setTitle("").setMessage(this.responseMessage).setPositiveButton("OK", new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
              {
                TJCVirtualGoods.this.getMoreItemDialog.cancel();
              }
            }).setNegativeButton("Get More", new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
              {
                TJCVirtualGoods.offersFromVG = true;
                TJCVirtualGoods.vgFromOffers = true;
                TJCVirtualGoods.doNotify = false;
                TJCVirtualGoods.this.showOffers();
              }
            }).create();
            try
            {
              TJCVirtualGoods.this.getMoreItemDialog.show();
            }
            catch (Exception paramVGStoreItem) {}
          }
          else
          {
            TJCVirtualGoods.this.updateHeaderFooters(TJCVirtualGoods.this);
            TJCVirtualGoods.this.showItemDownloadedDialog(this.responseMessage, paramVGStoreItem);
          }
        }
      }
      catch (Exception paramVGStoreItem)
      {
        break label111;
      }
    }
  }
  
  public static abstract interface TapjoyDownloadListener
  {
    public abstract void onDownLoad(VGStoreItem paramVGStoreItem);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TJCVirtualGoods
 * JD-Core Version:    0.7.0.1
 */