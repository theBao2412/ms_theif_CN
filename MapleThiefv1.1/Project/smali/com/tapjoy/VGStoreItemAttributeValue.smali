.class public final Lcom/tapjoy/VGStoreItemAttributeValue;
.super Ljava/lang/Object;
.source "VGStoreItemAttributeValue.java"


# instance fields
.field private attributeType:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItemAttributeValue;->attributeType:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItemAttributeValue;->attributeValue:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getAttributeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/VGStoreItemAttributeValue;->attributeType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/VGStoreItemAttributeValue;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tapjoy/VGStoreItemAttributeValue;->attributeType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tapjoy/VGStoreItemAttributeValue;->attributeValue:Ljava/lang/String;

    .line 43
    return-void
.end method
