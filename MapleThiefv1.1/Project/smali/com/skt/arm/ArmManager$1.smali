.class Lcom/skt/arm/ArmManager$1;
.super Ljava/lang/Thread;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skt/arm/ArmManager;->ARM_Plugin_ExecuteARM(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skt/arm/ArmManager;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/skt/arm/ArmManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skt/arm/ArmManager$1;->this$0:Lcom/skt/arm/ArmManager;

    iput-object p2, p0, Lcom/skt/arm/ArmManager$1;->val$handler:Landroid/os/Handler;

    .line 138
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/skt/arm/ArmManager$1;)Lcom/skt/arm/ArmManager;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/skt/arm/ArmManager$1;->this$0:Lcom/skt/arm/ArmManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/skt/arm/ArmManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/skt/arm/ArmManager$1$1;

    invoke-direct {v1, p0}, Lcom/skt/arm/ArmManager$1$1;-><init>(Lcom/skt/arm/ArmManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method
