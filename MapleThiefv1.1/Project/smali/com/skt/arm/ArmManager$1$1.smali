.class Lcom/skt/arm/ArmManager$1$1;
.super Ljava/lang/Object;
.source "ArmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skt/arm/ArmManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/skt/arm/ArmManager$1;


# direct methods
.method constructor <init>(Lcom/skt/arm/ArmManager$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skt/arm/ArmManager$1$1;->this$1:Lcom/skt/arm/ArmManager$1;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 144
    const/16 v0, 0x14

    .line 145
    .local v0, "nAvailInstallArmService":I
    iget-object v1, p0, Lcom/skt/arm/ArmManager$1$1;->this$1:Lcom/skt/arm/ArmManager$1;

    # getter for: Lcom/skt/arm/ArmManager$1;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v1}, Lcom/skt/arm/ArmManager$1;->access$0(Lcom/skt/arm/ArmManager$1;)Lcom/skt/arm/ArmManager;

    move-result-object v1

    # getter for: Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$7()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/skt/arm/ArmManager;->ARMServiceLastVersionInstall(Landroid/content/Context;)I
    invoke-static {v1, v2}, Lcom/skt/arm/ArmManager;->access$10(Lcom/skt/arm/ArmManager;Landroid/content/Context;)I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/skt/arm/ArmManager$1$1;->this$1:Lcom/skt/arm/ArmManager$1;

    # getter for: Lcom/skt/arm/ArmManager$1;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v1}, Lcom/skt/arm/ArmManager$1;->access$0(Lcom/skt/arm/ArmManager$1;)Lcom/skt/arm/ArmManager;

    move-result-object v1

    # invokes: Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V
    invoke-static {v1, v0, v3, v3}, Lcom/skt/arm/ArmManager;->access$11(Lcom/skt/arm/ArmManager;IZZ)V

    .line 148
    return-void
.end method
