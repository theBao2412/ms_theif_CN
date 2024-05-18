.class final enum Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;
.super Ljava/lang/Enum;
.source "AdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/AdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InterstitialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

.field public static final enum READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

.field private static final synthetic a:[Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    new-instance v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->NOT_READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    sget-object v1, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    aput-object v1, v0, v2

    sget-object v1, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->NOT_READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    aput-object v1, v0, v3

    sput-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->a:[Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    return-object v0
.end method

.method public static values()[Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->a:[Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    invoke-virtual {v0}, [Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    return-object v0
.end method
