.class public final Lnet/daum/adam/publisher/impl/d/a;
.super Ljava/lang/Object;
.source "DialogBuilder.java"


# static fields
.field private static a:Lnet/daum/adam/publisher/impl/d/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Landroid/content/DialogInterface$OnCancelListener;

.field private h:Z

.field private i:Landroid/app/AlertDialog;

.field private j:Landroid/app/AlertDialog$Builder;

.field private k:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->b:Ljava/lang/String;

    .line 19
    const-string v0, "\ud655\uc778"

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->c:Ljava/lang/String;

    .line 20
    const-string v0, "\ucde8\uc18c"

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->d:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/d/a;->h:Z

    .line 25
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    .line 26
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    .line 31
    new-instance v0, Lnet/daum/adam/publisher/impl/d/a$1;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/d/a$1;-><init>(Lnet/daum/adam/publisher/impl/d/a;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a;->b:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/d/a;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    iput-object p3, p0, Lnet/daum/adam/publisher/impl/d/a;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    iput-object p4, p0, Lnet/daum/adam/publisher/impl/d/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    .line 87
    iput-boolean p5, p0, Lnet/daum/adam/publisher/impl/d/a;->h:Z

    .line 88
    return-void
.end method

.method public static a()Lnet/daum/adam/publisher/impl/d/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-static {v1, v1, v1, v1, v0}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    sput-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    .line 46
    :cond_0
    sget-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lnet/daum/adam/publisher/impl/d/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x1

    invoke-static {v1, v1, v1, v1, v0}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Lnet/daum/adam/publisher/impl/d/a;
    .locals 6

    .prologue
    .line 67
    sget-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lnet/daum/adam/publisher/impl/d/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/daum/adam/publisher/impl/d/a;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)V

    sput-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    .line 70
    :cond_0
    sget-object v0, Lnet/daum/adam/publisher/impl/d/a;->a:Lnet/daum/adam/publisher/impl/d/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lnet/daum/adam/publisher/impl/d/a;
    .locals 3

    .prologue
    .line 113
    .line 116
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 118
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    .line 123
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    .line 125
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 129
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/d/a;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    :goto_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->f:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/d/a;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    :goto_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lnet/daum/adam/publisher/impl/d/a;->h:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    .line 152
    return-object p0

    .line 120
    :cond_3
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    const-string v1, "\ud655\uc778"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/d/a;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 142
    :cond_5
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->j:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lnet/daum/adam/publisher/impl/d/a$2;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/d/a$2;-><init>(Lnet/daum/adam/publisher/impl/d/a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lnet/daum/adam/publisher/impl/d/a;
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    .line 198
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/d/a;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a;->b:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;
    .locals 2

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string p1, "\ud655\uc778"

    :cond_1
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a;->c:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/d/a;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    return-object p0
.end method

.method public a(Z)Lnet/daum/adam/publisher/impl/d/a;
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lnet/daum/adam/publisher/impl/d/a;->h:Z

    .line 209
    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;
    .locals 2

    .prologue
    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string p1, "\ucde8\uc18c"

    :cond_1
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a;->d:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/d/a;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 96
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    .line 98
    :cond_0
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->b:Ljava/lang/String;

    .line 99
    const-string v0, "\ud655\uc778"

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->c:Ljava/lang/String;

    .line 100
    const-string v0, "\ucde8\uc18c"

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->d:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/d/a;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/d/a;->h:Z

    .line 104
    return-void
.end method

.method public c()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/d/a;->i:Landroid/app/AlertDialog;

    return-object v0
.end method
