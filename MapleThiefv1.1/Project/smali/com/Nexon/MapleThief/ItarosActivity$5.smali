.class Lcom/Nexon/MapleThief/ItarosActivity$5;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/ItarosActivity;->RunInKeyPad()V
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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$5;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 598
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity$5;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;
    invoke-static {v2}, Lcom/Nexon/MapleThief/ItarosActivity;->access$0(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/KeyboardDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/Nexon/MapleThief/KeyboardDialog;->GetResult()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "strResult":Ljava/lang/String;
    :try_start_0
    const-string v2, "KSC5601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeKeyPadDone([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    const-string v2, "Debug_Android"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
