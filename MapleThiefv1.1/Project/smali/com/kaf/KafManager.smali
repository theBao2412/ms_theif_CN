.class public Lcom/kaf/KafManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_FUNC_NOT_SUPPORT_CODE:Ljava/lang/String; = "F00000006"

.field public static final ERR_FUNC_NOT_SUPPORT_MESG:Ljava/lang/String; = "The function is not supported."

.field public static final ERR_INVALID_OBJECT_CODE:Ljava/lang/String; = "F00000004"

.field public static final ERR_INVALID_OBJECT_MESG:Ljava/lang/String; = "Object is null."

.field public static final ERR_INVALID_PARAM_CODE:Ljava/lang/String; = "F00000005"

.field public static final ERR_INVALID_PARAM_MESG:Ljava/lang/String; = "The parameter is Invalid."

.field public static final ERR_LIB_LOAD_FAILED_CODE:Ljava/lang/String; = "F00000003"

.field public static final ERR_LIB_LOAD_FAILED_MESG:Ljava/lang/String; = "Library Load Failed."

.field public static final ERR_LIB_NOT_INIT_CODE:Ljava/lang/String; = "F00000002"

.field public static final ERR_LIB_NOT_INIT_MESG:Ljava/lang/String; = "KAF is not initialized."

.field public static final ERR_LIB_NOT_LOADED_CODE:Ljava/lang/String; = "F00000001"

.field public static final ERR_LIB_NOT_LOADED_MESG:Ljava/lang/String; = "KAF Library is not loaded."

.field public static final INIT_COPYLEFT:I = 0x0

.field public static final INIT_COPYRIGHT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kaf/KafManager;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;I)I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
