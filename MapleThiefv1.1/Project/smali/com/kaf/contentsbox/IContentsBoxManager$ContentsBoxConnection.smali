.class Lcom/kaf/contentsbox/IContentsBoxManager$ContentsBoxConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/kaf/contentsbox/IContentsBoxManager;


# direct methods
.method constructor <init>(Lcom/kaf/contentsbox/IContentsBoxManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kaf/contentsbox/IContentsBoxManager$ContentsBoxConnection;->this$0:Lcom/kaf/contentsbox/IContentsBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
