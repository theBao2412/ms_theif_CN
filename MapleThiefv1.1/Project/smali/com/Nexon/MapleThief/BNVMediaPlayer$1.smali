.class Lcom/Nexon/MapleThief/BNVMediaPlayer$1;
.super Ljava/lang/Object;
.source "BNVSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/BNVMediaPlayer;->Load(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/BNVMediaPlayer;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/BNVMediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer$1;->this$0:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer$1;->this$0:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Stop()V

    .line 406
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer$1;->this$0:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->OnCompleteCallback()V

    .line 407
    return-void
.end method
