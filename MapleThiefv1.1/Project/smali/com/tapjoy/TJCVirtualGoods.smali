.class public Lcom/tapjoy/TJCVirtualGoods;
.super Landroid/app/Activity;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;,
        Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;,
        Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;,
        Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;,
        Lcom/tapjoy/TJCVirtualGoods$FocusListener;,
        Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;,
        Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_URL_PARAMS:Ljava/lang/String; = "bundle_url_params"

.field public static final EXTRA_MY_ITEMS_TAB:Ljava/lang/String; = "my_items_tab"

.field public static final NETWORK_DOWN:I = 0xb

.field public static final NETWORK_DOWN_MESSAGE:Ljava/lang/String; = "Service is unreachable.\nDo you want to try again?"

.field public static final NETWORK_TIME_OUT:I = 0xc

.field public static final PARSER_CONFIGURATION_EXCEPTION:I = 0xe

.field private static final PURCHASED_ITEM:I = 0x2

.field public static final RESPONSE_FAIL:I = 0xd

.field public static final SAX_EXCEPTION:I = 0xf

.field private static final STORE_ITEM:I = 0x0

.field public static final TAPJOY:Ljava/lang/String; = "Tapjoy"

.field public static final TAPJOY_DATABASE:Ljava/lang/String; = "Database"

.field public static final TAPJOY_DOWNLOADVIRTUALGOOD:Ljava/lang/String; = "DownloadVirtualGood"

.field public static final TAPJOY_DOWNLOAD_COMPLETED:Ljava/lang/String; = "Download Completed"

.field public static final TAPJOY_DOWNLOAD_FAILED:Ljava/lang/String; = "Download Failed"

.field public static final TAPJOY_DOWNLOAD_PENDING:Ljava/lang/String; = "Download Pending"

.field public static final TAPJOY_ERROR_NO_SPACE_ON_DEVICE:Ljava/lang/String; = "No more space is available on Device."

.field public static final TAPJOY_ERROR_NO_SPACE_ON_DEVICE_AND_SD_CARD:Ljava/lang/String; = "No more space is available on Device and SD Card."

.field public static final TAPJOY_FILE_SYSTEM:Ljava/lang/String; = "File System"

.field public static final TAPJOY_VIRTUAL_GOODS:Ljava/lang/String; = "Virtual Goods"

.field public static final VG_STATUS_DOWNLOAD_INIT:I = 0x1

.field public static final VG_STATUS_DOWNLOAD_PENDING:I = 0x0

.field public static final VG_STATUS_DOWNLOAD_SUCCESS_TO_PHONE:I = 0xa

.field public static final VG_STATUS_DOWNLOAD_SUCCESS_TO_SD_CARD:I = 0x14

.field public static final VG_STATUS_INSUFFICIENT_DISK_SPACE_PHONE:I = 0x2c

.field public static final VG_STATUS_INSUFFICIENT_DISK_SPACE_SD_CARD:I = 0x2b

.field public static final VG_STATUS_NETWORK_ERROR_PHONE:I = 0x2a

.field public static final VG_STATUS_NETWORK_ERROR_SD_CARD:I = 0x29

.field private static clientPackage:Ljava/lang/String;

.field static ctx:Landroid/content/Context;

.field private static currencyName:Ljava/lang/String;

.field static dataSavedAtSDCard:Z

.field public static detailDescQuantity:Landroid/widget/TextView;

.field private static detailDownloadStatusTextView:Landroid/widget/TextView;

.field private static detailErrorIcon:Landroid/widget/ImageView;

.field private static detailProgressBar:Landroid/widget/ProgressBar;

.field public static detailRetryButton:Landroid/widget/Button;

.field public static detailViewStoreID:Ljava/lang/String;

.field public static doNotify:Z

.field private static downloadStarted:Z

.field public static isPurchasedItemDetailView:Z

.field public static offersFromVG:Z

.field private static storeNoData:Landroid/widget/TextView;

.field private static tapPoints:Ljava/lang/String;

.field public static tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

.field private static tapjoyVGDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

.field private static tapjoyVGFocusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

.field private static urlParams:Ljava/lang/String;

.field private static userID:Ljava/lang/String;

.field public static vgFromDownloadedVG:Z

.field public static vgFromOffers:Z

.field private static yourItemNoData:Landroid/widget/TextView;


# instance fields
.field allItemAlert:Landroid/app/AlertDialog;

.field asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

.field private checkPurchased:Ljava/lang/Boolean;

.field cornerAll:[F

.field cornerLeft:[F

.field cornerNone:[F

.field cornerRight:[F

.field private currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

.field private detailGetThisItemButton:Landroid/widget/Button;

.field private detailView:Landroid/widget/LinearLayout;

.field private exceptionDialog:Landroid/app/Dialog;

.field private fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

.field private fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

.field private getItemDialog:Landroid/app/Dialog;

.field private getMoreItemDialog:Landroid/app/Dialog;

.field private getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

.field private isItemDetailView:Z

.field private itemDownloadedDialog:Landroid/app/Dialog;

.field private morePurchasedItem:Landroid/widget/Button;

.field private moreStoreItems:Landroid/widget/Button;

.field private myItemsHeaderLeftTitle:Landroid/widget/TextView;

.field private myItemsHeaderRightTitle:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field purchasedItemAlert:Landroid/app/AlertDialog;

.field private purchasedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private purchasedItemProgress:Landroid/widget/ProgressBar;

.field private purchasedItemStart:I

.field private purchasedItemTable:Landroid/widget/TableLayout;

.field private purchasedThroughAvailableItem:I

.field quantityTextView:Landroid/widget/TextView;

.field private storeHeaderLeftTitle:Landroid/widget/TextView;

.field private storeHeaderRightTitle:Landroid/widget/TextView;

.field private storeItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private storeItemStart:I

.field private storeItemTable:Landroid/widget/TableLayout;

.field private storeProgress:Landroid/widget/ProgressBar;

.field private tabs:Landroid/widget/TabHost;

.field private vgDetailFooterLeft:Landroid/widget/TextView;

.field private vgDetailGetMoreBtn:Landroid/widget/Button;

.field private vgFooterLeft:Landroid/widget/TextView;

.field private vgGetMoreBtn:Landroid/widget/Button;

.field private vgPurchasedFooterLeft:Landroid/widget/TextView;

.field private vgPurchasedGetMoreBtn:Landroid/widget/Button;

.field private virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    .line 108
    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .line 109
    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGFocusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    .line 111
    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 120
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 121
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 122
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromDownloadedVG:Z

    .line 183
    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->userID:Ljava/lang/String;

    .line 190
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 194
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    .line 195
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;-><init>(I)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    .line 128
    iput-boolean v4, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 130
    iput v4, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    .line 135
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    .line 136
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    .line 143
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    .line 144
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    .line 157
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderLeftTitle:Landroid/widget/TextView;

    .line 158
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    .line 160
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    .line 161
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    .line 162
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    .line 163
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    .line 164
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    .line 165
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    .line 167
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderLeftTitle:Landroid/widget/TextView;

    .line 168
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    .line 179
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    .line 180
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 187
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    .line 188
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemAlert:Landroid/app/AlertDialog;

    .line 198
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 202
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    .line 204
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    .line 208
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    .line 210
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    .line 214
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    .line 216
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    .line 220
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    .line 62
    return-void

    .line 198
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 204
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 210
    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 216
    :array_3
    .array-data 4
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tapjoy/TJCVirtualGoods;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    return v0
.end method

.method static synthetic access$11(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoodUtil;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->showCachedPurchasedItemsDialog()V

    return-void
.end method

.method static synthetic access$15(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->showPurchasedStoreItemTableView(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$16(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$17(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1571
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->checkPurchasedVGForDownload(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$18(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$2()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$21(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    return-void
.end method

.method static synthetic access$22(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1603
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->purchaseVirtualGood()V

    return-void
.end method

.method static synthetic access$23(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$24(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$25(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1876
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->showOffers()V

    return-void
.end method

.method static synthetic access$26(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$27(Lcom/tapjoy/TJCVirtualGoods;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1539
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods;->updateHeaderFooters(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$28(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
    .locals 0

    .prologue
    .line 1394
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method

.method static synthetic access$29(Lcom/tapjoy/TJCVirtualGoods;I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    return-void
.end method

.method static synthetic access$3(Lcom/tapjoy/TJCVirtualGoods;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    return v0
.end method

.method static synthetic access$30(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$31(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    return-void
.end method

.method static synthetic access$32(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    return-object v0
.end method

.method static synthetic access$33()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$35(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V
    .locals 0

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods;->startDownloadingPurchasedVG(Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->showGetStoreItemsNetworkErrorDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->showStoreItemTableView(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$9()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildPurchasedItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 15
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "i"    # I
    .param p3, "rowId"    # I
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1014
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1016
    .local v10, "vgItem":Landroid/widget/LinearLayout;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_virtualgoods_purchaseitems_row"

    const-string v13, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "vgItem":Landroid/widget/LinearLayout;
    check-cast v10, Landroid/widget/LinearLayout;

    .line 1017
    .restart local v10    # "vgItem":Landroid/widget/LinearLayout;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v11, p4

    .line 1018
    check-cast v11, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_tablerowstates"

    const-string v13, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1022
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_index"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1023
    .local v2, "index":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_item_icon"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1026
    .local v4, "itemIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1028
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1030
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    :cond_0
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_name"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1042
    .local v5, "itemName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_type"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1046
    .local v6, "itemType":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_attribute"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1052
    .local v3, "itemAttribute":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 1054
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1055
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1054
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_points_text"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1064
    .local v8, "price":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1065
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1068
    return-object v10

    .line 1032
    .end local v3    # "itemAttribute":Landroid/widget/TextView;
    .end local v5    # "itemName":Landroid/widget/TextView;
    .end local v6    # "itemType":Landroid/widget/TextView;
    .end local v8    # "price":Landroid/widget/TextView;
    .end local v9    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1034
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    .line 1035
    .local v7, "obj":[Ljava/lang/Object;
    const/4 v11, 0x0

    aput-object v4, v7, v11

    .line 1036
    const/4 v11, 0x1

    aput-object p1, v7, v11

    .line 1037
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    new-instance v12, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;)V

    invoke-virtual {v11, v12, v7}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1059
    .end local v7    # "obj":[Ljava/lang/Object;
    .restart local v3    # "itemAttribute":Landroid/widget/TextView;
    .restart local v5    # "itemName":Landroid/widget/TextView;
    .restart local v6    # "itemType":Landroid/widget/TextView;
    :cond_2
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private buildStoreItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 15
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "i"    # I
    .param p3, "rowId"    # I
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    .line 946
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 948
    .local v10, "vgItem":Landroid/widget/LinearLayout;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_virtualgoods_row"

    const-string v13, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "vgItem":Landroid/widget/LinearLayout;
    check-cast v10, Landroid/widget/LinearLayout;

    .line 949
    .restart local v10    # "vgItem":Landroid/widget/LinearLayout;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v11, p4

    .line 950
    check-cast v11, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_tablerowstates"

    const-string v13, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 954
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_index"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 955
    .local v2, "index":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_item_icon"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 958
    .local v4, "itemIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 960
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 962
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 973
    :cond_0
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_name"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 974
    .local v5, "itemName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_type"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 978
    .local v6, "itemType":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_attribute"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 984
    .local v3, "itemAttribute":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 986
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 987
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 986
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_points_text"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 996
    .local v8, "price":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 997
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1000
    return-object v10

    .line 964
    .end local v3    # "itemAttribute":Landroid/widget/TextView;
    .end local v5    # "itemName":Landroid/widget/TextView;
    .end local v6    # "itemType":Landroid/widget/TextView;
    .end local v8    # "price":Landroid/widget/TextView;
    .end local v9    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 966
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    .line 967
    .local v7, "obj":[Ljava/lang/Object;
    const/4 v11, 0x0

    aput-object v4, v7, v11

    .line 968
    const/4 v11, 0x1

    aput-object p1, v7, v11

    .line 969
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    new-instance v12, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;)V

    invoke-virtual {v11, v12, v7}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 991
    .end local v7    # "obj":[Ljava/lang/Object;
    .restart local v3    # "itemAttribute":Landroid/widget/TextView;
    .restart local v5    # "itemName":Landroid/widget/TextView;
    .restart local v6    # "itemType":Landroid/widget/TextView;
    :cond_2
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private checkPurchasedVGForDownload(ILandroid/content/Context;)V
    .locals 6
    .param p1, "moreData"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1575
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    const-string v2, "MorePurchasedItemsButton"

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1576
    .local v0, "moreDataButtonView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1579
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "moreDataButtonView":Landroid/view/View;
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    .line 1583
    :cond_0
    if-lez p1, :cond_1

    .line 1585
    const/16 v1, 0x19

    if-le p1, v1, :cond_3

    .line 1586
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    const-string v2, "Show 25 more..."

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1593
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1595
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 1598
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    iget v5, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/tapjoy/TJCVirtualGoodUtil;->downLoadPurcahasedVirtualGood(Ljava/util/List;Landroid/widget/TableLayout;I)V

    .line 1600
    :cond_2
    return-void

    .line 1588
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Show "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static createColor(IIII)I
    .locals 6
    .param p0, "baseColor"    # I
    .param p1, "redOffset"    # I
    .param p2, "greenOffset"    # I
    .param p3, "blueOffset"    # I

    .prologue
    const/16 v5, 0xff

    .line 765
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int v3, v4, p1

    .line 766
    .local v3, "red":I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v4, v4, 0xff

    add-int v2, v4, p2

    .line 767
    .local v2, "green":I
    and-int/lit16 v4, p0, 0xff

    add-int v0, v4, p3

    .line 770
    .local v0, "blue":I
    if-gez v3, :cond_0

    .line 771
    const/4 v3, 0x0

    .line 772
    :cond_0
    if-gez v2, :cond_1

    .line 773
    const/4 v2, 0x0

    .line 774
    :cond_1
    if-gez v0, :cond_2

    .line 775
    const/4 v0, 0x0

    .line 778
    :cond_2
    if-le v3, v5, :cond_3

    .line 779
    const/16 v3, 0xff

    .line 780
    :cond_3
    if-le v2, v5, :cond_4

    .line 781
    const/16 v2, 0xff

    .line 782
    :cond_4
    if-le v0, v5, :cond_5

    .line 783
    const/16 v0, 0xff

    .line 785
    :cond_5
    invoke-static {v5, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 787
    .local v1, "color":I
    return v1
.end method

.method private static createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 20
    .param p0, "baseColor"    # I
    .param p1, "start_mod"    # I
    .param p2, "end_mod"    # I
    .param p3, "strokeWidth"    # F
    .param p4, "strokeColor"    # I
    .param p5, "invertOrientation"    # Z
    .param p6, "cornerRadii"    # [F

    .prologue
    .line 810
    const/4 v10, 0x0

    .line 812
    .local v10, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    shr-int/lit8 v19, p0, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 813
    .local v17, "red":I
    shr-int/lit8 v19, p0, 0x8

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    .line 814
    .local v11, "green":I
    move/from16 v0, p0

    and-int/lit16 v4, v0, 0xff

    .line 816
    .local v4, "blue":I
    const/16 v19, 0x64

    move/from16 v0, v19

    new-array v7, v0, [I

    .line 817
    .local v7, "colors":[I
    array-length v14, v7

    .line 830
    .local v14, "length":I
    sub-int v18, v17, p1

    .line 831
    .local v18, "red_start":I
    sub-int v12, v11, p1

    .line 832
    .local v12, "green_start":I
    sub-int v5, v4, p1

    .line 835
    .local v5, "blue_start":I
    if-gez v18, :cond_0

    .line 836
    const/16 v18, 0x0

    .line 837
    :cond_0
    if-gez v12, :cond_1

    .line 838
    const/4 v12, 0x0

    .line 839
    :cond_1
    if-gez v5, :cond_2

    .line 840
    const/4 v5, 0x0

    .line 842
    :cond_2
    add-int v19, p1, p2

    div-int v8, v19, v14

    .line 845
    .local v8, "delta":I
    if-gtz v8, :cond_3

    .line 846
    const/4 v8, 0x1

    .line 851
    :cond_3
    const/16 v2, 0xff

    .line 852
    .local v2, "a":I
    move/from16 v16, v18

    .line 853
    .local v16, "r":I
    move v9, v12

    .line 854
    .local v9, "g":I
    move v3, v5

    .line 856
    .local v3, "b":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-lt v13, v14, :cond_6

    .line 879
    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 881
    .local v15, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    if-eqz p5, :cond_4

    .line 882
    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 885
    :cond_4
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    .end local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v10, v15, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 888
    .restart local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 891
    const/16 v19, 0x0

    cmpl-float v19, p3, v19

    if-lez v19, :cond_5

    .line 892
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 894
    :cond_5
    const/high16 v19, 0x42480000    # 50.0f

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 896
    return-object v10

    .line 858
    .end local v15    # "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_6
    add-int v16, v16, v8

    .line 859
    add-int/2addr v9, v8

    .line 860
    add-int/2addr v3, v8

    .line 863
    const/16 v19, 0xff

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 864
    const/16 v16, 0xff

    .line 865
    :cond_7
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v9, v0, :cond_8

    .line 866
    const/16 v9, 0xff

    .line 867
    :cond_8
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v3, v0, :cond_9

    .line 868
    const/16 v3, 0xff

    .line 870
    :cond_9
    move/from16 v0, v16

    invoke-static {v2, v0, v9, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 871
    .local v6, "color":I
    aput v6, v7, v13

    .line 856
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public static getClientPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1763
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getVirtualGoodDownloadListener()Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;
    .locals 1

    .prologue
    .line 1860
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    return-object v0
.end method

.method public static getVirtualGoodsFocusListener()Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    .locals 1

    .prologue
    .line 1872
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGFocusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    return-object v0
.end method

.method private initView()V
    .locals 66

    .prologue
    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "tapjoy_virtualgoods"

    const-string v9, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->setContentView(I)V

    .line 515
    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    const-string v8, "tjcPrefrences"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    .line 518
    .local v53, "settings":Landroid/content/SharedPreferences;
    const-string v7, "tapjoyPrimaryColor"

    const/4 v8, 0x0

    move-object/from16 v0, v53

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 520
    .local v14, "baseColor":I
    const-string v7, "Virtual Goods"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "baseColor: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/16 v7, -0x10

    const/16 v8, -0x10

    const/16 v9, -0x10

    invoke-static {v14, v7, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v17

    .line 524
    .local v17, "buttonNormalColor":I
    const/16 v7, -0x40

    const/16 v8, -0x40

    const/16 v9, -0x40

    invoke-static {v14, v7, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v2

    .line 525
    .local v2, "buttonFocusedColor":I
    const/16 v7, 0x40

    const/16 v8, 0x40

    const/16 v9, 0x40

    invoke-static {v14, v7, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v20

    .line 526
    .local v20, "detailBGColor":I
    const/16 v7, -0x50

    const/16 v8, -0x50

    const/16 v9, -0x50

    invoke-static {v14, v7, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v6

    .line 529
    .local v6, "strokeColor":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 530
    .local v5, "strokeWidthButton":F
    const/high16 v58, 0x40000000    # 2.0f

    .line 533
    .local v58, "strokeWidthArea":F
    const/16 v3, 0x30

    .line 534
    .local v3, "button_start_mod":I
    const/16 v4, 0x50

    .line 535
    .local v4, "button_end_mod":I
    const/16 v16, 0x20

    .line 536
    .local v16, "bg_start_mod":I
    const/16 v15, 0x20

    .line 537
    .local v15, "bg_end_mod":I
    const/16 v22, 0x20

    .line 538
    .local v22, "detail_start_mod":I
    const/16 v21, 0x4

    .line 540
    .local v21, "detail_end_mod":I
    const v55, 0x10100a7

    .line 541
    .local v55, "statePressed":I
    const v54, 0x101009c

    .line 542
    .local v54, "stateFocused":I
    const v56, 0x10100a1

    .line 545
    .local v56, "stateSelected":I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v45

    .line 546
    .local v45, "s1":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v37

    .line 547
    .local v37, "n1":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v30

    .line 549
    .local v30, "f1":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v46

    .line 550
    .local v46, "s2":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v38

    .line 551
    .local v38, "n2":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v31

    .line 553
    .local v31, "f2":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v47

    .line 554
    .local v47, "s3":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v39

    .line 555
    .local v39, "n3":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v32

    .line 557
    .local v32, "f3":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v48

    .line 558
    .local v48, "s4":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v40

    .line 559
    .local v40, "n4":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v33

    .line 561
    .local v33, "f4":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v49

    .line 562
    .local v49, "s5":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v41

    .line 563
    .local v41, "n5":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v34

    .line 565
    .local v34, "f5":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v50

    .line 566
    .local v50, "s6":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v42

    .line 567
    .local v42, "n6":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v35

    .line 569
    .local v35, "f6":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v51

    .line 570
    .local v51, "s7":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v17

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v43

    .line 571
    .local v43, "n7":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    invoke-static/range {v2 .. v8}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v36

    .line 574
    .local v36, "f7":Landroid/graphics/drawable/Drawable;
    new-instance v25, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 575
    .local v25, "drawableLeft":Landroid/graphics/drawable/StateListDrawable;
    new-instance v28, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 576
    .local v28, "drawableRight":Landroid/graphics/drawable/StateListDrawable;
    new-instance v29, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 577
    .local v29, "drawableStoreGetMore":Landroid/graphics/drawable/StateListDrawable;
    new-instance v26, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 578
    .local v26, "drawableMyItemsGetMore":Landroid/graphics/drawable/StateListDrawable;
    new-instance v23, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 579
    .local v23, "drawableDetailGetMore":Landroid/graphics/drawable/StateListDrawable;
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 580
    .local v24, "drawableGetThisItem":Landroid/graphics/drawable/StateListDrawable;
    new-instance v27, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 582
    .local v27, "drawableRetryDetail":Landroid/graphics/drawable/StateListDrawable;
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 583
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 584
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 586
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 587
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 588
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 590
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 591
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 592
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 594
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 595
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 596
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 598
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 599
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 600
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 602
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 603
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 604
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 606
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v55, v7, v8

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 607
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    move/from16 v0, v56

    neg-int v9, v0

    aput v9, v7, v8

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 608
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    move/from16 v0, v54

    neg-int v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v56, v7, v8

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_background"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/LinearLayout;

    .line 614
    .local v59, "vgBackground":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_store_footer"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v65

    check-cast v65, Landroid/widget/LinearLayout;

    .line 615
    .local v65, "vgStoreFooter":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_item_footer"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/LinearLayout;

    .line 616
    .local v64, "vgItemFooter":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_header"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/TextView;

    .line 617
    .local v62, "vgDetailHeader":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_info"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/RelativeLayout;

    .line 618
    .local v63, "vgDetailInfo":Landroid/widget/RelativeLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_desc"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/ScrollView;

    .line 619
    .local v60, "vgDetailDesc":Landroid/widget/ScrollView;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_footer"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/LinearLayout;

    .line 621
    .local v61, "vgDetailFooter":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    move v7, v14

    move/from16 v8, v16

    move v9, v15

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    move v7, v14

    move/from16 v8, v16

    move v9, v15

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    move v7, v14

    move/from16 v8, v16

    move v9, v15

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v20

    move/from16 v8, v22

    move/from16 v9, v21

    move/from16 v10, v58

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v20

    move/from16 v8, v22

    move/from16 v9, v21

    move/from16 v10, v58

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v63

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v20

    move/from16 v8, v22

    move/from16 v9, v21

    move/from16 v10, v58

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move/from16 v7, v20

    move/from16 v8, v22

    move/from16 v9, v21

    move/from16 v10, v58

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object/from16 v0, v61

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGTabHost"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    .line 634
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->setup()V

    .line 637
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const-string v8, "tab1"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v57

    .line 638
    .local v57, "storeTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "Store"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 640
    new-instance v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 641
    .local v18, "button_left":Landroid/widget/Button;
    const-string v7, "Available Items"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 642
    const/4 v7, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 643
    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 644
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "vg_shadow_color"

    const-string v12, "color"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 646
    move-object/from16 v0, v57

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 647
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    move-object/from16 v0, v57

    invoke-virtual {v7, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const-string v8, "tab3"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v44

    .line 651
    .local v44, "purchasedItemTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "YourItem"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 653
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 654
    .local v19, "button_right":Landroid/widget/Button;
    const-string v7, "My Items"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 655
    const/4 v7, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 656
    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 657
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "vg_shadow_color"

    const-string v12, "color"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 659
    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 660
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "StoreProgress"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "YourItemProgress"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "StoreTable"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "YourItemTable"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    .line 670
    new-instance v7, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    .line 671
    new-instance v7, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    .line 672
    new-instance v7, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "ItemDetail"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    .line 676
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "storeHeaderLeftTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderLeftTitle:Landroid/widget/TextView;

    .line 679
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderLeftTitle:Landroid/widget/TextView;

    const-string v8, "Item"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_error_icon"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sput-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "myItemsHeaderLeftTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderLeftTitle:Landroid/widget/TextView;

    .line 683
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderLeftTitle:Landroid/widget/TextView;

    const-string v8, "Item"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "storeHeaderRightTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    .line 686
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    sget-object v8, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "myItemsHeaderRightTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    .line 689
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    sget-object v8, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGFooterLeft"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    .line 692
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Your "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGYourItemFooterLeft"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    .line 695
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Your "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGDetailFooterLeft"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    .line 698
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Your "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGGetMoreBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    .line 704
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get more "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGYourItemGetMoreBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    .line 709
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get more "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "VGDetailGetMoreBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    .line 714
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get more "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_action_button"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    .line 719
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    const-string v8, "Get this item"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "RetryDetailBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    sput-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    .line 723
    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    const-string v8, "Retry"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 724
    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v8, v8, Lcom/tapjoy/TJCVirtualGoodUtil;->retryDetailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    .line 729
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    const-string v8, "MoreStoreItemsButton"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    .line 733
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    const-string v8, "MorePurchasedItemsButton"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "StoreNoDataText"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sput-object v7, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "YourItemNoDataText"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sput-object v7, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    .line 740
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "StoreLayout"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/ScrollView;

    .line 742
    .local v52, "scrollView":Landroid/widget/ScrollView;
    const/4 v7, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 743
    const/4 v7, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setScrollContainer(Z)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_download_status_text"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sput-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "vg_detail_progress_bar"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    sput-object v7, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 749
    return-void
.end method

.method private purchaseVirtualGood()V
    .locals 5

    .prologue
    .line 1605
    const-string v1, "Virtual Goods"

    const-string v2, "callGetPurchasedVGItems"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    .line 1609
    const-string v1, "Virtual Goods"

    const-string v2, "Processing your request..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :try_start_0
    const-string v1, ""

    const-string v2, "Processing your request ..."

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :goto_0
    :try_start_1
    const-string v1, "Virtual Goods"

    const-string v2, "getPurchasedVGItems..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/tapjoy/VGStoreItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1631
    :goto_1
    return-void

    .line 1615
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1627
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1629
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v1}, Lcom/tapjoy/TJCVirtualGoods;->showGetPurchasedItemsNetworkErrorDialog(Lcom/tapjoy/VGStoreItem;)V

    goto :goto_1
.end method

.method public static setVirtualGoodDownloadListener(Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .prologue
    .line 1854
    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .line 1855
    return-void
.end method

.method public static setVirtualGoodsFocusListener(Lcom/tapjoy/TJCVirtualGoods$FocusListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    .prologue
    .line 1866
    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGFocusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    .line 1867
    return-void
.end method

.method private showCachedPurchasedItemsDialog()V
    .locals 1

    .prologue
    .line 1508
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$7;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$7;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1536
    return-void
.end method

.method private showGetPurchasedItemsNetworkErrorDialog(Lcom/tapjoy/VGStoreItem;)V
    .locals 3
    .param p1, "vgStoreItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 1478
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 1479
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$5;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$5;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1485
    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$6;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$6;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1478
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showGetStoreItemsNetworkErrorDialog()V
    .locals 1

    .prologue
    .line 1430
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$4;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1470
    return-void
.end method

.method private showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V
    .locals 27
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "itemType"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "index"    # I

    .prologue
    .line 1208
    const-string v22, "Virtual Goods"

    const-string v23, "********************"

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v22, "Virtual Goods"

    const-string v23, "showItemDetail"

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "vg_detail_item_icon"

    const-string v24, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 1214
    .local v14, "itemIcon":Landroid/widget/ImageView;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1216
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 1218
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1229
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "vg_detail_item_name_text"

    const-string v24, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1230
    .local v15, "itemName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "vg_detail_item_type_text"

    const-string v24, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1234
    .local v21, "vgType":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "vg_detail_points_text"

    const-string v24, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1238
    .local v17, "price":Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "vg_detail_currency_text"

    const-string v24, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1243
    .local v9, "currency":Landroid/widget/TextView;
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "ScrollLayout"

    const-string v24, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1246
    .local v18, "scrollLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1248
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1250
    .local v7, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "virtual_goods_details_text_color"

    const-string v25, "color"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1253
    .local v8, "color":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v12, v0, :cond_3

    .line 1283
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 1285
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1286
    .local v10, "des":Landroid/widget/TextView;
    const-string v22, "Description:"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    sget-object v22, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1288
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1289
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1290
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1292
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1293
    .local v11, "description":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1295
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1298
    .end local v10    # "des":Landroid/widget/TextView;
    .end local v11    # "description":Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    .line 1299
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1300
    .local v19, "storeItemName":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1301
    .local v20, "storeItemPrice":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 1303
    packed-switch p2, :pswitch_data_0

    .line 1384
    :goto_2
    :pswitch_0
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 1385
    return-void

    .line 1221
    .end local v7    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    .end local v8    # "color":I
    .end local v9    # "currency":Landroid/widget/TextView;
    .end local v12    # "i":I
    .end local v15    # "itemName":Landroid/widget/TextView;
    .end local v17    # "price":Landroid/widget/TextView;
    .end local v18    # "scrollLayout":Landroid/widget/LinearLayout;
    .end local v19    # "storeItemName":Ljava/lang/String;
    .end local v20    # "storeItemPrice":Ljava/lang/String;
    .end local v21    # "vgType":Landroid/widget/TextView;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1223
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1224
    .local v16, "obj":[Ljava/lang/Object;
    const/16 v22, 0x0

    aput-object v14, v16, v22

    .line 1225
    const/16 v22, 0x1

    aput-object p1, v16, v22

    goto/16 :goto_0

    .line 1255
    .end local v16    # "obj":[Ljava/lang/Object;
    .restart local v7    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    .restart local v8    # "color":I
    .restart local v9    # "currency":Landroid/widget/TextView;
    .restart local v12    # "i":I
    .restart local v15    # "itemName":Landroid/widget/TextView;
    .restart local v17    # "price":Landroid/widget/TextView;
    .restart local v18    # "scrollLayout":Landroid/widget/LinearLayout;
    .restart local v21    # "vgType":Landroid/widget/TextView;
    :cond_3
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v5, "attr":Landroid/widget/TextView;
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual/range {v22 .. v22}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v6

    .line 1261
    .local v6, "attrType":Ljava/lang/String;
    const-string v22, "quantity"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1263
    new-instance v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    .line 1265
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xa

    invoke-virtual/range {v22 .. v26}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1268
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1269
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1253
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1274
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual/range {v22 .. v22}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1277
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1278
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1307
    .end local v5    # "attr":Landroid/widget/TextView;
    .end local v6    # "attrType":Ljava/lang/String;
    .restart local v19    # "storeItemName":Ljava/lang/String;
    .restart local v20    # "storeItemPrice":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/tapjoy/TJCVirtualGoods$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$1;-><init>(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-nez v22, :cond_5

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const-string v23, "Get this item"

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 1342
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1344
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1345
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 1350
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v13

    .line 1354
    .local v13, "itemID":Ljava/lang/String;
    const-string v22, "Virtual Goods"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "virtualGoodsToDownload size: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Hashtable;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 1361
    .local v4, "activeVGDownload":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    const-string v22, "Virtual Goods"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "showing detail view of an download in progress... "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", status: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 1376
    .end local v4    # "activeVGDownload":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    :goto_4
    sput-object v13, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    .line 1377
    const/16 v22, 0x1

    sput-boolean v22, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil;->setDetailIndex(I)V

    goto/16 :goto_2

    .line 1368
    :cond_6
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const-string v23, "Download Completed"

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1372
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1373
    sget-object v22, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 1303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "storeItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 1398
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1400
    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$2;

    invoke-direct {v3, p0, p2}, Lcom/tapjoy/TJCVirtualGoods$2;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1407
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$3;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/TJCVirtualGoods$3;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1398
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_0
    return-void

    .line 1421
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showItemDownloadedDialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMoreStoreItemsButton(I)V
    .locals 4
    .param p1, "moreData"    # I

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    const-string v2, "MoreStoreItemsButton"

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1180
    .local v0, "moreDataButtonView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1183
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "moreDataButtonView":Landroid/view/View;
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    .line 1187
    :cond_0
    if-lez p1, :cond_1

    .line 1189
    const/16 v1, 0x19

    if-le p1, v1, :cond_2

    .line 1190
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    const-string v2, "Show 25 more..."

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1196
    :cond_1
    return-void

    .line 1192
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Show "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showOffers()V
    .locals 4

    .prologue
    .line 1878
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing offers (userID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->userID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1881
    .local v0, "offersIntent":Landroid/content/Intent;
    const-string v1, "USER_ID"

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    const-string v1, "URL_PARAMS"

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->startActivity(Landroid/content/Intent;)V

    .line 1884
    return-void
.end method

.method private showPurchasedStoreItemTableView(ILandroid/content/Context;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1135
    if-nez p1, :cond_0

    .line 1136
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1141
    const-string v2, "Virtual Goods"

    const-string v3, "No items to display"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    :goto_0
    return-void

    .line 1148
    :cond_1
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1152
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 1163
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1164
    sget v2, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    invoke-direct {p0, v2}, Lcom/tapjoy/TJCVirtualGoods;->showMoreStoreItemsButton(I)V

    .line 1166
    :cond_2
    invoke-direct {p0, p0}, Lcom/tapjoy/TJCVirtualGoods;->updateHeaderFooters(Landroid/content/Context;)V

    goto :goto_0

    .line 1154
    :cond_3
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v0, v4, p2}, Lcom/tapjoy/TJCVirtualGoods;->buildPurchasedItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1157
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1158
    .local v1, "line":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_gradientline"

    const-string v4, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1159
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private showStoreItemTableView(ILandroid/content/Context;)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1084
    if-nez p1, :cond_0

    .line 1085
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 1088
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1090
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1119
    :goto_0
    return-void

    .line 1095
    :cond_1
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1118
    invoke-direct {p0, p0}, Lcom/tapjoy/TJCVirtualGoods;->updateHeaderFooters(Landroid/content/Context;)V

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v3, v0, v8, p2}, Lcom/tapjoy/TJCVirtualGoods;->buildStoreItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1104
    .local v2, "storeItemRow":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1105
    .local v1, "line":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "tapjoy_gradientline"

    const-string v5, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1106
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1108
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1109
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_3
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1115
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startDownloadingPurchasedVG(Lcom/tapjoy/VGStoreItem;)V
    .locals 21
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 1640
    const-string v17, "Virtual Goods"

    const-string v18, "--------------------"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v17, "Virtual Goods"

    const-string v18, "SUCCESSFUL PURCHASE"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    .line 1646
    .local v14, "path":Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1647
    .local v16, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v5, v0

    .line 1648
    .local v5, "free_memory":J
    const-string v17, "File System"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FREE INTERNAL MEMORY: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0x400

    div-long v19, v5, v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " KB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 1651
    new-instance v16, Landroid/os/StatFs;

    .end local v16    # "stat":Landroid/os/StatFs;
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1652
    .restart local v16    # "stat":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v5, v0

    .line 1653
    const-string v17, "File System"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "FREE EXTERNAL MEMORY: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0x400

    div-long v19, v5, v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " KB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 1679
    const/16 v17, 0x1

    sput-boolean v17, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    .line 1680
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    .line 1682
    const/16 v17, 0x1

    sput-boolean v17, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1685
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setShown(Z)V

    .line 1688
    new-instance v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    .line 1690
    .local v4, "downloadVirtualGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_3

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    .line 1695
    const/4 v11, 0x0

    .line 1696
    .local v11, "moreDataButtonView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    const-string v18, "MorePurchasedItemsButton"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    .line 1700
    if-eqz v11, :cond_0

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1707
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    .line 1712
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1715
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1718
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tapjoy/VGStoreItem;

    invoke-virtual/range {v17 .. v17}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v13

    .line 1719
    .local v13, "owned":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tapjoy/VGStoreItem;

    add-int/lit8 v18, v13, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 1720
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "quantity: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v13, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->buildPurchasedItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 1725
    .local v12, "newPurchasedItem":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1727
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1728
    .local v10, "line":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "tapjoy_gradientline"

    const-string v19, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1731
    if-eqz v11, :cond_2

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    check-cast v11, Landroid/widget/Button;

    .end local v11    # "moreDataButtonView":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1734
    :cond_2
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "vg_row_index"

    const-string v19, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1735
    .local v9, "indexTextView":Landroid/widget/TextView;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "vg_row_progress_bar"

    const-string v19, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ProgressBar;

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 1740
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1742
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "vg_row_download_status_text"

    const-string v19, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    .line 1743
    iget-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, "Download Pending"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1745
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "vg_row_retry_button"

    const-string v19, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    .line 1746
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "vg_row_error_icon"

    const-string v19, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    .line 1748
    iget-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1749
    iget-object v0, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/tapjoy/TJCVirtualGoodUtil;->setDetailIndex(I)V

    .line 1752
    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 1754
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tapjoy/VGStoreItem;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/tapjoy/TJCVirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 1757
    .end local v8    # "index":I
    .end local v9    # "indexTextView":Landroid/widget/TextView;
    .end local v10    # "line":Landroid/view/View;
    .end local v12    # "newPurchasedItem":Landroid/widget/LinearLayout;
    .end local v13    # "owned":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->dismiss()V

    .line 1758
    .end local v4    # "downloadVirtualGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    :goto_1
    return-void

    .line 1658
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tapjoy/VGStoreItem;

    .line 1660
    .local v15, "purchasedItem":Lcom/tapjoy/VGStoreItem;
    invoke-virtual {v15}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1663
    invoke-virtual {v15}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v13

    .line 1664
    .restart local v13    # "owned":I
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 1665
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "quantity: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v13, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    const-string v17, "Virtual Goods"

    const-string v18, "ALREADY DOWNLOADED... updating quantity only"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->detailGetThisItemButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 1671
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const-string v18, "Download Completed"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1672
    sget-object v17, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1656
    .end local v13    # "owned":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method private syncAndRebuildAllTables()V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->syncAndRebuildStoreItemTable()V

    .line 908
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->syncAndRebuildPurchasedItemTable()V

    .line 909
    return-void
.end method

.method private syncAndRebuildStoreItemTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 917
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 918
    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    .line 919
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    .line 920
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 921
    return-void
.end method

.method public static updateDetailProgressBar(I)V
    .locals 4
    .param p0, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 1773
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1775
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1778
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1779
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1781
    :cond_0
    return-void
.end method

.method public static updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V
    .locals 6
    .param p0, "task"    # Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1790
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    .line 1792
    .local v0, "state":I
    sparse-switch v0, :sswitch_data_0

    .line 1849
    :goto_0
    return-void

    .line 1796
    :sswitch_0
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloading... "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->progressPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1799
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->progressPercent:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1801
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1802
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1803
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1808
    :sswitch_1
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const-string v2, "Download Pending"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1811
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1812
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1813
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1819
    :sswitch_2
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const-string v2, "Download Completed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1820
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1822
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1823
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1824
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1830
    :sswitch_3
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const-string v2, "Download Failed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1831
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1833
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1834
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1835
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1841
    :sswitch_4
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    const-string v2, "Download Failed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailDownloadStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1844
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1845
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1846
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1792
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0x14 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_4
        0x2c -> :sswitch_4
    .end sparse-switch
.end method

.method private updateHeaderFooters(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1543
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodsData;->getUserID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->userID:Ljava/lang/String;

    .line 1544
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodsData;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    .line 1545
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodsData;->getPoints()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    .line 1547
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1560
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1563
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    :pswitch_0
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 411
    :cond_1
    sput-boolean v7, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 412
    sput-boolean v7, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 413
    sput-boolean v6, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 415
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->showOffers()V

    .line 445
    :cond_2
    :goto_1
    return-void

    .line 362
    :pswitch_1
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storeItemArray.size(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iput-boolean v7, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 365
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_index"

    const-string v4, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, "index":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, "i":I
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v2, v6, p1, v0}, Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    goto/16 :goto_0

    .line 381
    .end local v0    # "i":I
    .end local v1    # "index":Landroid/widget/TextView;
    :pswitch_2
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "purchasedItemArray.size(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_index"

    const-string v4, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    .restart local v1    # "index":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 386
    .restart local v0    # "i":I
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 393
    iput-boolean v7, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 394
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 395
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    goto/16 :goto_0

    .line 421
    .end local v0    # "i":I
    .end local v1    # "index":Landroid/widget/TextView;
    :cond_3
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 423
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    iget v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    add-int/lit8 v2, v2, 0x19

    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    .line 427
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    invoke-direct {v2, p0, v9}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    .line 428
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 434
    :cond_4
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    iget v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    add-int/lit8 v2, v2, 0x19

    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    .line 440
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    invoke-direct {v2, p0, v9}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    .line 441
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    const-string v2, "Virtual Goods"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "showMyItems":Z
    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->clientPackage:Ljava/lang/String;

    .line 238
    if-eqz v0, :cond_1

    .line 241
    const-string v2, "URL_PARAMS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "URL_PARAMS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    .line 245
    :cond_0
    const-string v2, "my_items_tab"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const-string v2, "my_items_tab"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    .line 251
    const-string v2, "Virtual Goods"

    const-string v3, "*** Loading saved data from bundle ***"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "bundle_url_params"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    .line 255
    :cond_2
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "urlParams: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v2, Lcom/tapjoy/TJCVirtualGoodUtil;

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->clientPackage:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/tapjoy/TJCVirtualGoodUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 259
    new-instance v2, Lcom/tapjoy/TJCVirtualGoodsConnection;

    const-string v3, "https://ws.tapjoyads.com/"

    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJCVirtualGoodsConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    .line 260
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 263
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodsData;->getUserID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->userID:Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodsData;->getCurrencyName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodsData;->getPoints()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapPoints:Ljava/lang/String;

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    .line 270
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->initView()V

    .line 273
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->syncAndRebuildAllTables()V

    .line 276
    if-eqz v1, :cond_3

    .line 277
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoodUtil;->setPurchasedItemArray(Ljava/util/ArrayList;)V

    .line 280
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "ExtendedFocusListener"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 350
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 451
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 454
    iget-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    if-eqz v3, :cond_1

    .line 456
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 457
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    sget-boolean v3, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    if-eqz v3, :cond_0

    .line 461
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 462
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 465
    :cond_0
    iput-boolean v5, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 466
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    .line 503
    :goto_0
    return v2

    .line 470
    :cond_1
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 472
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 479
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 480
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 484
    sput v5, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    .line 485
    sput v5, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 487
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 488
    iput v5, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    .line 491
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    invoke-virtual {v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_2

    .line 492
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->cancel(Z)Z

    .line 494
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    invoke-virtual {v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_3

    .line 495
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->cancel(Z)Z

    .line 496
    :cond_3
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;

    invoke-virtual {v3}, Lcom/tapjoy/TJCVirtualGoodUtil;->cancelExecution()V

    .line 498
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->finish()V

    goto :goto_0

    .line 474
    :cond_4
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 475
    .local v0, "dGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_5

    .line 476
    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 472
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    .end local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    .end local v1    # "i":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 298
    sget-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    if-eqz v1, :cond_1

    .line 301
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getVirtualGoodsFocusListener()Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    move-result-object v0

    .line 302
    .local v0, "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    if-eqz v0, :cond_0

    .line 304
    const-string v1, "ExtendedFocusListener"

    const-string v2, "On Pause"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {v0}, Lcom/tapjoy/TJCVirtualGoods$FocusListener;->onFocusLost()V

    .line 313
    .end local v0    # "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 314
    return-void

    .line 310
    :cond_1
    const-string v1, "ExtendedFocusListener"

    const-string v2, "On Pause Not called"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 324
    sget-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromDownloadedVG:Z

    if-nez v1, :cond_1

    .line 327
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getVirtualGoodsFocusListener()Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    move-result-object v0

    .line 329
    .local v0, "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    if-eqz v0, :cond_0

    .line 331
    const-string v1, "ExtendedFocusListener"

    const-string v2, "On Resume"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-interface {v0}, Lcom/tapjoy/TJCVirtualGoods$FocusListener;->onFocusGain()V

    .line 340
    .end local v0    # "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 341
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 342
    return-void

    .line 337
    :cond_1
    const-string v1, "ExtendedFocusListener"

    const-string v2, "On Resume Not Called"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    const-string v0, "Virtual Goods"

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "bundle_url_params"

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public syncAndRebuildPurchasedItemTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    .line 931
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    .line 932
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 933
    return-void
.end method
