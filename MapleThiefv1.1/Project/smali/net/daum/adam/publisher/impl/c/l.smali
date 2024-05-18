.class Lnet/daum/adam/publisher/impl/c/l;
.super Lnet/daum/adam/publisher/impl/c/m;
.source "MraidProperty.java"


# instance fields
.field private final a:Lnet/daum/adam/publisher/impl/c/p$l;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p$l;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/m;-><init>()V

    .line 43
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/l;->a:Lnet/daum/adam/publisher/impl/c/p$l;

    .line 44
    return-void
.end method

.method public static a(Lnet/daum/adam/publisher/impl/c/p$l;)Lnet/daum/adam/publisher/impl/c/l;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lnet/daum/adam/publisher/impl/c/l;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/c/l;-><init>(Lnet/daum/adam/publisher/impl/c/p$l;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/l;->a:Lnet/daum/adam/publisher/impl/c/p$l;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p$l;->toString()Ljava/lang/String;

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
