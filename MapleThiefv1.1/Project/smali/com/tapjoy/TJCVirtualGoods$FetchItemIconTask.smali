.class Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchItemIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Lcom/tapjoy/VGStoreItem;

.field private itemIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;)V
    .locals 0

    .prologue
    .line 1965
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 1972
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->itemIcon:Landroid/widget/ImageView;

    .line 1973
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Lcom/tapjoy/VGStoreItem;

    iput-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->item:Lcom/tapjoy/VGStoreItem;

    .line 1977
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->item:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v2, "fileURL":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 1979
    .local v0, "connection":Ljava/net/URLConnection;
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1980
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1981
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 1983
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1984
    .local v4, "is":Ljava/io/InputStream;
    const-string v5, "src"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1985
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "fileURL":Ljava/net/URL;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 1988
    :catch_0
    move-exception v1

    .line 1990
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Virtual Goods"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FetchItemIconTask error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->removeAndExecuteNext(Landroid/os/AsyncTask;)Z

    .line 1999
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->item:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v0, p1}, Lcom/tapjoy/VGStoreItem;->setThumbImage(Landroid/graphics/drawable/Drawable;)V

    .line 2000
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2001
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
