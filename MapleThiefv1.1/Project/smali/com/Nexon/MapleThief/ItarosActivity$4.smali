.class Lcom/Nexon/MapleThief/ItarosActivity$4;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/ItarosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$4;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 1597
    packed-switch p2, :pswitch_data_0

    .line 1606
    :goto_0
    return v1

    .line 1599
    :pswitch_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$4;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->finish()V

    .line 1600
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 1597
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method
