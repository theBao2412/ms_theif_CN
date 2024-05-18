.class Lcom/tapjoy/DownloadVirtualGood$2;
.super Ljava/lang/Object;
.source "DownloadVirtualGood.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/DownloadVirtualGood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/DownloadVirtualGood;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/DownloadVirtualGood$2;->this$0:Lcom/tapjoy/DownloadVirtualGood;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood$2;->this$0:Lcom/tapjoy/DownloadVirtualGood;

    invoke-virtual {v0}, Lcom/tapjoy/DownloadVirtualGood;->finish()V

    .line 88
    return-void
.end method
