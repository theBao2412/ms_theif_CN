.class Lnet/daum/adam/publisher/impl/c/n;
.super Lnet/daum/adam/publisher/impl/c/m;
.source "MraidProperty.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/m;-><init>()V

    .line 66
    iput p1, p0, Lnet/daum/adam/publisher/impl/c/n;->a:I

    .line 67
    iput p2, p0, Lnet/daum/adam/publisher/impl/c/n;->b:I

    .line 68
    return-void
.end method

.method public static a(II)Lnet/daum/adam/publisher/impl/c/n;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lnet/daum/adam/publisher/impl/c/n;

    invoke-direct {v0, p0, p1}, Lnet/daum/adam/publisher/impl/c/n;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenSize: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/daum/adam/publisher/impl/c/n;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/daum/adam/publisher/impl/c/n;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
