.class public Lcom/m_twmnpshx/image/ImageTestActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static C:Lcom/m_twmnpshx/image/ImageTestActivity;

.field public static a:I

.field public static b:I

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private A:Ldy;

.field private B:Lcz;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ProgressBar;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/app/ProgressDialog;

.field private H:Z

.field private I:Landroid/content/ServiceConnection;

.field private J:Landroid/os/Handler;

.field public c:Lcom/m_twmnpshx/GameService;

.field public d:I

.field public e:Z

.field f:I

.field public g:Ljava/lang/Runnable;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ldp;

.field private k:Ljava/util/List;

.field private l:[Z

.field private m:Lcd;

.field private n:Lcg;

.field private o:Lcom/m_twmnpshx/image/DetialGallery;

.field private p:Z

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e0

    sput v0, Lcom/m_twmnpshx/image/ImageTestActivity;->a:I

    const/16 v0, 0x320

    sput v0, Lcom/m_twmnpshx/image/ImageTestActivity;->b:I

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->x:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->z:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->C:Lcom/m_twmnpshx/image/ImageTestActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "http://client.go360days.com/picnew.php?id=294"

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->h:Ljava/lang/String;

    const-string v0, "http://client.go360days.com/request/update.do"

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->i:Ljava/lang/String;

    iput v1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->q:I

    iput v2, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->r:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->s:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->t:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->u:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->v:I

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->w:Ljava/lang/String;

    iput-object v3, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->A:Ldy;

    iput-object v3, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->B:Lcz;

    iput v2, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->d:I

    iput-boolean v1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->e:Z

    iput-boolean v1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->H:Z

    new-instance v0, Lal;

    invoke-direct {v0, p0}, Lal;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->I:Landroid/content/ServiceConnection;

    new-instance v0, Laj;

    invoke-direct {v0, p0}, Laj;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->J:Landroid/os/Handler;

    const/16 v0, 0xa

    iput v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->f:I

    new-instance v0, Ldw;

    invoke-direct {v0, p0}, Ldw;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;Lcg;)Lcg;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->n:Lcg;

    return-object p1
.end method

.method public static a()Lcom/m_twmnpshx/image/ImageTestActivity;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->C:Lcom/m_twmnpshx/image/ImageTestActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m_twmnpshx/image/ImageTestActivity;

    invoke-direct {v0}, Lcom/m_twmnpshx/image/ImageTestActivity;-><init>()V

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->C:Lcom/m_twmnpshx/image/ImageTestActivity;

    :cond_0
    sget-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->C:Lcom/m_twmnpshx/image/ImageTestActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;Lcz;)Lcz;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->B:Lcz;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;Ldp;)Ldp;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->j:Ldp;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8b66\u544a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u8f6f\u4ef6\u91cd\u8981\u5347\u7ea7\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lai;

    invoke-direct {v2, p0}, Lai;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/image/ImageTestActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/image/ImageTestActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/image/ImageTestActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ImageTestActivity;[Z)[Z
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->l:[Z

    return-object p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/image/ImageTestActivity;)Ldp;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->j:Ldp;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/image/ImageTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/image/ImageTestActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->p:Z

    return p1
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/image/ImageTestActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->H:Z

    return p1
.end method

.method public static synthetic c(Lcom/m_twmnpshx/image/ImageTestActivity;)[Z
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->l:[Z

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/image/ImageTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->i()V

    return-void
.end method

.method public static synthetic e(Lcom/m_twmnpshx/image/ImageTestActivity;)Lcg;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->n:Lcg;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/m_twmnpshx/image/DetialGallery;->setVisibility(I)V

    return-void
.end method

.method public static synthetic f(Lcom/m_twmnpshx/image/ImageTestActivity;)Lcom/m_twmnpshx/image/DetialGallery;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw;

    invoke-direct {v1, p0}, Lw;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic g(Lcom/m_twmnpshx/image/ImageTestActivity;)Lcd;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->m:Lcd;

    return-object v0
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->e:Z

    iput-boolean v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->H:Z

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->G:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->G:Landroid/app/ProgressDialog;

    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/image/ImageTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->G:Landroid/app/ProgressDialog;

    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/image/ImageTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw;

    invoke-direct {v1, p0}, Lw;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->G:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private h()V
    .locals 1

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->E:Landroid/widget/ProgressBar;

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/m_twmnpshx/image/DetialGallery;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    return-void
.end method

.method public static synthetic h(Lcom/m_twmnpshx/image/ImageTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->f()V

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v4, 0x6

    const-string v0, "Item ID"

    const-string v1, "show ad right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->m:Lcd;

    if-eqz v0, :cond_0

    const-string v0, "Item ID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    invoke-virtual {v2}, Lcom/m_twmnpshx/image/DetialGallery;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    invoke-virtual {v0}, Lcom/m_twmnpshx/image/DetialGallery;->getCount()I

    move-result v0

    iget v1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->f:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    invoke-virtual {v0}, Lcom/m_twmnpshx/image/DetialGallery;->getSelectedItemId()J

    move-result-wide v0

    iget v2, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->f:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->m:Lcd;

    invoke-virtual {v0, v4}, Lcd;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    invoke-virtual {v0}, Lcom/m_twmnpshx/image/DetialGallery;->getSelectedItemId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->o:Lcom/m_twmnpshx/image/DetialGallery;

    invoke-virtual {v2}, Lcom/m_twmnpshx/image/DetialGallery;->getCount()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->m:Lcd;

    invoke-virtual {v0, v4}, Lcd;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/image/ImageTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->g()V

    return-void
.end method

.method public static synthetic j(Lcom/m_twmnpshx/image/ImageTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->e()V

    return-void
.end method

.method public static synthetic k(Lcom/m_twmnpshx/image/ImageTestActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->H:Z

    return v0
.end method

.method public static synthetic l(Lcom/m_twmnpshx/image/ImageTestActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic m(Lcom/m_twmnpshx/image/ImageTestActivity;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->B:Lcz;

    return-object v0
.end method

.method public static synthetic n(Lcom/m_twmnpshx/image/ImageTestActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic o(Lcom/m_twmnpshx/image/ImageTestActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->J:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic p(Lcom/m_twmnpshx/image/ImageTestActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic q(Lcom/m_twmnpshx/image/ImageTestActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->p:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/m_twmnpshx/image/ImageTestActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->setContentView(I)V

    sput-object p0, Lcom/m_twmnpshx/image/ImageTestActivity;->C:Lcom/m_twmnpshx/image/ImageTestActivity;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/m_twmnpshx/image/ImageTestActivity;->a:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/m_twmnpshx/image/ImageTestActivity;->b:I

    :try_start_0
    invoke-virtual {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->x:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/m_twmnpshx/image/ImageTestActivity;->x:Ljava/lang/String;

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/m_twmnpshx/image/ImageTestActivity;->x:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service_channel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/image/ImageTestActivity;->z:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->c:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/m_twmnpshx/image/ImageTestActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ImageTestActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->I:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/m_twmnpshx/image/ImageTestActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->G:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->h()V

    new-instance v0, Lcd;

    invoke-direct {v0, p0}, Lcd;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->m:Lcd;

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ImageTestActivity;->f()V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->A:Ldy;

    if-nez v0, :cond_1

    new-instance v0, Ldy;

    invoke-direct {v0, p0}, Ldy;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->A:Ldy;

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->A:Ldy;

    invoke-virtual {v0}, Ldy;->start()V

    :cond_1
    const-string v0, "\u957f\u70b9\u51fb\u56fe\u7247\uff0c\u53ef\u8bbe\u7f6e\u5899\u7eb8\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->c:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/image/ImageTestActivity;->I:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ImageTestActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070021

    new-instance v3, Lea;

    invoke-direct {v3, p0, v0}, Lea;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070020

    new-instance v2, Ldz;

    invoke-direct {v2, p0}, Ldz;-><init>(Lcom/m_twmnpshx/image/ImageTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
