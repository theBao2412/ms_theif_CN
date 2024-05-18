.class public Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncTaskPool"
.end annotation


# instance fields
.field private currentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private poolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 2277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->currentTasks:Ljava/util/ArrayList;

    .line 2272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->pendingTasks:Ljava/util/ArrayList;

    .line 2279
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->poolSize:I

    .line 2282
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->poolSize:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2283
    const/4 v0, 0x4

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->poolSize:I

    .line 2284
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "asyncTask"    # Landroid/os/AsyncTask;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2294
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->poolSize:I

    if-ge v1, v2, :cond_1

    .line 2296
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2299
    if-eqz p2, :cond_0

    .line 2300
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2318
    :goto_0
    return v4

    .line 2302
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2304
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2311
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 2312
    .local v0, "task":[Ljava/lang/Object;
    aput-object p1, v0, v3

    .line 2313
    aput-object p2, v0, v4

    .line 2315
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 2288
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->poolSize:I

    return v0
.end method

.method public removeAndExecuteNext(Landroid/os/AsyncTask;)Z
    .locals 4
    .param p1, "atask"    # Landroid/os/AsyncTask;

    .prologue
    const/4 v3, 0x0

    .line 2336
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->removeTask(Landroid/os/AsyncTask;)Z

    .line 2337
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->poolSize:I

    if-ge v1, v2, :cond_0

    .line 2339
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2340
    .local v0, "task":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2342
    aget-object v1, v0, v3

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    .line 2345
    .end local v0    # "task":[Ljava/lang/Object;
    :cond_0
    return v3
.end method

.method public removeTask(Landroid/os/AsyncTask;)Z
    .locals 1
    .param p1, "task"    # Landroid/os/AsyncTask;

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2327
    const/4 v0, 0x1

    .line 2329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
