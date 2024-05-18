.class Lcom/Nexon/MapleThief/ItarosActivity$19;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/ItarosActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$19;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$19;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$4(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BNVSoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$19;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$4(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BNVSoundPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVSoundPool;->ResumeAll()V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$19;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$5(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BNVMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$19;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$5(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BNVMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Resume()V

    .line 1439
    :cond_1
    return-void
.end method
