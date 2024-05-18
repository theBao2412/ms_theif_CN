.class public Lcom/kaf/sys/AccountInfo;
.super Ljava/lang/Object;


# instance fields
.field public id:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kaf/sys/AccountInfo;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kaf/sys/AccountInfo;->password:Ljava/lang/String;

    return-void
.end method
