package com.tapjoy;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewParent;
import android.view.WindowManager.BadTokenException;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TableLayout;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;

public class TJCVirtualGoodUtil
{
  private static final String TAPJOY_VIRTUAL_GOOD_UTIL = "VirtualGoodUtil";
  private static String basePathSaveToPhone;
  private static String basePathSaveToSDCard;
  public static ArrayList<AsyncTask<VGStoreItem, Integer, VGStoreItem>> currentTasks = new ArrayList();
  public static ArrayList<Object> pendingTasks = new ArrayList();
  private static final int poolSize = 1;
  private static TJCVirtualGoodsConnection tapjoyVGConnection = null;
  private static TJCVirtualGoodsData tapjoyVGData = null;
  public static boolean virtualGoodsUIOpened = false;
  private Context applicationContext = null;
  private String clientPackage = null;
  public int detailIndex = 0;
  String dialogErrorMessage = "";
  private Context downloadPurchasedVGContext = null;
  public View.OnClickListener errorMsgClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      TJCVirtualGoodUtil.this.showDLErrorDialog();
    }
  };
  CheckForVirtualGoodsTask fetchPurchasedVGItems;
  private SQLiteDatabase myDB = null;
  public ArrayList<VGStoreItem> purchaseItems;
  private ArrayList<VGStoreItem> purchasedItemArray;
  public View.OnClickListener retryClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      TapjoyLog.i("VirtualGoodUtil", "retryClick");
      int i = Integer.parseInt(((TextView)((LinearLayout)paramAnonymousView.getParent().getParent()).findViewById(TJCVirtualGoodUtil.this.applicationContext.getResources().getIdentifier("vg_row_index", "id", TJCVirtualGoodUtil.this.clientPackage))).getText().toString());
      TapjoyLog.i("VirtualGoodUtil", "retry index: " + i);
      TJCVirtualGoodUtil.this.retryDownloadVG((TJCVirtualGoodUtil.DownloadVirtualGoodTask)TJCVirtualGoodUtil.this.virtualGoodsToDownload.get(((VGStoreItem)TJCVirtualGoodUtil.this.purchasedItemArray.get(i)).getVgStoreItemID()));
    }
  };
  View.OnClickListener retryDetailClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      TapjoyLog.i("VirtualGoodUtil", "RETRY DETAIL CLICK");
      try
      {
        TJCVirtualGoodUtil.this.retryDownloadVG((TJCVirtualGoodUtil.DownloadVirtualGoodTask)TJCVirtualGoodUtil.this.virtualGoodsToDownload.get(((VGStoreItem)TJCVirtualGoodUtil.this.purchasedItemArray.get(TJCVirtualGoodUtil.this.detailIndex)).getVgStoreItemID()));
        return;
      }
      catch (Exception paramAnonymousView)
      {
        TapjoyLog.e("VirtualGoodUtil", "RETRY DETAIl EXCEPTION: " + paramAnonymousView.toString());
      }
    }
  };
  private String urlParams = null;
  public Hashtable<String, DownloadVirtualGoodTask> virtualGoodsToDownload;
  
  public TJCVirtualGoodUtil(Context paramContext, String paramString)
  {
    TapjoyLog.i("VirtualGoodUtil", "TJCVirtualGoodUtil init");
    this.applicationContext = paramContext;
    this.clientPackage = paramString;
    basePathSaveToPhone = "data/data/" + this.clientPackage + "/vgDownloads/";
    basePathSaveToSDCard = Environment.getExternalStorageDirectory().toString() + "/" + this.clientPackage + "/vgDownloads/";
    this.virtualGoodsToDownload = new Hashtable();
    tapjoyVGData = new TJCVirtualGoodsData(paramContext, this.clientPackage);
    this.myDB = TJCVirtualGoodsData.TapjoyDatabaseUtil.getTapjoyDatabase(paramContext);
    paramContext = new File("data/data/" + this.clientPackage + "/vgDownloads");
    if ((!paramContext.exists()) && (paramContext.mkdir())) {
      TapjoyLog.i("VirtualGoodUtil", "vgDownloads directory created at device.....");
    }
    paramContext = new File("data/data/" + this.clientPackage + "/tempZipDownloads");
    if ((!paramContext.exists()) && (paramContext.mkdir())) {
      TapjoyLog.i("VirtualGoodUtil", "temporary zip file directory generated at device");
    }
    TapjoyLog.i("VirtualGoodUtil", "TJCVirtualGoodUtil init DONE");
  }
  
  public static boolean addTask(AsyncTask<VGStoreItem, Integer, VGStoreItem> paramAsyncTask, VGStoreItem... paramVarArgs)
  {
    TapjoyLog.i("VirtualGoodUtil", "addTask size: " + currentTasks.size() + ", pending size: " + pendingTasks.size());
    if (currentTasks.size() < 1)
    {
      currentTasks.add(paramAsyncTask);
      if (paramVarArgs != null) {}
      try
      {
        TapjoyLog.i("VirtualGoodUtil", "execute with params");
        paramAsyncTask.execute(paramVarArgs);
        return true;
      }
      catch (RejectedExecutionException paramAsyncTask)
      {
        return true;
      }
      TapjoyLog.i("VirtualGoodUtil", "execute");
      paramAsyncTask.execute(new VGStoreItem[0]);
      return true;
    }
    pendingTasks.add(new Object[] { paramAsyncTask, paramVarArgs });
    return true;
  }
  
  public static boolean removeTask(AsyncTask<VGStoreItem, Integer, VGStoreItem> paramAsyncTask)
  {
    if (currentTasks.contains(paramAsyncTask))
    {
      currentTasks.remove(paramAsyncTask);
      return true;
    }
    return false;
  }
  
  public void cancelExecution()
  {
    Enumeration localEnumeration = this.virtualGoodsToDownload.keys();
    for (;;)
    {
      if (!localEnumeration.hasMoreElements()) {
        return;
      }
      String str = (String)localEnumeration.nextElement();
      DownloadVirtualGoodTask localDownloadVirtualGoodTask = (DownloadVirtualGoodTask)this.virtualGoodsToDownload.get(str);
      if ((localDownloadVirtualGoodTask != null) && (localDownloadVirtualGoodTask.getStatus() == AsyncTask.Status.RUNNING)) {
        localDownloadVirtualGoodTask.cancel(true);
      }
      this.virtualGoodsToDownload.remove(str);
    }
  }
  
  public void checkForVirtualGoods(Context paramContext, String paramString1, String paramString2)
  {
    TapjoyLog.i("VirtualGoodUtil", "checkForVirtualGoods");
    if (tapjoyVGConnection == null)
    {
      this.clientPackage = paramString2;
      this.urlParams = paramString1;
      tapjoyVGConnection = new TJCVirtualGoodsConnection("https://ws.tapjoyads.com/", this.urlParams);
    }
    this.downloadPurchasedVGContext = paramContext;
    this.purchasedItemArray = new ArrayList();
    new Thread(new CheckForVirtualGoodsTask(null)).start();
  }
  
  public void downLoadPurcahasedVirtualGood(List<VGStoreItem> paramList, TableLayout paramTableLayout, int paramInt)
  {
    Object localObject2 = new StringBuilder();
    Object localObject1 = this.myDB.rawQuery("SELECT VGStoreItemID FROM tapjoy_VGStoreItems", null);
    int i = ((Cursor)localObject1).getColumnIndex("VGStoreItemID");
    ((Cursor)localObject1).moveToFirst();
    if (((Cursor)localObject1).isFirst()) {
      do
      {
        ((StringBuilder)localObject2).append(((Cursor)localObject1).getString(i) + ",");
      } while (((Cursor)localObject1).moveToNext());
    }
    ((Cursor)localObject1).deactivate();
    ((Cursor)localObject1).close();
    localObject1 = "";
    if (((StringBuilder)localObject2).length() > 0) {
      localObject1 = ((StringBuilder)localObject2).substring(0, ((StringBuilder)localObject2).length() - 1);
    }
    this.purchaseItems = ((ArrayList)paramList);
    for (;;)
    {
      if (paramInt >= paramList.size()) {
        return;
      }
      localObject2 = (VGStoreItem)paramList.get(paramInt);
      if ((localObject2 != null) && (((String)localObject1).indexOf(((VGStoreItem)localObject2).getVgStoreItemID()) == -1))
      {
        TapjoyLog.i("VirtualGoodUtil", "download this purchased vg: " + ((VGStoreItem)localObject2).getVgStoreItemID() + ", name: " + ((VGStoreItem)localObject2).getName());
        DownloadVirtualGoodTask localDownloadVirtualGoodTask = new DownloadVirtualGoodTask();
        Object localObject3 = paramTableLayout.getChildAt(paramInt * 2);
        if ((localObject3 instanceof LinearLayout))
        {
          localObject3 = (LinearLayout)localObject3;
          localDownloadVirtualGoodTask.localProgressBar = ((ProgressBar)((LinearLayout)localObject3).findViewById(this.applicationContext.getResources().getIdentifier("vg_row_progress_bar", "id", this.clientPackage)));
          localDownloadVirtualGoodTask.localProgressBar.setVisibility(8);
          localDownloadVirtualGoodTask.localDownloadStatusText = ((TextView)((LinearLayout)localObject3).findViewById(this.applicationContext.getResources().getIdentifier("vg_row_download_status_text", "id", this.clientPackage)));
          localDownloadVirtualGoodTask.localDownloadStatusText.setText("Download Pending");
          localDownloadVirtualGoodTask.localRetryButton = ((Button)((LinearLayout)localObject3).findViewById(this.applicationContext.getResources().getIdentifier("vg_row_retry_button", "id", this.clientPackage)));
          localDownloadVirtualGoodTask.localErrorIcon = ((ImageView)((LinearLayout)localObject3).findViewById(this.applicationContext.getResources().getIdentifier("vg_row_error_icon", "id", this.clientPackage)));
          localDownloadVirtualGoodTask.localRetryButton.setOnClickListener(this.retryClickListener);
          localDownloadVirtualGoodTask.localErrorIcon.setOnClickListener(this.errorMsgClickListener);
          this.virtualGoodsToDownload.put(((VGStoreItem)localObject2).getVgStoreItemID(), localDownloadVirtualGoodTask);
          addTask(localDownloadVirtualGoodTask, new VGStoreItem[] { localObject2 });
        }
      }
      paramInt += 1;
    }
  }
  
  public Hashtable<String, DownloadVirtualGoodTask> getdownloadVirtualGoods()
  {
    return this.virtualGoodsToDownload;
  }
  
  public boolean removeAndExecuteNext(AsyncTask<VGStoreItem, Integer, VGStoreItem> paramAsyncTask)
  {
    removeTask(paramAsyncTask);
    if ((pendingTasks.size() > 0) && (currentTasks.size() < 1))
    {
      paramAsyncTask = (Object[])pendingTasks.get(0);
      pendingTasks.remove(paramAsyncTask);
      addTask((DownloadVirtualGoodTask)paramAsyncTask[0], (VGStoreItem[])paramAsyncTask[1]);
    }
    return false;
  }
  
  public void retryDownloadVG(DownloadVirtualGoodTask paramDownloadVirtualGoodTask)
  {
    DownloadVirtualGoodTask localDownloadVirtualGoodTask = new DownloadVirtualGoodTask();
    TapjoyLog.i("VirtualGoodUtil", "RETRY DOWNLOAD VG: " + paramDownloadVirtualGoodTask.vgItem.getName());
    localDownloadVirtualGoodTask.localProgressBar = paramDownloadVirtualGoodTask.localProgressBar;
    localDownloadVirtualGoodTask.localProgressBar.setVisibility(8);
    localDownloadVirtualGoodTask.localProgressBar.setProgress(0);
    localDownloadVirtualGoodTask.localErrorIcon = paramDownloadVirtualGoodTask.localErrorIcon;
    localDownloadVirtualGoodTask.localDownloadStatusText = paramDownloadVirtualGoodTask.localDownloadStatusText;
    localDownloadVirtualGoodTask.localRetryButton = paramDownloadVirtualGoodTask.localRetryButton;
    localDownloadVirtualGoodTask.localDownloadStatusText = paramDownloadVirtualGoodTask.localDownloadStatusText;
    localDownloadVirtualGoodTask.localDownloadStatusText.setText("Download Pending");
    localDownloadVirtualGoodTask.localRetryButton.setVisibility(8);
    localDownloadVirtualGoodTask.localErrorIcon.setVisibility(8);
    localDownloadVirtualGoodTask.virtualGoodDownloadStatus = 0;
    VGStoreItem localVGStoreItem = paramDownloadVirtualGoodTask.vgItem;
    if (paramDownloadVirtualGoodTask.getStatus() == AsyncTask.Status.RUNNING) {
      paramDownloadVirtualGoodTask.cancel(true);
    }
    this.virtualGoodsToDownload.remove(localVGStoreItem.getVgStoreItemID());
    this.virtualGoodsToDownload.put(localVGStoreItem.getVgStoreItemID(), localDownloadVirtualGoodTask);
    if ((TJCVirtualGoods.isPurchasedItemDetailView) && (TJCVirtualGoods.detailViewStoreID.equals(localVGStoreItem.getVgStoreItemID())))
    {
      TapjoyLog.i("VirtualGoodUtil", "UPDATE DETAIL VIEW");
      TJCVirtualGoods.updateDetailViewFromDownloader(localDownloadVirtualGoodTask);
    }
    addTask(localDownloadVirtualGoodTask, new VGStoreItem[] { localVGStoreItem });
  }
  
  public void setDetailIndex(int paramInt)
  {
    this.detailIndex = paramInt;
  }
  
  public void setPurchasedItemArray(ArrayList<VGStoreItem> paramArrayList)
  {
    this.purchasedItemArray = paramArrayList;
  }
  
  public void showDLErrorDialog()
  {
    Object localObject = new AlertDialog.Builder(this.applicationContext);
    if (this.dialogErrorMessage.equals("")) {
      ((AlertDialog.Builder)localObject).setMessage("An error occured while downloading the contents of acquired item.");
    }
    for (;;)
    {
      ((AlertDialog.Builder)localObject).setNegativeButton("OK", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
        }
      });
      localObject = ((AlertDialog.Builder)localObject).create();
      try
      {
        ((AlertDialog)localObject).show();
        return;
      }
      catch (WindowManager.BadTokenException localBadTokenException) {}
      ((AlertDialog.Builder)localObject).setMessage(this.dialogErrorMessage);
    }
  }
  
  private class CheckForVirtualGoodsTask
    implements Runnable
  {
    private CheckForVirtualGoodsTask() {}
    
    public void run()
    {
      if (TJCVirtualGoodUtil.virtualGoodsUIOpened) {
        TapjoyLog.i("VirtualGoodUtil", "virtual goods UI is already open -- aborting check for virtual goods");
      }
      localObject3 = null;
      try
      {
        TapjoyLog.i("VirtualGoodUtil", "fetchPurchasedVGItems");
        String str = TJCVirtualGoodUtil.tapjoyVGConnection.getAllPurchasedItemsFromServer(0, 25);
        localObject1 = localObject3;
        if (str != null)
        {
          localObject1 = localObject3;
          if (str.length() > 0) {
            localObject1 = TJCVirtualGoodsData.parseVGItemListResponse(str, 1, TJCVirtualGoodUtil.this.applicationContext);
          }
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          int i;
          Object localObject2 = localObject3;
        }
      }
      if (localObject1 != null)
      {
        TJCVirtualGoodUtil.this.purchasedItemArray.addAll((Collection)localObject1);
        localObject1 = new ArrayList();
        localObject3 = TJCVirtualGoodsData.TapjoyDatabaseUtil.getTapjoyDatabase(TJCVirtualGoodUtil.this.applicationContext).rawQuery("SELECT VGStoreItemID FROM tapjoy_VGStoreItems", null);
        i = ((Cursor)localObject3).getColumnIndex("VGStoreItemID");
        ((Cursor)localObject3).moveToFirst();
        if (((Cursor)localObject3).isFirst()) {
          do
          {
            ((ArrayList)localObject1).add(new String(((Cursor)localObject3).getString(i)));
          } while (((Cursor)localObject3).moveToNext());
        }
        ((Cursor)localObject3).deactivate();
        ((Cursor)localObject3).close();
        i = 0;
      }
      for (;;)
      {
        if (i >= TJCVirtualGoodUtil.this.purchasedItemArray.size()) {
          return;
        }
        localObject3 = (VGStoreItem)TJCVirtualGoodUtil.this.purchasedItemArray.get(i);
        if ((localObject3 != null) && (!((ArrayList)localObject1).contains(((VGStoreItem)localObject3).getVgStoreItemID())))
        {
          TJCVirtualGoodUtil.virtualGoodsUIOpened = true;
          localObject1 = new Intent(TJCVirtualGoodUtil.this.downloadPurchasedVGContext, DownloadVirtualGood.class);
          ((Intent)localObject1).setFlags(268435456);
          ((Intent)localObject1).putExtra("NAME", ((VGStoreItem)localObject3).getName());
          ((Intent)localObject1).putExtra("URL_PARAMS", TJCVirtualGoodUtil.this.urlParams);
          TJCVirtualGoods.doNotify = false;
          TJCVirtualGoodUtil.this.downloadPurchasedVGContext.startActivity((Intent)localObject1);
          return;
        }
        i += 1;
      }
    }
  }
  
  public class DownloadVirtualGoodTask
    extends AsyncTask<VGStoreItem, Integer, VGStoreItem>
  {
    public boolean downloadCancel = false;
    public TextView localDownloadStatusText;
    public ImageView localErrorIcon;
    public ProgressBar localProgressBar;
    public Button localRetryButton;
    public int progressPercent = 0;
    boolean saveToSDCard = false;
    private VGStoreItem vgItem = null;
    public int virtualGoodDownloadStatus;
    
    public DownloadVirtualGoodTask()
    {
      this.saveToSDCard = false;
      this.virtualGoodDownloadStatus = 0;
    }
    
    public DownloadVirtualGoodTask(boolean paramBoolean)
    {
      this.saveToSDCard = paramBoolean;
      this.virtualGoodDownloadStatus = 0;
    }
    
    /* Error */
    private boolean downLoadVirtualGood(VGStoreItem paramVGStoreItem, boolean paramBoolean)
    {
      // Byte code:
      //   0: ldc 67
      //   2: new 69	java/lang/StringBuilder
      //   5: dup
      //   6: ldc 71
      //   8: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   11: aload_1
      //   12: invokevirtual 80	com/tapjoy/VGStoreItem:getName	()Ljava/lang/String;
      //   15: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   18: ldc 86
      //   20: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   23: iload_2
      //   24: invokevirtual 89	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
      //   27: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   30: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   33: ldc 67
      //   35: new 69	java/lang/StringBuilder
      //   38: dup
      //   39: ldc 100
      //   41: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   44: aload_1
      //   45: invokevirtual 80	com/tapjoy/VGStoreItem:getName	()Ljava/lang/String;
      //   48: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   51: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   54: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   57: iconst_0
      //   58: istore 7
      //   60: iconst_0
      //   61: istore_3
      //   62: aload_1
      //   63: invokevirtual 103	com/tapjoy/VGStoreItem:getDatafileUrl	()Ljava/lang/String;
      //   66: astore 18
      //   68: aconst_null
      //   69: astore 10
      //   71: aconst_null
      //   72: astore 12
      //   74: aconst_null
      //   75: astore 13
      //   77: aload_0
      //   78: iconst_1
      //   79: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   82: aload_0
      //   83: iconst_1
      //   84: anewarray 105	java/lang/Integer
      //   87: dup
      //   88: iconst_0
      //   89: iconst_0
      //   90: invokestatic 109	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   93: aastore
      //   94: invokevirtual 113	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:publishProgress	([Ljava/lang/Object;)V
      //   97: aload 18
      //   99: invokevirtual 119	java/lang/String:length	()I
      //   102: ifne +201 -> 303
      //   105: ldc 67
      //   107: ldc 121
      //   109: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   112: iconst_1
      //   113: istore_2
      //   114: aload 13
      //   116: astore 11
      //   118: iload_2
      //   119: ifeq +161 -> 280
      //   122: invokestatic 124	com/tapjoy/TJCVirtualGoodUtil:access$3	()Lcom/tapjoy/TJCVirtualGoodsData;
      //   125: aload_1
      //   126: aload_0
      //   127: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   130: invokevirtual 130	com/tapjoy/TJCVirtualGoodsData:saveInfo	(Lcom/tapjoy/VGStoreItem;Z)V
      //   133: aload_0
      //   134: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   137: ifeq +1054 -> 1191
      //   140: aload_0
      //   141: bipush 20
      //   143: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   146: aload_1
      //   147: aload 11
      //   149: invokevirtual 133	com/tapjoy/VGStoreItem:setDatafileUrl	(Ljava/lang/String;)V
      //   152: aload 18
      //   154: invokevirtual 119	java/lang/String:length	()I
      //   157: ifle +14 -> 171
      //   160: invokestatic 124	com/tapjoy/TJCVirtualGoodUtil:access$3	()Lcom/tapjoy/TJCVirtualGoodsData;
      //   163: aload_1
      //   164: aload_0
      //   165: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   168: invokevirtual 136	com/tapjoy/TJCVirtualGoodsData:deleteVGZip	(Lcom/tapjoy/VGStoreItem;Z)V
      //   171: aload_0
      //   172: iconst_1
      //   173: anewarray 105	java/lang/Integer
      //   176: dup
      //   177: iconst_0
      //   178: bipush 100
      //   180: invokestatic 109	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   183: aastore
      //   184: invokevirtual 113	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:publishProgress	([Ljava/lang/Object;)V
      //   187: aload_1
      //   188: invokevirtual 139	com/tapjoy/VGStoreItem:getNumberOwned	()I
      //   191: istore_3
      //   192: aload_0
      //   193: getfield 40	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:this$0	Lcom/tapjoy/TJCVirtualGoodUtil;
      //   196: invokestatic 143	com/tapjoy/TJCVirtualGoodUtil:access$0	(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;
      //   199: invokestatic 149	com/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil:getTapjoyDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
      //   202: astore 10
      //   204: new 69	java/lang/StringBuilder
      //   207: dup
      //   208: invokespecial 150	java/lang/StringBuilder:<init>	()V
      //   211: astore 11
      //   213: aload 11
      //   215: new 69	java/lang/StringBuilder
      //   218: dup
      //   219: ldc 152
      //   221: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   224: iload_3
      //   225: invokevirtual 155	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
      //   228: ldc 157
      //   230: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   233: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   236: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   239: pop
      //   240: aload 11
      //   242: new 69	java/lang/StringBuilder
      //   245: dup
      //   246: ldc 159
      //   248: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   251: aload_1
      //   252: invokevirtual 162	com/tapjoy/VGStoreItem:getVgStoreItemID	()Ljava/lang/String;
      //   255: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   258: ldc 164
      //   260: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   263: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   266: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   269: pop
      //   270: aload 10
      //   272: aload 11
      //   274: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   277: invokevirtual 169	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   280: ldc 67
      //   282: new 69	java/lang/StringBuilder
      //   285: dup
      //   286: ldc 171
      //   288: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   291: iload_2
      //   292: invokevirtual 89	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
      //   295: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   298: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   301: iload_2
      //   302: ireturn
      //   303: aload 18
      //   305: ldc 173
      //   307: invokevirtual 177	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
      //   310: istore 4
      //   312: iload 7
      //   314: istore_2
      //   315: aload 13
      //   317: astore 11
      //   319: iload 4
      //   321: iconst_m1
      //   322: if_icmple -204 -> 118
      //   325: iload 7
      //   327: istore_2
      //   328: aload 13
      //   330: astore 11
      //   332: aload 18
      //   334: invokevirtual 119	java/lang/String:length	()I
      //   337: iload 4
      //   339: if_icmple -221 -> 118
      //   342: aload 18
      //   344: iload 4
      //   346: iconst_1
      //   347: iadd
      //   348: aload 18
      //   350: invokevirtual 119	java/lang/String:length	()I
      //   353: invokevirtual 181	java/lang/String:substring	(II)Ljava/lang/String;
      //   356: astore 14
      //   358: aload 14
      //   360: astore 15
      //   362: aload 12
      //   364: astore 11
      //   366: aload 10
      //   368: astore 13
      //   370: aload 14
      //   372: ifnull +142 -> 514
      //   375: aload 14
      //   377: astore 15
      //   379: aload 12
      //   381: astore 11
      //   383: aload 10
      //   385: astore 13
      //   387: aload 14
      //   389: ldc 183
      //   391: invokevirtual 187	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   394: ifne +120 -> 514
      //   397: aload 14
      //   399: iconst_0
      //   400: aload 14
      //   402: invokevirtual 119	java/lang/String:length	()I
      //   405: iconst_4
      //   406: isub
      //   407: invokevirtual 181	java/lang/String:substring	(II)Ljava/lang/String;
      //   410: astore 15
      //   412: invokestatic 193	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
      //   415: invokevirtual 196	java/io/File:toString	()Ljava/lang/String;
      //   418: astore 10
      //   420: ldc 67
      //   422: new 69	java/lang/StringBuilder
      //   425: dup
      //   426: ldc 198
      //   428: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   431: aload 10
      //   433: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   436: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   439: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   442: aload_0
      //   443: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   446: ifeq +373 -> 819
      //   449: new 69	java/lang/StringBuilder
      //   452: dup
      //   453: aload 10
      //   455: invokestatic 201	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   458: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   461: ldc 173
      //   463: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   466: aload_0
      //   467: getfield 40	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:this$0	Lcom/tapjoy/TJCVirtualGoodUtil;
      //   470: invokestatic 205	com/tapjoy/TJCVirtualGoodUtil:access$1	(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;
      //   473: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   476: ldc 207
      //   478: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   481: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   484: astore 13
      //   486: new 69	java/lang/StringBuilder
      //   489: dup
      //   490: invokestatic 209	com/tapjoy/TJCVirtualGoodUtil:access$4	()Ljava/lang/String;
      //   493: invokestatic 201	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   496: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   499: aload 15
      //   501: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   504: ldc 173
      //   506: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   509: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   512: astore 11
      //   514: iconst_1
      //   515: istore 4
      //   517: aconst_null
      //   518: astore 12
      //   520: aconst_null
      //   521: astore 17
      //   523: aconst_null
      //   524: astore 16
      //   526: aconst_null
      //   527: astore 14
      //   529: ldc 67
      //   531: new 69	java/lang/StringBuilder
      //   534: dup
      //   535: ldc 211
      //   537: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   540: aload 18
      //   542: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   545: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   548: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   551: new 213	java/net/URL
      //   554: dup
      //   555: aload 18
      //   557: invokespecial 214	java/net/URL:<init>	(Ljava/lang/String;)V
      //   560: invokevirtual 218	java/net/URL:openConnection	()Ljava/net/URLConnection;
      //   563: astore 19
      //   565: aload 19
      //   567: sipush 15000
      //   570: invokevirtual 224	java/net/URLConnection:setConnectTimeout	(I)V
      //   573: aload 19
      //   575: sipush 30000
      //   578: invokevirtual 227	java/net/URLConnection:setReadTimeout	(I)V
      //   581: aload 19
      //   583: invokevirtual 230	java/net/URLConnection:connect	()V
      //   586: new 232	java/io/BufferedInputStream
      //   589: dup
      //   590: aload 19
      //   592: invokevirtual 236	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
      //   595: invokespecial 239	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
      //   598: astore 10
      //   600: aload 19
      //   602: invokevirtual 242	java/net/URLConnection:getContentLength	()I
      //   605: istore 5
      //   607: new 195	java/io/File
      //   610: dup
      //   611: aload 13
      //   613: invokespecial 243	java/io/File:<init>	(Ljava/lang/String;)V
      //   616: astore 12
      //   618: aload 12
      //   620: invokevirtual 247	java/io/File:mkdirs	()Z
      //   623: ifeq +28 -> 651
      //   626: ldc 67
      //   628: new 69	java/lang/StringBuilder
      //   631: dup
      //   632: ldc 249
      //   634: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   637: aload 12
      //   639: invokevirtual 252	java/io/File:getPath	()Ljava/lang/String;
      //   642: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   645: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   648: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   651: new 195	java/io/File
      //   654: dup
      //   655: aload 13
      //   657: new 69	java/lang/StringBuilder
      //   660: dup
      //   661: aload 15
      //   663: invokestatic 201	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   666: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   669: ldc 254
      //   671: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   674: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   677: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
      //   680: astore 17
      //   682: new 258	java/io/FileOutputStream
      //   685: dup
      //   686: aload 17
      //   688: invokespecial 261	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
      //   691: astore 12
      //   693: sipush 1024
      //   696: newarray byte
      //   698: astore 14
      //   700: lconst_0
      //   701: lstore 8
      //   703: aload 10
      //   705: aload 14
      //   707: invokevirtual 265	java/io/BufferedInputStream:read	([B)I
      //   710: istore 6
      //   712: iload 6
      //   714: iconst_m1
      //   715: if_icmpne +165 -> 880
      //   718: aload 12
      //   720: invokevirtual 270	java/io/OutputStream:close	()V
      //   723: aload 10
      //   725: invokevirtual 271	java/io/BufferedInputStream:close	()V
      //   728: ldc 67
      //   730: new 69	java/lang/StringBuilder
      //   733: dup
      //   734: ldc_w 273
      //   737: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   740: aload 17
      //   742: invokevirtual 276	java/io/File:length	()J
      //   745: invokevirtual 279	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   748: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   751: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   754: aload 17
      //   756: invokevirtual 276	java/io/File:length	()J
      //   759: lstore 8
      //   761: lload 8
      //   763: lconst_0
      //   764: lcmp
      //   765: ifne +475 -> 1240
      //   768: iconst_1
      //   769: istore_3
      //   770: iload_3
      //   771: ifeq +262 -> 1033
      //   774: ldc 67
      //   776: ldc_w 281
      //   779: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   782: aload_0
      //   783: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   786: ifeq +238 -> 1024
      //   789: aload_0
      //   790: bipush 41
      //   792: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   795: aload 10
      //   797: invokevirtual 271	java/io/BufferedInputStream:close	()V
      //   800: aload 12
      //   802: invokevirtual 270	java/io/OutputStream:close	()V
      //   805: iload 7
      //   807: istore_2
      //   808: goto -690 -> 118
      //   811: astore 10
      //   813: iload 7
      //   815: istore_2
      //   816: goto -698 -> 118
      //   819: new 69	java/lang/StringBuilder
      //   822: dup
      //   823: ldc_w 283
      //   826: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   829: aload_0
      //   830: getfield 40	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:this$0	Lcom/tapjoy/TJCVirtualGoodUtil;
      //   833: invokestatic 205	com/tapjoy/TJCVirtualGoodUtil:access$1	(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;
      //   836: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   839: ldc 207
      //   841: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   844: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   847: astore 13
      //   849: new 69	java/lang/StringBuilder
      //   852: dup
      //   853: invokestatic 286	com/tapjoy/TJCVirtualGoodUtil:access$5	()Ljava/lang/String;
      //   856: invokestatic 201	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   859: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   862: aload 15
      //   864: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   867: ldc 173
      //   869: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   872: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   875: astore 11
      //   877: goto -363 -> 514
      //   880: lload 8
      //   882: iload 6
      //   884: i2l
      //   885: ladd
      //   886: lstore 8
      //   888: aload_0
      //   889: iconst_1
      //   890: anewarray 105	java/lang/Integer
      //   893: dup
      //   894: iconst_0
      //   895: ldc2_w 287
      //   898: lload 8
      //   900: lmul
      //   901: iload 5
      //   903: i2l
      //   904: ldiv
      //   905: l2i
      //   906: invokestatic 109	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   909: aastore
      //   910: invokevirtual 113	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:publishProgress	([Ljava/lang/Object;)V
      //   913: aload 12
      //   915: aload 14
      //   917: iconst_0
      //   918: iload 6
      //   920: invokevirtual 292	java/io/OutputStream:write	([BII)V
      //   923: goto -220 -> 703
      //   926: astore 16
      //   928: aload 12
      //   930: astore 14
      //   932: aload 16
      //   934: astore 12
      //   936: ldc 67
      //   938: new 69	java/lang/StringBuilder
      //   941: dup
      //   942: ldc_w 294
      //   945: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   948: aload 12
      //   950: invokevirtual 295	java/net/SocketTimeoutException:toString	()Ljava/lang/String;
      //   953: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   956: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   959: invokestatic 298	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
      //   962: iconst_0
      //   963: istore 4
      //   965: iconst_1
      //   966: istore_3
      //   967: aload 14
      //   969: astore 12
      //   971: goto -201 -> 770
      //   974: astore 17
      //   976: aload 16
      //   978: astore 14
      //   980: aload 12
      //   982: astore 10
      //   984: aload 17
      //   986: astore 12
      //   988: ldc 67
      //   990: new 69	java/lang/StringBuilder
      //   993: dup
      //   994: ldc_w 300
      //   997: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   1000: aload 12
      //   1002: invokevirtual 301	java/lang/Exception:toString	()Ljava/lang/String;
      //   1005: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1008: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1011: invokestatic 298	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
      //   1014: iconst_0
      //   1015: istore 4
      //   1017: aload 14
      //   1019: astore 12
      //   1021: goto -251 -> 770
      //   1024: aload_0
      //   1025: bipush 42
      //   1027: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   1030: goto -235 -> 795
      //   1033: ldc 67
      //   1035: ldc_w 303
      //   1038: invokestatic 98	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   1041: iload 4
      //   1043: ifeq +117 -> 1160
      //   1046: new 195	java/io/File
      //   1049: dup
      //   1050: new 69	java/lang/StringBuilder
      //   1053: dup
      //   1054: aload 13
      //   1056: invokestatic 201	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   1059: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   1062: aload 15
      //   1064: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1067: ldc 254
      //   1069: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1072: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1075: invokespecial 243	java/io/File:<init>	(Ljava/lang/String;)V
      //   1078: astore 10
      //   1080: invokestatic 124	com/tapjoy/TJCVirtualGoodUtil:access$3	()Lcom/tapjoy/TJCVirtualGoodsData;
      //   1083: aload 10
      //   1085: aload 11
      //   1087: invokevirtual 307	com/tapjoy/TJCVirtualGoodsData:extractZipFileToFolder	(Ljava/io/File;Ljava/lang/String;)Z
      //   1090: ifeq +39 -> 1129
      //   1093: bipush 90
      //   1095: istore_3
      //   1096: iload_3
      //   1097: bipush 100
      //   1099: if_icmple +8 -> 1107
      //   1102: iconst_1
      //   1103: istore_2
      //   1104: goto -986 -> 118
      //   1107: aload_0
      //   1108: iconst_1
      //   1109: anewarray 105	java/lang/Integer
      //   1112: dup
      //   1113: iconst_0
      //   1114: iload_3
      //   1115: invokestatic 109	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1118: aastore
      //   1119: invokevirtual 113	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:publishProgress	([Ljava/lang/Object;)V
      //   1122: iload_3
      //   1123: iconst_1
      //   1124: iadd
      //   1125: istore_3
      //   1126: goto -30 -> 1096
      //   1129: aload_0
      //   1130: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   1133: ifeq +15 -> 1148
      //   1136: aload_0
      //   1137: bipush 43
      //   1139: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   1142: iload 7
      //   1144: istore_2
      //   1145: goto -1027 -> 118
      //   1148: aload_0
      //   1149: bipush 44
      //   1151: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   1154: iload 7
      //   1156: istore_2
      //   1157: goto -1039 -> 118
      //   1160: aload_0
      //   1161: getfield 49	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:saveToSDCard	Z
      //   1164: ifeq +15 -> 1179
      //   1167: aload_0
      //   1168: bipush 43
      //   1170: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   1173: iload 7
      //   1175: istore_2
      //   1176: goto -1058 -> 118
      //   1179: aload_0
      //   1180: bipush 44
      //   1182: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   1185: iload 7
      //   1187: istore_2
      //   1188: goto -1070 -> 118
      //   1191: aload_0
      //   1192: bipush 10
      //   1194: putfield 53	com/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask:virtualGoodDownloadStatus	I
      //   1197: goto -1051 -> 146
      //   1200: astore_1
      //   1201: goto -921 -> 280
      //   1204: astore 12
      //   1206: aload 16
      //   1208: astore 14
      //   1210: goto -222 -> 988
      //   1213: astore 16
      //   1215: aload 12
      //   1217: astore 14
      //   1219: aload 16
      //   1221: astore 12
      //   1223: goto -235 -> 988
      //   1226: astore 12
      //   1228: aload 17
      //   1230: astore 10
      //   1232: goto -296 -> 936
      //   1235: astore 12
      //   1237: goto -301 -> 936
      //   1240: goto -470 -> 770
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	1243	0	this	DownloadVirtualGoodTask
      //   0	1243	1	paramVGStoreItem	VGStoreItem
      //   0	1243	2	paramBoolean	boolean
      //   61	1065	3	i	int
      //   310	732	4	j	int
      //   605	297	5	k	int
      //   710	209	6	m	int
      //   58	1128	7	bool	boolean
      //   701	198	8	l	long
      //   69	727	10	localObject1	Object
      //   811	1	10	localException1	Exception
      //   982	249	10	localObject2	Object
      //   116	970	11	localObject3	Object
      //   72	948	12	localObject4	Object
      //   1204	12	12	localException2	Exception
      //   1221	1	12	localObject5	Object
      //   1226	1	12	localSocketTimeoutException1	java.net.SocketTimeoutException
      //   1235	1	12	localSocketTimeoutException2	java.net.SocketTimeoutException
      //   75	980	13	localObject6	Object
      //   356	862	14	localObject7	Object
      //   360	703	15	localObject8	Object
      //   524	1	16	localObject9	Object
      //   926	281	16	localSocketTimeoutException3	java.net.SocketTimeoutException
      //   1213	7	16	localException3	Exception
      //   521	234	17	localFile	File
      //   974	255	17	localException4	Exception
      //   66	490	18	str	String
      //   563	38	19	localURLConnection	java.net.URLConnection
      // Exception table:
      //   from	to	target	type
      //   795	805	811	java/lang/Exception
      //   693	700	926	java/net/SocketTimeoutException
      //   703	712	926	java/net/SocketTimeoutException
      //   718	761	926	java/net/SocketTimeoutException
      //   888	923	926	java/net/SocketTimeoutException
      //   551	600	974	java/lang/Exception
      //   187	280	1200	java/lang/Exception
      //   600	651	1204	java/lang/Exception
      //   651	693	1204	java/lang/Exception
      //   693	700	1213	java/lang/Exception
      //   703	712	1213	java/lang/Exception
      //   718	761	1213	java/lang/Exception
      //   888	923	1213	java/lang/Exception
      //   551	600	1226	java/net/SocketTimeoutException
      //   600	651	1235	java/net/SocketTimeoutException
      //   651	693	1235	java/net/SocketTimeoutException
    }
    
    protected VGStoreItem doInBackground(VGStoreItem... paramVarArgs)
    {
      TapjoyLog.i("VirtualGoodUtil", "doInBackground");
      this.vgItem = paramVarArgs[0];
      downLoadVirtualGood(this.vgItem, this.saveToSDCard);
      return this.vgItem;
    }
    
    protected void onCancelled()
    {
      TapjoyLog.i("VirtualGoodUtil", "onCancelled");
      super.onCancelled();
      if (!this.downloadCancel) {
        TJCVirtualGoodUtil.tapjoyVGData.deleteVGZip(this.vgItem, this.saveToSDCard);
      }
    }
    
    protected void onPostExecute(VGStoreItem paramVGStoreItem)
    {
      TapjoyLog.i("VirtualGoodUtil", "onPostExecute: " + this.virtualGoodDownloadStatus);
      switch (this.virtualGoodDownloadStatus)
      {
      }
      for (;;)
      {
        if ((TJCVirtualGoods.isPurchasedItemDetailView) && (TJCVirtualGoods.detailViewStoreID.equals(paramVGStoreItem.getVgStoreItemID())))
        {
          TapjoyLog.i("VirtualGoodUtil", "UPDATE DETAIL VIEW");
          TJCVirtualGoods.updateDetailViewFromDownloader(this);
        }
        TJCVirtualGoodUtil.this.removeAndExecuteNext(this);
        TapjoyLog.i("VirtualGoodUtil", "currentTask size: " + TJCVirtualGoodUtil.currentTasks.size());
        if (((this.virtualGoodDownloadStatus == 20) || (this.virtualGoodDownloadStatus == 10)) && (TJCVirtualGoodUtil.this.virtualGoodsToDownload.containsKey(paramVGStoreItem.getVgStoreItemID()))) {
          TJCVirtualGoodUtil.this.virtualGoodsToDownload.remove(paramVGStoreItem.getVgStoreItemID());
        }
        return;
        this.localRetryButton.setVisibility(8);
        this.localErrorIcon.setVisibility(8);
        this.localProgressBar.setVisibility(8);
        this.localDownloadStatusText.setText("Download Completed");
        TapjoyLog.i("VirtualGoodUtil", "*** Download completed! ***");
        if (TJCVirtualGoods.getVirtualGoodDownloadListener() != null)
        {
          TJCVirtualGoods.getVirtualGoodDownloadListener().onDownLoad(paramVGStoreItem);
          continue;
          this.localRetryButton.setVisibility(0);
          this.localErrorIcon.setVisibility(0);
          this.localProgressBar.setVisibility(8);
          this.localDownloadStatusText.setText("Download Failed");
          TJCVirtualGoodUtil.this.dialogErrorMessage = "Download Failed";
          Object localObject1 = new AlertDialog.Builder(TJCVirtualGoodUtil.this.applicationContext);
          ((AlertDialog.Builder)localObject1).setTitle(this.vgItem.getName() + " fail to download. Would you like to download again?");
          ((AlertDialog.Builder)localObject1).setNegativeButton("Cancel", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface.cancel();
              TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.cancel(true);
            }
          });
          ((AlertDialog.Builder)localObject1).setPositiveButton("Retry", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.cancel(true);
              TJCVirtualGoodUtil.this.retryDownloadVG(TJCVirtualGoodUtil.DownloadVirtualGoodTask.this);
            }
          });
          localObject1 = ((AlertDialog.Builder)localObject1).create();
          try
          {
            ((AlertDialog)localObject1).show();
          }
          catch (WindowManager.BadTokenException localBadTokenException1) {}
          continue;
          this.localRetryButton.setVisibility(0);
          this.localErrorIcon.setVisibility(0);
          this.localProgressBar.setVisibility(8);
          this.localDownloadStatusText.setText("Download Failed");
          TJCVirtualGoodUtil.this.dialogErrorMessage = "No more space is available on Device and SD Card.";
          if ((TJCVirtualGoods.isPurchasedItemDetailView) && (TJCVirtualGoods.detailViewStoreID.equals(paramVGStoreItem.getVgStoreItemID())))
          {
            TapjoyLog.i("VirtualGoodUtil", "UPDATE DETAIL VIEW");
            TJCVirtualGoods.updateDetailViewFromDownloader(this);
          }
          Object localObject2 = new AlertDialog.Builder(TJCVirtualGoodUtil.this.applicationContext);
          ((AlertDialog.Builder)localObject2).setMessage("Not enough space on the device or SD card.  Free more space and try again.");
          ((AlertDialog.Builder)localObject2).setPositiveButton("OK", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface.cancel();
            }
          });
          localObject2 = ((AlertDialog.Builder)localObject2).create();
          try
          {
            ((AlertDialog)localObject2).show();
          }
          catch (WindowManager.BadTokenException localBadTokenException2) {}
          continue;
          if (getStatus() == AsyncTask.Status.RUNNING) {
            cancel(true);
          }
          Object localObject3 = new AlertDialog.Builder(TJCVirtualGoodUtil.this.applicationContext);
          ((AlertDialog.Builder)localObject3).setMessage("Not enough space on the device. Would you like to download Item '" + this.vgItem.getName() + "' on SD card?");
          ((AlertDialog.Builder)localObject3).setNegativeButton("No", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface.cancel();
              TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localRetryButton.setVisibility(0);
              TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localErrorIcon.setVisibility(0);
              TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localProgressBar.setVisibility(8);
              TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localDownloadStatusText.setText("Download Failed");
              TJCVirtualGoodUtil.this.dialogErrorMessage = "No more space is available on Device.";
            }
          });
          ((AlertDialog.Builder)localObject3).setPositiveButton("Yes", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface = new TJCVirtualGoodUtil.DownloadVirtualGoodTask(TJCVirtualGoodUtil.this, true);
              TapjoyLog.i("VirtualGoodUtil", "RETRY DOWNLOAD VG: " + TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.vgItem.getName());
              paramAnonymousDialogInterface.localProgressBar = TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localProgressBar;
              paramAnonymousDialogInterface.localProgressBar.setVisibility(8);
              paramAnonymousDialogInterface.localProgressBar.setProgress(0);
              paramAnonymousDialogInterface.localErrorIcon = TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localErrorIcon;
              paramAnonymousDialogInterface.localDownloadStatusText = TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localDownloadStatusText;
              paramAnonymousDialogInterface.localRetryButton = TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localRetryButton;
              paramAnonymousDialogInterface.localDownloadStatusText = TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.localDownloadStatusText;
              paramAnonymousDialogInterface.localDownloadStatusText.setText("Download Pending");
              paramAnonymousDialogInterface.localRetryButton.setVisibility(8);
              paramAnonymousDialogInterface.localErrorIcon.setVisibility(8);
              paramAnonymousDialogInterface.virtualGoodDownloadStatus = 0;
              VGStoreItem localVGStoreItem = TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.vgItem;
              if (TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.getStatus() == AsyncTask.Status.RUNNING) {
                TJCVirtualGoodUtil.DownloadVirtualGoodTask.this.cancel(true);
              }
              TJCVirtualGoodUtil.this.virtualGoodsToDownload.remove(localVGStoreItem.getVgStoreItemID());
              TJCVirtualGoodUtil.this.virtualGoodsToDownload.put(localVGStoreItem.getVgStoreItemID(), paramAnonymousDialogInterface);
              if ((TJCVirtualGoods.isPurchasedItemDetailView) && (TJCVirtualGoods.detailViewStoreID.equals(localVGStoreItem.getVgStoreItemID())))
              {
                TapjoyLog.i("VirtualGoodUtil", "UPDATE DETAIL VIEW");
                TJCVirtualGoods.updateDetailViewFromDownloader(paramAnonymousDialogInterface);
              }
              TJCVirtualGoodUtil.addTask(paramAnonymousDialogInterface, new VGStoreItem[] { localVGStoreItem });
            }
          });
          localObject3 = ((AlertDialog.Builder)localObject3).create();
          try
          {
            ((AlertDialog)localObject3).show();
          }
          catch (WindowManager.BadTokenException localBadTokenException3) {}
        }
      }
    }
    
    protected void onProgressUpdate(Integer... paramVarArgs)
    {
      int j = paramVarArgs[0].intValue();
      int i = j;
      if (j < 0) {
        i = 0;
      }
      j = i;
      if (i > 100) {
        j = 100;
      }
      this.localDownloadStatusText.setText("Downloading... " + j + "%");
      this.localProgressBar.setVisibility(0);
      this.localProgressBar.setProgress(j);
      this.progressPercent = j;
      if ((TJCVirtualGoods.isPurchasedItemDetailView) && (TJCVirtualGoods.detailViewStoreID.equals(this.vgItem.getVgStoreItemID()))) {
        TJCVirtualGoods.updateDetailProgressBar(j);
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TJCVirtualGoodUtil
 * JD-Core Version:    0.7.0.1
 */