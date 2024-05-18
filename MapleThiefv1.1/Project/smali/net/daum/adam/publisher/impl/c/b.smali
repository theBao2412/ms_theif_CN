.class Lnet/daum/adam/publisher/impl/c/b;
.super Lnet/daum/adam/publisher/impl/c/a;
.source "MraidBrowserController.java"


# static fields
.field private static final a:Ljava/lang/String; = "MraidBrowserController"


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/c/a;-><init>(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    const-string v0, "MraidBrowserController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening in-app browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/b;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lnet/daum/adam/publisher/impl/c/p;->c(Ljava/lang/String;)Z

    .line 27
    return-void
.end method
