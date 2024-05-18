.class public final Lcom/tapjoy/VGStoreItem;
.super Ljava/lang/Object;
.source "VGStoreItem.java"


# static fields
.field public static final MAX_ITEMS:I = 0x19

.field public static final PURCHASED_ITEM:I = 0x1

.field public static final STORE_ITEM:I

.field public static availableItemsMoreDataAvailable:I

.field public static purchasedItemsMoreDataAvailable:I


# instance fields
.field private dataFileHash:Ljava/lang/String;

.field private datafileUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fullImageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private numberOwned:I

.field private price:I

.field private productID:Ljava/lang/String;

.field private shown:Z

.field private thumbImage:Landroid/graphics/drawable/Drawable;

.field private thumbImageUrl:Ljava/lang/String;

.field private vgStoreItemID:Ljava/lang/String;

.field private vgStoreItemTypeName:Ljava/lang/String;

.field vgStoreItemsAttributeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    .line 26
    sput v0, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemID:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->productID:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/tapjoy/VGStoreItem;->price:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->name:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->description:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemTypeName:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/tapjoy/VGStoreItem;->numberOwned:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->thumbImageUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->fullImageUrl:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->datafileUrl:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/VGStoreItem;->dataFileHash:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/tapjoy/VGStoreItem;->thumbImage:Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/VGStoreItem;->shown:Z

    .line 43
    iput-object v2, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemsAttributeValueList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method


# virtual methods
.method public getDataFileHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->dataFileHash:Ljava/lang/String;

    return-object v0
.end method

.method public getDatafileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->datafileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->fullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOwned()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/tapjoy/VGStoreItem;->numberOwned:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/tapjoy/VGStoreItem;->price:I

    return v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->thumbImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->thumbImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemID:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItemTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemsAttributeValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/tapjoy/VGStoreItem;->shown:Z

    return v0
.end method

.method public setDataFileHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->dataFileHash:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDatafileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->datafileUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->description:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->fullImageUrl:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemname"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNumberOwned(I)V
    .locals 0
    .param p1, "owned"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/tapjoy/VGStoreItem;->numberOwned:I

    .line 129
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/tapjoy/VGStoreItem;->price:I

    .line 79
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->productID:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setShown(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/tapjoy/VGStoreItem;->shown:Z

    .line 184
    return-void
.end method

.method public setThumbImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->thumbImage:Landroid/graphics/drawable/Drawable;

    .line 169
    return-void
.end method

.method public setThumbImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->thumbImageUrl:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setVgStoreItemID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemID:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setVgStoreItemTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemTypeName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    iput-object p1, p0, Lcom/tapjoy/VGStoreItem;->vgStoreItemsAttributeValueList:Ljava/util/ArrayList;

    .line 119
    return-void
.end method
