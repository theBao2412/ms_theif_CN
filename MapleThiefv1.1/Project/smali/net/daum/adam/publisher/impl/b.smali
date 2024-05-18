.class public final Lnet/daum/adam/publisher/impl/b;
.super Ljava/lang/Object;
.source "Ad.java"


# static fields
.field public static final a:Ljava/lang/String; = "H"

.field public static final b:Ljava/lang/String; = "MRAID"

.field private static final c:Ljava/lang/String; = "Ad"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->d:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->j:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->e:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->i:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->f:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->g:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->g:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->h:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b;->h:Ljava/lang/String;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    check-cast p1, Lnet/daum/adam/publisher/impl/b;

    .line 176
    :try_start_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 182
    :cond_2
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    const-string v2, "Ad"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->d:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->i:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b;->j:Ljava/lang/String;

    .line 201
    return-void
.end method
