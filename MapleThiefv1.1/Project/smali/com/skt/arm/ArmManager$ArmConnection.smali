.class Lcom/skt/arm/ArmManager$ArmConnection;
.super Ljava/lang/Object;
.source "ArmManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skt/arm/ArmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArmConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skt/arm/ArmManager;


# direct methods
.method private constructor <init>(Lcom/skt/arm/ArmManager;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/skt/arm/ArmManager;Lcom/skt/arm/ArmManager$ArmConnection;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager$ArmConnection;-><init>(Lcom/skt/arm/ArmManager;)V

    return-void
.end method

.method static synthetic access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "boundService"    # Landroid/os/IBinder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;

    invoke-static {v0, p2}, Lcom/skt/arm/ArmManager;->access$0(Lcom/skt/arm/ArmManager;Landroid/os/IBinder;)V

    .line 305
    iget-object v0, p0, Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;

    const/16 v1, 0x14

    iput v1, v0, Lcom/skt/arm/ArmManager;->nNetState:I

    .line 308
    new-instance v0, Lcom/skt/arm/ArmManager$ArmConnection$1;

    invoke-direct {v0, p0}, Lcom/skt/arm/ArmManager$ArmConnection$1;-><init>(Lcom/skt/arm/ArmManager$ArmConnection;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 372
    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/skt/arm/ArmManager$ArmConnection$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;

    # invokes: Lcom/skt/arm/ArmManager;->ReturnService()V
    invoke-static {v0}, Lcom/skt/arm/ArmManager;->access$9(Lcom/skt/arm/ArmManager;)V

    .line 378
    # getter for: Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method
