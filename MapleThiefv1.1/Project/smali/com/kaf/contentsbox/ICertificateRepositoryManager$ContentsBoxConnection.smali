.class Lcom/kaf/contentsbox/ICertificateRepositoryManager$ContentsBoxConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/kaf/contentsbox/ICertificateRepositoryManager;


# direct methods
.method constructor <init>(Lcom/kaf/contentsbox/ICertificateRepositoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kaf/contentsbox/ICertificateRepositoryManager$ContentsBoxConnection;->this$0:Lcom/kaf/contentsbox/ICertificateRepositoryManager;

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
