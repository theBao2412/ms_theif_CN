.class public final enum Lcom/chartboost/sdk/CBView$CBViewType;
.super Ljava/lang/Enum;
.source "CBView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/CBView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/CBView$CBViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

.field public static final enum CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

.field private static final synthetic ENUM$VALUES:[Lcom/chartboost/sdk/CBView$CBViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/chartboost/sdk/CBView$CBViewType;

    const-string v1, "CBViewTypeInterstitial"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/CBView$CBViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    .line 21
    new-instance v0, Lcom/chartboost/sdk/CBView$CBViewType;

    const-string v1, "CBViewTypeMoreApps"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/CBView$CBViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/CBView$CBViewType;

    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/CBView$CBViewType;->ENUM$VALUES:[Lcom/chartboost/sdk/CBView$CBViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/CBView$CBViewType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/chartboost/sdk/CBView$CBViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/CBView$CBViewType;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/CBView$CBViewType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/chartboost/sdk/CBView$CBViewType;->ENUM$VALUES:[Lcom/chartboost/sdk/CBView$CBViewType;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/CBView$CBViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
