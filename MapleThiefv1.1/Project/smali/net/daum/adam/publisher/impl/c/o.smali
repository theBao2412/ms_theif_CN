.class Lnet/daum/adam/publisher/impl/c/o;
.super Lnet/daum/adam/publisher/impl/c/m;
.source "MraidProperty.java"


# instance fields
.field private final a:Lnet/daum/adam/publisher/impl/c/p$m;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p$m;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/m;-><init>()V

    .line 92
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/o;->a:Lnet/daum/adam/publisher/impl/c/p$m;

    .line 93
    return-void
.end method

.method public static a(Lnet/daum/adam/publisher/impl/c/p$m;)Lnet/daum/adam/publisher/impl/c/o;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lnet/daum/adam/publisher/impl/c/o;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/c/o;-><init>(Lnet/daum/adam/publisher/impl/c/p$m;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/o;->a:Lnet/daum/adam/publisher/impl/c/p$m;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p$m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
