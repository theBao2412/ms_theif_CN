.class Lcom/skt/arm/ArmManager$2;
.super Ljava/util/TimerTask;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skt/arm/ArmManager;


# direct methods
.method constructor <init>(Lcom/skt/arm/ArmManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skt/arm/ArmManager$2;->this$0:Lcom/skt/arm/ArmManager;

    .line 554
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 557
    return-void
.end method
