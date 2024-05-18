.class Lnet/daum/adam/publisher/impl/b/c$5;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$5;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 389
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$5;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0, p1}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;Landroid/location/Location;)Landroid/location/Location;

    .line 390
    const-string v0, "AdCommandTask"

    const-string v1, "GPS UPDATED"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$5;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->g(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/g;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$5;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->f(Lnet/daum/adam/publisher/impl/b/c;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/b/c$5;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v3}, Lnet/daum/adam/publisher/impl/b/c;->f(Lnet/daum/adam/publisher/impl/b/c;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/g;->a(DD)V

    .line 392
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 395
    const-string v0, "AdCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LocationListener] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \uc0ac\uc6a9 \ubd88\uac00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 399
    const-string v0, "AdCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LocationListener] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \uc0ac\uc6a9 \uac00\ub2a5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 403
    packed-switch p2, :pswitch_data_0

    .line 409
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$5;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->h(Lnet/daum/adam/publisher/impl/b/c;)V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
