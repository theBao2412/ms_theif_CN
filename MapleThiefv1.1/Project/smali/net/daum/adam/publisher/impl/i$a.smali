.class final enum Lnet/daum/adam/publisher/impl/i$a;
.super Ljava/lang/Enum;
.source "AdRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/daum/adam/publisher/impl/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnet/daum/adam/publisher/impl/i$a;

.field public static final enum b:Lnet/daum/adam/publisher/impl/i$a;

.field public static final enum c:Lnet/daum/adam/publisher/impl/i$a;

.field public static final enum d:Lnet/daum/adam/publisher/impl/i$a;

.field private static final synthetic e:[Lnet/daum/adam/publisher/impl/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lnet/daum/adam/publisher/impl/i$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/impl/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/i$a;->a:Lnet/daum/adam/publisher/impl/i$a;

    new-instance v0, Lnet/daum/adam/publisher/impl/i$a;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v3}, Lnet/daum/adam/publisher/impl/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/i$a;->b:Lnet/daum/adam/publisher/impl/i$a;

    new-instance v0, Lnet/daum/adam/publisher/impl/i$a;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lnet/daum/adam/publisher/impl/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/i$a;->c:Lnet/daum/adam/publisher/impl/i$a;

    new-instance v0, Lnet/daum/adam/publisher/impl/i$a;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v5}, Lnet/daum/adam/publisher/impl/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/impl/i$a;->d:Lnet/daum/adam/publisher/impl/i$a;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/daum/adam/publisher/impl/i$a;

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->a:Lnet/daum/adam/publisher/impl/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->b:Lnet/daum/adam/publisher/impl/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->c:Lnet/daum/adam/publisher/impl/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->d:Lnet/daum/adam/publisher/impl/i$a;

    aput-object v1, v0, v5

    sput-object v0, Lnet/daum/adam/publisher/impl/i$a;->e:[Lnet/daum/adam/publisher/impl/i$a;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/i$a;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnet/daum/adam/publisher/impl/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/i$a;

    return-object v0
.end method

.method public static values()[Lnet/daum/adam/publisher/impl/i$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->e:[Lnet/daum/adam/publisher/impl/i$a;

    invoke-virtual {v0}, [Lnet/daum/adam/publisher/impl/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/daum/adam/publisher/impl/i$a;

    return-object v0
.end method
