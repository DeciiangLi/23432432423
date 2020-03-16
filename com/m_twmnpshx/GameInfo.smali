.class public Lcom/m_twmnpshx/GameInfo;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field public static b:Ljava/util/Map;

.field private static w:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Thread;

.field public c:Ldv;

.field public d:Ljava/lang/String;

.field public e:Lcom/m_twmnpshx/GameService;

.field private f:Landroid/app/ProgressDialog;

.field private g:Ljava/util/List;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/TextView;

.field private k:Laa;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Lbv;

.field private p:Ljava/lang/String;

.field private q:Lcz;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private x:Landroid/content/ServiceConnection;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/GameInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/m_twmnpshx/GameInfo;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/m_twmnpshx/GameInfo;->a:Ljava/lang/Thread;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->q:Lcz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    iput-object v1, p0, Lcom/m_twmnpshx/GameInfo;->c:Ldv;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->d:Ljava/lang/String;

    const-string v0, "http://client.go360days.com/client.php?action=soft&soft_id="

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->s:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/m_twmnpshx/GameInfo;->t:Z

    iput-boolean v2, p0, Lcom/m_twmnpshx/GameInfo;->u:Z

    iput-boolean v2, p0, Lcom/m_twmnpshx/GameInfo;->v:Z

    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Lcom/m_twmnpshx/GameInfo;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->x:Landroid/content/ServiceConnection;

    new-instance v0, Ldo;

    invoke-direct {v0, p0}, Ldo;-><init>(Lcom/m_twmnpshx/GameInfo;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->y:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameInfo;I)I
    .locals 0

    iput p1, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    return p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameInfo;Lbv;)Lbv;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameInfo;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->q:Lcz;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameInfo;->g:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/GameInfo;->v:Z

    return p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/GameInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/GameInfo;)Laa;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->k:Laa;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/GameInfo;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/GameInfo;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/GameInfo;)Lbv;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    return-object v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/GameInfo;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    return v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/GameInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->g:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/GameInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->y:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/GameInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/GameInfo;->v:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lbv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    sput-object p2, Lcom/m_twmnpshx/GameInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v1, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/m_twmnpshx/GameInfo;->e:Lcom/m_twmnpshx/GameService;

    invoke-virtual {v1, p1}, Lcom/m_twmnpshx/GameService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, ""

    if-eq p2, v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    if-eq v1, v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v2, v1, :cond_4

    const/4 v1, 0x5

    iput v1, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    :cond_0
    :goto_0
    new-instance v1, Lcm;

    invoke-direct {v1, p0}, Lcm;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcm;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/m_twmnpshx/GameInfo;->d:Ljava/lang/String;

    :cond_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iput v2, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    sget-object v2, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->c:Ldv;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->c:Ldv;

    invoke-virtual {v0}, Ldv;->c()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->c:Ldv;

    iget-object v2, p0, Lcom/m_twmnpshx/GameInfo;->y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Ldv;->a(Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcm;->a()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/m_twmnpshx/GameInfo;->r:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcm;->a()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcm;->a()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public b()V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v0, "GameInfo"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/m_twmnpshx/GameInfo;->requestWindowFeature(I)Z

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->setContentView(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->q:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "fromtype"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "game"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lbv;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lbv;

    invoke-virtual {p0, v0, v2}, Lcom/m_twmnpshx/GameInfo;->a(Lbv;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->e:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameInfo;->x:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v6}, Lcom/m_twmnpshx/GameInfo;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "GameInfo"

    const-string v1, "init serviceBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_table"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/m_twmnpshx/GameInfo;->u:Z

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_alert"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/m_twmnpshx/GameInfo;->t:Z

    iget-boolean v1, p0, Lcom/m_twmnpshx/GameInfo;->u:Z

    if-eqz v1, :cond_2

    if-eq v0, v4, :cond_4

    new-instance v1, Lbv;

    invoke-direct {v1}, Lbv;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbv;->c(Ljava/lang/String;)V

    const-string v2, "table"

    invoke-virtual {p0, v1, v2}, Lcom/m_twmnpshx/GameInfo;->a(Lbv;Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, p0, Lcom/m_twmnpshx/GameInfo;->t:Z

    if-eqz v1, :cond_3

    if-eq v0, v4, :cond_5

    new-instance v1, Lbv;

    invoke-direct {v1}, Lbv;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbv;->c(Ljava/lang/String;)V

    const-string v0, "alert"

    invoke-virtual {p0, v1, v0}, Lcom/m_twmnpshx/GameInfo;->a(Lbv;Ljava/lang/String;)V

    :cond_3
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->j:Landroid/widget/TextView;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->l:Landroid/widget/ImageView;

    new-instance v1, Ldm;

    invoke-direct {v1, p0}, Ldm;-><init>(Lcom/m_twmnpshx/GameInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->n:Landroid/widget/ImageView;

    new-instance v1, Ldi;

    invoke-direct {v1, p0}, Ldi;-><init>(Lcom/m_twmnpshx/GameInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->g:Ljava/util/List;

    new-instance v0, Laa;

    invoke-direct {v0, p0, p0}, Laa;-><init>(Lcom/m_twmnpshx/GameInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->k:Laa;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/m_twmnpshx/GameInfo;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/m_twmnpshx/GameInfo;->k:Laa;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    new-instance v1, Ldg;

    invoke-direct {v1, p0}, Ldg;-><init>(Lcom/m_twmnpshx/GameInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->b()V

    :goto_1
    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/Myhall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->finish()V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/Myhall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->finish()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->m:Landroid/widget/TextView;

    const-string v1, "\u8f6f\u4ef6\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->e:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->x:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameInfo;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 2

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    invoke-virtual {v0}, Lbv;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/m_twmnpshx/GameInfo;->o:Lbv;

    invoke-virtual {v1}, Lbv;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/m_twmnpshx/GameInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void

    :cond_1
    iget v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/m_twmnpshx/GameInfo;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->h:Landroid/widget/Button;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "GameInfo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "GameInfoHandler"

    const-string v1, "begin HttpRequest connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/GameInfo;->q:Lcz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/m_twmnpshx/GameInfo;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x3eb

    sget-object v4, Lcom/m_twmnpshx/GameInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcz;->a(Ljava/lang/String;ZILjava/lang/String;)V

    const-string v0, "GameInfoHandler"

    const-string v1, "end HttpRequest connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/GameInfo;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
