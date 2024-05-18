.class Lnet/daum/adam/publisher/impl/c/q;
.super Lnet/daum/adam/publisher/impl/c/m;
.source "MraidProperty.java"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/m;-><init>()V

    .line 123
    iput-boolean p1, p0, Lnet/daum/adam/publisher/impl/c/q;->a:Z

    .line 124
    return-void
.end method

.method public static a(Z)Lnet/daum/adam/publisher/impl/c/q;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lnet/daum/adam/publisher/impl/c/q;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/c/q;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/c/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
