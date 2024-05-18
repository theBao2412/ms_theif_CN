.class final enum Lnet/daum/adam/publisher/impl/a$a;
.super Ljava/lang/Enum;
.source "AbstractHttpContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/daum/adam/publisher/impl/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnet/daum/adam/publisher/impl/a$a;

.field public static final enum b:Lnet/daum/adam/publisher/impl/a$a;

.field public static final enum c:Lnet/daum/adam/publisher/impl/a$a;

.field private static final synthetic d:[Lnet/daum/adam/publisher/impl/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lnet/daum/adam/publisher/impl/a$a;

    const-string v1, "PROCESS_DOWNLOAD_AD_NONE"

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/impl/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    .line 30
    new-instance v0, Lnet/daum/adam/publisher/impl/a$a;

    const-string v1, "PROCESS_DOWNLOAD_AD_BODY"

    invoke-direct {v0, v1, v3}, Lnet/daum/adam/publisher/impl/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/a$a;->b:Lnet/daum/adam/publisher/impl/a$a;

    .line 32
    new-instance v0, Lnet/daum/adam/publisher/impl/a$a;

    const-string v1, "PROCESS_DOWNLOAD_AD_FINISH"

    invoke-direct {v0, v1, v4}, Lnet/daum/adam/publisher/impl/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/a$a;->c:Lnet/daum/adam/publisher/impl/a$a;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/daum/adam/publisher/impl/a$a;

    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->b:Lnet/daum/adam/publisher/impl/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->c:Lnet/daum/adam/publisher/impl/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lnet/daum/adam/publisher/impl/a$a;->d:[Lnet/daum/adam/publisher/impl/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/a$a;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/daum/adam/publisher/impl/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/a$a;

    return-object v0
.end method

.method public static values()[Lnet/daum/adam/publisher/impl/a$a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->d:[Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {v0}, [Lnet/daum/adam/publisher/impl/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/daum/adam/publisher/impl/a$a;

    return-object v0
.end method
