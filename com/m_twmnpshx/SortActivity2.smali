.class public Lcom/m_twmnpshx/SortActivity2;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static J:I


# instance fields
.field private A:Landroid/widget/TabHost;

.field private B:I

.field private C:Lcf;

.field private D:Lct;

.field private E:Lch;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:I

.field private I:I

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:I

.field private N:Landroid/view/View;

.field private O:Landroid/content/ServiceConnection;

.field protected a:Ljava/util/HashMap;

.field protected b:Ljava/util/HashMap;

.field c:Z

.field public d:Landroid/widget/LinearLayout;

.field e:Ljava/lang/Thread;

.field public f:Lcom/m_twmnpshx/GameService;

.field public g:Z

.field public h:Landroid/os/Handler;

.field i:Lcm;

.field private j:Landroid/app/ProgressDialog;

.field private k:Landroid/widget/ProgressBar;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/HashMap;

.field private p:Ljava/util/Map;

.field private q:Z

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/RadioGroup;

.field private u:Lcz;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/GridView;

.field private x:Landroid/widget/GridView;

.field private y:Landroid/widget/ListView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/m_twmnpshx/SortActivity2;->J:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->b:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->l:Ljava/util/List;

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->m:Ljava/util/List;

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->n:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->p:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/m_twmnpshx/SortActivity2;->q:Z

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->u:Lcz;

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->z:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/m_twmnpshx/SortActivity2;->c:Z

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    iput v2, p0, Lcom/m_twmnpshx/SortActivity2;->B:I

    const-string v0, "http://client.go360days.com/client.php?action=softlist"

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->F:Ljava/lang/String;

    iput v2, p0, Lcom/m_twmnpshx/SortActivity2;->G:I

    iput v3, p0, Lcom/m_twmnpshx/SortActivity2;->H:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/m_twmnpshx/SortActivity2;->I:I

    iput-boolean v2, p0, Lcom/m_twmnpshx/SortActivity2;->K:Z

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->e:Ljava/lang/Thread;

    const-string v0, "SortActivity2"

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->L:Ljava/lang/String;

    iput v2, p0, Lcom/m_twmnpshx/SortActivity2;->M:I

    iput-boolean v3, p0, Lcom/m_twmnpshx/SortActivity2;->g:Z

    new-instance v0, Lcr;

    invoke-direct {v0, p0}, Lcr;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->O:Landroid/content/ServiceConnection;

    new-instance v0, Lcs;

    invoke-direct {v0, p0}, Lcs;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->h:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/SortActivity2;I)I
    .locals 0

    iput p1, p0, Lcom/m_twmnpshx/SortActivity2;->B:I

    return p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/SortActivity2;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->L:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/SortActivity2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/SortActivity2;->K:Z

    return p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/SortActivity2;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->u:Lcz;

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/m_twmnpshx/SortActivity2;->J:I

    return-void
.end method

.method public static synthetic c(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/SortActivity2;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->l:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/SortActivity2;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->m:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/SortActivity2;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->n:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->w:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->x:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->t:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->v:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic k(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic l(Lcom/m_twmnpshx/SortActivity2;)Lcf;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->C:Lcf;

    return-object v0
.end method

.method public static synthetic m(Lcom/m_twmnpshx/SortActivity2;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->M:I

    return v0
.end method

.method public static synthetic n(Lcom/m_twmnpshx/SortActivity2;)Lct;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->D:Lct;

    return-object v0
.end method

.method public static synthetic o(Lcom/m_twmnpshx/SortActivity2;)Lch;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->E:Lch;

    return-object v0
.end method

.method public static synthetic p(Lcom/m_twmnpshx/SortActivity2;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic q(Lcom/m_twmnpshx/SortActivity2;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    return-object v0
.end method

.method public static synthetic r(Lcom/m_twmnpshx/SortActivity2;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic s(Lcom/m_twmnpshx/SortActivity2;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->p:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic t(Lcom/m_twmnpshx/SortActivity2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/SortActivity2;->q:Z

    return v0
.end method

.method public static synthetic u(Lcom/m_twmnpshx/SortActivity2;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->N:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->G:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->b:Ljava/util/HashMap;

    monitor-enter v2

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v3, ""

    if-eq p2, v3, :cond_2

    if-eqz v0, :cond_2

    const-string v3, ""

    if-eq v0, v3, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_1

    const/4 v0, 0x5

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_1
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/m_twmnpshx/SortActivity2;->H:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/SortActivity2;->G:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->H:I

    return v0
.end method

.method public c()V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->j:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->e:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->f:Lcom/m_twmnpshx/GameService;

    invoke-virtual {v0}, Lcom/m_twmnpshx/GameService;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/m_twmnpshx/SortActivity2;->b:Ljava/util/HashMap;

    const-string v4, "package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "version_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcm;

    invoke-direct {v0, p0}, Lcm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcm;->f(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/m_twmnpshx/SortActivity2;->a:Ljava/util/HashMap;

    const-string v4, "package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    iput-object v8, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    iput-object v8, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    goto :goto_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    invoke-virtual {v1}, Lcm;->a()V

    iput-object v8, p0, Lcom/m_twmnpshx/SortActivity2;->i:Lcm;

    :cond_3
    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x11

    const v6, 0x7f0a004f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->u:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->f:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->O:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->L:Ljava/lang/String;

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->N:Landroid/view/View;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->A:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->t:Landroid/widget/RadioGroup;

    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->B:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->t:Landroid/widget/RadioGroup;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->t:Landroid/widget/RadioGroup;

    new-instance v1, Lcx;

    invoke-direct {v1, p0}, Lcx;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->t:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nextclassid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nextclassid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nextclassid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->k:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->k:Landroid/widget/ProgressBar;

    const/16 v2, 0xf

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->z:Landroid/widget/TextView;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->r:Landroid/widget/ImageView;

    new-instance v1, Lcy;

    invoke-direct {v1, p0}, Lcy;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->s:Landroid/widget/ImageView;

    new-instance v1, Lcu;

    invoke-direct {v1, p0}, Lcu;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->v:Landroid/widget/Button;

    new-instance v1, Lcw;

    invoke-direct {v1, p0}, Lcw;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->l:Ljava/util/List;

    new-instance v0, Lcf;

    invoke-direct {v0, p0, p0}, Lcf;-><init>(Lcom/m_twmnpshx/SortActivity2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->C:Lcf;

    invoke-virtual {p0, v6}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->C:Lcf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->m:Ljava/util/List;

    new-instance v0, Lct;

    invoke-direct {v0, p0, p0}, Lct;-><init>(Lcom/m_twmnpshx/SortActivity2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->D:Lct;

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->w:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->w:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->D:Lct;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->w:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->w:Landroid/widget/GridView;

    new-instance v1, Ldj;

    invoke-direct {v1, p0}, Ldj;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->n:Ljava/util/List;

    new-instance v0, Lch;

    invoke-direct {v0, p0, p0}, Lch;-><init>(Lcom/m_twmnpshx/SortActivity2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->E:Lch;

    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->x:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->x:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->E:Lch;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->x:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->x:Landroid/widget/GridView;

    new-instance v1, Ldh;

    invoke-direct {v1, p0}, Ldh;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lc;

    invoke-direct {v0, p0}, Lc;-><init>(Lcom/m_twmnpshx/SortActivity2;)V

    invoke-virtual {v0}, Lc;->start()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->c()V

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->L:Ljava/lang/String;

    const-string v1, "onCreat finish."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->B:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->t:Landroid/widget/RadioGroup;

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->f:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->O:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SortActivity onItemClick = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->l:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lbv;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameInfo;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "game"

    move-object v0, v2

    check-cast v0, Lbv;

    move-object v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "fromtype"

    const-string v4, "hall"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    check-cast v2, Lbv;

    invoke-virtual {v2}, Lbv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/m_twmnpshx/SortActivity2;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->C:Lcf;

    invoke-virtual {v0}, Lcf;->getCount()I

    move-result v0

    sget v1, Lcom/m_twmnpshx/SortActivity2;->J:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/m_twmnpshx/SortActivity2;->K:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SortActivity2;->a(I)V

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/m_twmnpshx/SortActivity2;->J:I

    iget v3, p0, Lcom/m_twmnpshx/SortActivity2;->I:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    sget v2, Lcom/m_twmnpshx/SortActivity2;->J:I

    iget v3, p0, Lcom/m_twmnpshx/SortActivity2;->I:I

    div-int/2addr v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u9875"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget v2, Lcom/m_twmnpshx/SortActivity2;->J:I

    iget v3, p0, Lcom/m_twmnpshx/SortActivity2;->I:I

    div-int/2addr v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/SortActivity2;->M:I

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/m_twmnpshx/SortActivity2;->K:Z

    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->B:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->u:Lcz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=class&class_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/SortActivity2;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&order=modifydesc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    const-string v4, "hall"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcz;->a(Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->L:Ljava/lang/String;

    const-string v1, "wait for isServiceBinded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->L:Ljava/lang/String;

    const-string v1, "got isServiceBinded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/SortActivity2;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    :cond_1
    iget v0, p0, Lcom/m_twmnpshx/SortActivity2;->B:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/SortActivity2;->u:Lcz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/m_twmnpshx/SortActivity2;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=class&class_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/SortActivity2;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/SortActivity2;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&order=down_num"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    const-string v4, "hall"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcz;->a(Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
