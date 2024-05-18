.class public final Lnet/daum/adam/publisher/impl/b/a;
.super Ljava/lang/Object;
.source "AdCommand.java"


# static fields
.field protected static final a:I = 0xc8

.field protected static final b:I = 0x1

.field protected static final c:I = 0x2

.field protected static final d:I = 0x3

.field protected static final e:I = 0x4

.field protected static f:Ljava/lang/String;

.field protected static g:Ljava/lang/String;

.field public static h:Z

.field public static i:Z

.field public static j:Z


# instance fields
.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, ""

    sput-object v0, Lnet/daum/adam/publisher/impl/b/a;->f:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lnet/daum/adam/publisher/impl/b/a;->g:Ljava/lang/String;

    .line 27
    sput-boolean v1, Lnet/daum/adam/publisher/impl/b/a;->h:Z

    .line 28
    sput-boolean v1, Lnet/daum/adam/publisher/impl/b/a;->i:Z

    .line 29
    sput-boolean v1, Lnet/daum/adam/publisher/impl/b/a;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->k:Ljava/lang/String;

    .line 17
    iput v1, p0, Lnet/daum/adam/publisher/impl/b/a;->l:I

    .line 18
    iput v1, p0, Lnet/daum/adam/publisher/impl/b/a;->m:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->p:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->q:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->r:Ljava/util/ArrayList;

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lnet/daum/adam/publisher/impl/b/a;->l:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lnet/daum/adam/publisher/impl/b/a;->l:I

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lnet/daum/adam/publisher/impl/b/a;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/daum/adam/publisher/impl/b/a;->n:I

    .line 65
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lnet/daum/adam/publisher/impl/b/a;->n:I

    return v0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lnet/daum/adam/publisher/impl/b/a;->m:I

    .line 173
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lnet/daum/adam/publisher/impl/b/a;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/daum/adam/publisher/impl/b/a;->o:I

    .line 83
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lnet/daum/adam/publisher/impl/b/a;->o:I

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 92
    const-string v0, "agree"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_0
    const-string v0, "send"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x2

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "refresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x3

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/b/a;->g(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/b/a;->g(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/a;->k:Ljava/lang/String;

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lnet/daum/adam/publisher/impl/b/a;->m:I

    return v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/a;->k:Ljava/lang/String;

    return-object v0
.end method
