.class final Lnet/daum/adam/publisher/impl/c/i$6;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/daum/adam/publisher/impl/c/p;",
            ")",
            "Lnet/daum/adam/publisher/impl/c/c;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lnet/daum/adam/publisher/impl/c/f;

    invoke-direct {v0, p1, p2}, Lnet/daum/adam/publisher/impl/c/f;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    return-object v0
.end method
