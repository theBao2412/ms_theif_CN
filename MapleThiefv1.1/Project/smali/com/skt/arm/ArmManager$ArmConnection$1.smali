.class Lcom/skt/arm/ArmManager$ArmConnection$1;
.super Landroid/os/AsyncTask;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skt/arm/ArmManager$ArmConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/skt/arm/ArmManager$ArmConnection;


# direct methods
.method constructor <init>(Lcom/skt/arm/ArmManager$ArmConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    .line 308
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/skt/arm/ArmManager$ArmConnection$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x2712

    const/4 v7, 0x1

    .line 314
    const-string v3, ""

    .line 315
    .local v3, "strRet":Ljava/lang/String;
    const/4 v2, -0x1

    .line 316
    .local v2, "nRet":I
    # getter for: Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " onServiceConnected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    # getter for: Lcom/skt/arm/ArmManager;->mBoundService:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/skt/arm/ArmManager;->access$2(Lcom/skt/arm/ArmManager;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/skt/arm/aidl/IArmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skt/arm/aidl/IArmService;

    move-result-object v4

    invoke-static {v4}, Lcom/skt/arm/ArmManager;->access$3(Lcom/skt/arm/aidl/IArmService;)V

    .line 318
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v5}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v5

    iget-object v5, v5, Lcom/skt/arm/ArmManager;->sAID:Ljava/lang/String;

    # invokes: Lcom/skt/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/skt/arm/ArmManager;->access$4(Lcom/skt/arm/ArmManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    # invokes: Lcom/skt/arm/ArmManager;->ARMServiceExecute(Ljava/lang/String;)I
    invoke-static {v4, v3}, Lcom/skt/arm/ArmManager;->access$5(Lcom/skt/arm/ArmManager;Ljava/lang/String;)I

    move-result v2

    .line 322
    const-string v4, "ArmLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ArmServiceExecute nRet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v4, 0x2711

    if-eq v2, v4, :cond_0

    .line 326
    if-eq v2, v8, :cond_0

    .line 331
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    # invokes: Lcom/skt/arm/ArmManager;->GetProcessResponse(I)I
    invoke-static {v4, v2}, Lcom/skt/arm/ArmManager;->access$6(Lcom/skt/arm/ArmManager;I)I

    move-result v2

    .line 332
    const-string v4, "ArmLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetProcessResponse nRet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eq v2, v7, :cond_0

    .line 336
    :try_start_0
    # getter for: Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$7()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 337
    .local v0, "a":Landroid/app/Activity;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    .line 347
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    iput v7, v4, Lcom/skt/arm/ArmManager;->nNetState:I

    .line 357
    :goto_1
    :try_start_1
    # getter for: Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$7()Landroid/content/Context;

    move-result-object v4

    # getter for: Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$8()Lcom/skt/arm/ArmManager$ArmConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    :goto_2
    const/4 v4, 0x0

    return-object v4

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Not ACTIVITY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-ne v2, v8, :cond_2

    .line 350
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    const/4 v5, 0x3

    iput v5, v4, Lcom/skt/arm/ArmManager;->nNetState:I

    goto :goto_1

    .line 353
    :cond_2
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    const/16 v5, 0x14

    iput v5, v4, Lcom/skt/arm/ArmManager;->nNetState:I

    goto :goto_1

    .line 359
    :catch_1
    move-exception v1

    .line 360
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/skt/arm/ArmManager$ArmConnection$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    # getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v0}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v0

    # invokes: Lcom/skt/arm/ArmManager;->ReturnService()V
    invoke-static {v0}, Lcom/skt/arm/ArmManager;->access$9(Lcom/skt/arm/ArmManager;)V

    .line 370
    return-void
.end method
