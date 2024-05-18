.class public Lnet/daum/adam/publisher/impl/b/c;
.super Ljava/lang/Object;
.source "AdCommandTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/b/c$a;,
        Lnet/daum/adam/publisher/impl/b/c$b;,
        Lnet/daum/adam/publisher/impl/b/c$c;
    }
.end annotation


# static fields
.field protected static a:Z = false

.field private static final b:Ljava/lang/String; = "AdCommandTask"

.field private static final c:I = 0xa

.field private static final d:I = 0x14

.field private static final e:I = 0x15

.field private static f:J

.field private static g:J

.field private static h:I

.field private static i:I

.field private static j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/daum/adam/publisher/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lnet/daum/adam/publisher/AdView;

.field private m:Lnet/daum/adam/publisher/impl/g;

.field private n:Lnet/daum/adam/publisher/impl/b/c$c;

.field private o:Ljava/lang/Thread;

.field private p:Landroid/os/Handler;

.field private q:Landroid/location/Location;

.field private r:Landroid/location/LocationManager;

.field private s:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lnet/daum/adam/publisher/impl/b/c;->a:Z

    .line 43
    sput-wide v1, Lnet/daum/adam/publisher/impl/b/c;->f:J

    .line 44
    sput-wide v1, Lnet/daum/adam/publisher/impl/b/c;->g:J

    .line 45
    const/4 v0, 0x2

    sput v0, Lnet/daum/adam/publisher/impl/b/c;->h:I

    .line 46
    const/4 v0, 0x0

    sput v0, Lnet/daum/adam/publisher/impl/b/c;->i:I

    return-void
.end method

.method public constructor <init>(Lnet/daum/adam/publisher/AdView;)V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lnet/daum/adam/publisher/impl/b/c$1;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/b/c$1;-><init>(Lnet/daum/adam/publisher/impl/b/c;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->p:Landroid/os/Handler;

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    .line 386
    new-instance v0, Lnet/daum/adam/publisher/impl/b/c$5;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/b/c$5;-><init>(Lnet/daum/adam/publisher/impl/b/c;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->s:Landroid/location/LocationListener;

    .line 123
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->k:Ljava/lang/ref/WeakReference;

    .line 124
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/AdView;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    .line 125
    new-instance v0, Lnet/daum/adam/publisher/impl/g;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    .line 126
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "AdCommandTask"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    const-string v1, "AdCommandTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 33
    sput-wide p0, Lnet/daum/adam/publisher/impl/b/c;->f:J

    return-wide p0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c;->q:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c;->o:Ljava/lang/Thread;

    return-object p1
.end method

.method protected static a(I)V
    .locals 0

    .prologue
    .line 63
    sput p0, Lnet/daum/adam/publisher/impl/b/c;->h:I

    .line 64
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c$c;->interrupt()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    .line 169
    :cond_0
    if-nez p1, :cond_2

    .line 170
    const-string v0, "AdCommandTask"

    const-string v1, "SDK \ub0b4\ubd80 \ud30c\ub77c\ubbf8\ud130\ub97c \uac31\uc2e0"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/b/c$c;-><init>(Lnet/daum/adam/publisher/impl/b/c;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    .line 177
    :goto_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c$c;->getPriority()I

    move-result v0

    .line 179
    :try_start_0
    sget-object v1, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    sget-object v2, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/b/c$c;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c$c;->start()V

    .line 186
    return-void

    .line 173
    :cond_2
    const-string v0, "AdCommandTask"

    const-string v1, "SDK \ub0b4\ubd80 \ud30c\ub77c\ubbf8\ud130\ub97c \uac31\uc2e0 \ud6c4 \uc804\uc1a1"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-direct {v0, p0, p1}, Lnet/daum/adam/publisher/impl/b/c$c;-><init>(Lnet/daum/adam/publisher/impl/b/c;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b/c$c;->setPriority(I)V

    goto :goto_1
.end method

.method private declared-synchronized a(Lnet/daum/adam/publisher/impl/b/a;)V
    .locals 3

    .prologue
    .line 303
    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b/a;->g()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 304
    const-string v0, "AdCommandTask"

    const-string v1, "Command\ub97c SDK\uc5d0 \ubc18\uc601"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 312
    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_0
    const-string v2, "netoperator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    const-string v2, "netoperator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1
    sget-object v2, Lnet/daum/adam/publisher/impl/b/c;->j:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 321
    const/4 v0, 0x1

    .line 324
    :cond_2
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b/a;->b()I

    move-result v2

    sput v2, Lnet/daum/adam/publisher/impl/b/c;->h:I

    .line 325
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b/a;->a()I

    move-result v2

    sput v2, Lnet/daum/adam/publisher/impl/b/c;->i:I

    .line 326
    sput-object v1, Lnet/daum/adam/publisher/impl/b/c;->j:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b/a;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/util/List;)V

    .line 329
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b/a;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/util/List;)V

    .line 331
    if-eqz v0, :cond_3

    .line 332
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->i()V

    .line 337
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/daum/adam/publisher/impl/b/c;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 335
    :cond_4
    const/4 v0, 0x4

    :try_start_1
    sput v0, Lnet/daum/adam/publisher/impl/b/c;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c;Lnet/daum/adam/publisher/impl/b/a;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/a;)V

    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/b/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    .line 719
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 721
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->p:Landroid/os/Handler;

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$6;

    invoke-direct {v1, p0, v2}, Lnet/daum/adam/publisher/impl/b/c$6;-><init>(Lnet/daum/adam/publisher/impl/b/c;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/withdrawal.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    new-instance v3, Lnet/daum/adam/publisher/impl/h;

    invoke-direct {v3}, Lnet/daum/adam/publisher/impl/h;-><init>()V

    .line 733
    const/4 v0, 0x0

    .line 735
    :try_start_0
    iget-object v4, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v4

    .line 738
    if-eqz p1, :cond_0

    .line 740
    const-string v5, "AdCommandTask"

    const-string v6, "[withdrawCollectGps] \uc704\uce58 \ub3d9\uc758 \ucca0\ud68c \uc694\uccad"

    invoke-static {v5, v6}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v5, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v5}, Lnet/daum/adam/publisher/AdView;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lnet/daum/adam/publisher/impl/h;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 746
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->p:Landroid/os/Handler;

    new-instance v3, Lnet/daum/adam/publisher/impl/b/c$7;

    invoke-direct {v3, p0, v2}, Lnet/daum/adam/publisher/impl/b/c$7;-><init>(Lnet/daum/adam/publisher/impl/b/c;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 753
    if-eqz v0, :cond_1

    .line 754
    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/a;)V

    .line 757
    const-string v1, "AdCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[withdrawCollectGps] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->p:Landroid/os/Handler;

    new-instance v2, Lnet/daum/adam/publisher/impl/b/c$8;

    invoke-direct {v2, p0, v0}, Lnet/daum/adam/publisher/impl/b/c$8;-><init>(Lnet/daum/adam/publisher/impl/b/c;Lnet/daum/adam/publisher/impl/b/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    :cond_1
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 744
    const-string v3, "AdCommandTask"

    const-string v4, "[withdrawCollectGps] LIA \uc11c\ubc84 Command \uc694\uccad \uc2e4\ud328"

    invoke-static {v3, v4, v1}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 33
    sput p0, Lnet/daum/adam/publisher/impl/b/c;->h:I

    return p0
.end method

.method static synthetic b(Lnet/daum/adam/publisher/impl/b/c;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->o:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    return-object v0
.end method

.method public static d()Z
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    sget v2, Lnet/daum/adam/publisher/impl/b/c;->h:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    sget-wide v2, Lnet/daum/adam/publisher/impl/b/c;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget v2, Lnet/daum/adam/publisher/impl/b/c;->i:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 290
    const-string v0, "AdCommandTask"

    const-string v1, "\uc704\uce58 \uc815\ubcf4 \uc5c5\ub370\uc774\ud2b8 \uac00\ub2a5"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    .line 293
    :cond_0
    const-string v0, "AdCommandTask"

    const-string v1, "\uc704\uce58 \uc815\ubcf4 \uc5c5\ub370\uc774\ud2b8 \ubd88\uac00\ub2a5"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lnet/daum/adam/publisher/impl/b/c;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->q:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnet/daum/adam/publisher/impl/b/c;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lnet/daum/adam/publisher/impl/b/c;->h:I

    return v0
.end method

.method static synthetic g(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/g;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    return-object v0
.end method

.method static synthetic h()J
    .locals 2

    .prologue
    .line 33
    sget-wide v0, Lnet/daum/adam/publisher/impl/b/c;->g:J

    return-wide v0
.end method

.method static synthetic h(Lnet/daum/adam/publisher/impl/b/c;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->m()V

    return-void
.end method

.method static synthetic i(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Ljava/lang/Boolean;)V

    .line 155
    return-void
.end method

.method private j()Landroid/location/LocationManager;
    .locals 3

    .prologue
    .line 219
    .line 222
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 223
    if-nez v0, :cond_0

    .line 224
    const-string v0, "AdCommandTask"

    const-string v1, "[\uc704\uce58 \uae30\ubc18 \uc11c\ube44\uc2a4] \uc704\uce58 \uc815\ubcf4 \uc218\uc9d1 \uac00\ub2a5 \uad8c\ud55c OFF"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "AdCommandTask"

    const-string v2, "[\uc704\uce58 \uae30\ubc18 \uc11c\ube44\uc2a4] \uc704\uce58 \uc815\ubcf4\ub97c \uc218\uc9d1\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    const/4 v0, 0x0

    .line 231
    :cond_0
    return-object v0
.end method

.method static synthetic j(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lnet/daum/adam/publisher/impl/b/c;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->j()Landroid/location/LocationManager;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-string v0, ""

    .line 255
    :goto_0
    return-object v0

    .line 245
    :cond_0
    const-string v1, ""

    .line 247
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 248
    if-eqz v0, :cond_1

    .line 249
    const-string v2, "NetworkOperator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v2, "AdCommandTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 279
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 271
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 272
    const-string v0, "wifi"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v2, "AdCommandTask"

    const-string v3, "\ub124\ud2b8\uc6cc\ud06c \uc815\ubcf4\ub97c \uac00\uc838\uc62c \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-static {v2, v3, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 276
    goto :goto_0

    .line 279
    :cond_1
    const-string v0, "3g"

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "AdCommandTask"

    const-string v1, "[UpdateParamsRunnable] \uc704\uce58 \uc815\ubcf4 \uc11c\ube44\uc2a4 \uc0ac\uc6a9 \ubd88\uac00"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->s:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 420
    :cond_0
    return-void
.end method

.method private n()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 512
    .line 513
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 517
    :cond_1
    return v0
.end method

.method private o()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 526
    :try_start_0
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/b/c;->j()Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    .line 528
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->q:Landroid/location/Location;

    .line 529
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->q:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->q:Landroid/location/Location;

    .line 533
    :cond_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 534
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->m:Lnet/daum/adam/publisher/impl/g;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 540
    :goto_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    const-string v0, "AdCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UpdateParamsRunnable] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lnet/daum/adam/publisher/impl/b/c;->s:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    const-string v1, "AdCommandTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    const/4 v0, 0x0

    .line 549
    :goto_2
    return v0

    .line 537
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 549
    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isAvailableToShowExpandableAd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const-string v0, "AdCommandTask"

    const-string v1, "TODO : CANNOT BE USED"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-boolean v0, Lnet/daum/adam/publisher/impl/b/c;->a:Z

    if-nez v0, :cond_2

    sget v0, Lnet/daum/adam/publisher/impl/b/c;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    sget v0, Lnet/daum/adam/publisher/impl/b/c;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 145
    :cond_2
    sget-boolean v0, Lnet/daum/adam/publisher/impl/b/c;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Ljava/lang/Boolean;)V

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lnet/daum/adam/publisher/impl/b/c;->a:Z

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isAvailableToShowExpandableAd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    const-string v0, "AdCommandTask"

    const-string v1, "TODO : CANNOT BE USED"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "AdCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateParamsThread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/b/c$c;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c$c;->interrupt()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->n:Lnet/daum/adam/publisher/impl/b/c$c;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/b/c;->b()V

    .line 207
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->r:Landroid/location/LocationManager;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->s:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 210
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->isAvailableToShowExpandableAd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    const-string v1, "AdCommandTask"

    const-string v2, "TODO : CANNOT BE USED"

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    sget-boolean v1, Lnet/daum/adam/publisher/impl/b/a;->i:Z

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->pause()V

    .line 354
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const-string v1, "\ucca0\ud68c"

    new-instance v2, Lnet/daum/adam/publisher/impl/b/c$4;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/b/c$4;-><init>(Lnet/daum/adam/publisher/impl/b/c;)V

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const-string v1, "\ucde8\uc18c"

    new-instance v2, Lnet/daum/adam/publisher/impl/b/c$3;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/b/c$3;-><init>(Lnet/daum/adam/publisher/impl/b/c;)V

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/d/a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$2;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/b/c$2;-><init>(Lnet/daum/adam/publisher/impl/b/c;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/DialogInterface$OnCancelListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c;->l:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/Context;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->c()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string v1, "AdCommandTask"

    const-string v2, "\uc704\uce58 \uc815\ubcf4 \ub3d9\uc758 \ucca0\ud68c \ud31d\uc5c5 \uc608\uc678 \ubc1c\uc0dd"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
