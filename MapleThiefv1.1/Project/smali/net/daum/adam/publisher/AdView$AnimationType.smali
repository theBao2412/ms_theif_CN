.class public final enum Lnet/daum/adam/publisher/AdView$AnimationType;
.super Ljava/lang/Enum;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/daum/adam/publisher/AdView$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FLIP_HORIZONTAL:Lnet/daum/adam/publisher/AdView$AnimationType;

.field public static final enum FLIP_VERTICAL:Lnet/daum/adam/publisher/AdView$AnimationType;

.field public static final enum NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

.field private static final synthetic a:[Lnet/daum/adam/publisher/AdView$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    new-instance v0, Lnet/daum/adam/publisher/AdView$AnimationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/AdView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

    .line 537
    new-instance v0, Lnet/daum/adam/publisher/AdView$AnimationType;

    const-string v1, "FLIP_HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lnet/daum/adam/publisher/AdView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_HORIZONTAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    .line 540
    new-instance v0, Lnet/daum/adam/publisher/AdView$AnimationType;

    const-string v1, "FLIP_VERTICAL"

    invoke-direct {v0, v1, v4}, Lnet/daum/adam/publisher/AdView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_VERTICAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    .line 532
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/daum/adam/publisher/AdView$AnimationType;

    sget-object v1, Lnet/daum/adam/publisher/AdView$AnimationType;->NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_HORIZONTAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_VERTICAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    aput-object v1, v0, v4

    sput-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->a:[Lnet/daum/adam/publisher/AdView$AnimationType;

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
    .line 532
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/daum/adam/publisher/AdView$AnimationType;
    .locals 1

    .prologue
    .line 532
    const-class v0, Lnet/daum/adam/publisher/AdView$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/AdView$AnimationType;

    return-object v0
.end method

.method public static values()[Lnet/daum/adam/publisher/AdView$AnimationType;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->a:[Lnet/daum/adam/publisher/AdView$AnimationType;

    invoke-virtual {v0}, [Lnet/daum/adam/publisher/AdView$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/daum/adam/publisher/AdView$AnimationType;

    return-object v0
.end method
