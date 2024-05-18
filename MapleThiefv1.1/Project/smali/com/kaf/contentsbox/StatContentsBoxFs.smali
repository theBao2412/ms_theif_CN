.class public Lcom/kaf/contentsbox/StatContentsBoxFs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public blockCount:I

.field public blockSize:I

.field public freeBlocks:I

.field public usedBlocks:I

.field public usedContentsBox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kaf/contentsbox/StatContentsBoxFs$1;

    invoke-direct {v0}, Lcom/kaf/contentsbox/StatContentsBoxFs$1;-><init>()V

    sput-object v0, Lcom/kaf/contentsbox/StatContentsBoxFs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    iput p3, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    sub-int v0, p2, p3

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBlockCount()I
    .locals 1

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    return v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    return v0
.end method

.method public getFreeBlocks()I
    .locals 1

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    return v0
.end method

.method public getUsedBlocks()I
    .locals 1

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    return v0
.end method

.method public getUsedContentsBox()I
    .locals 1

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    return v0
.end method

.method public setBlockCount(I)V
    .locals 0

    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    return-void
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    return-void
.end method

.method public setFreeBlocks(I)V
    .locals 0

    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    return-void
.end method

.method public setUsedBlocks(I)V
    .locals 0

    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    return-void
.end method

.method public setUsedContentsBox(I)V
    .locals 0

    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
