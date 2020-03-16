.class public Lcom/m_twmnpshx/SearchActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static v:I


# instance fields
.field private A:Landroid/content/ServiceConnection;

.field private B:Landroid/os/Handler;

.field protected a:Ljava/util/HashMap;

.field protected b:Ljava/util/HashMap;

.field public c:Landroid/widget/LinearLayout;

.field d:Ljava/lang/Thread;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/m_twmnpshx/GameService;

.field h:Lcm;

.field private i:Landroid/app/ProgressDialog;

.field private j:Landroid/widget/ProgressBar;

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/ImageButton;

.field private o:Lby;

.field private p:Landroid/widget/ListView;

.field private q:Lao;

.field private r:Landroid/widget/GridView;

.field private s:Landroid/widget/TextView;

.field private t:Lcz;

.field private u:I

.field private w:I

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/m_twmnpshx/SearchActivity;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->b:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->k:Ljava/util/List;

    iput-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->t:Lcz;

    const/16 v0, 0xf

    iput v0, p0, Lcom/m_twmnpshx/SearchActivity;->u:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/m_twmnpshx/SearchActivity;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m_twmnpshx/SearchActivity;->x:Z

    iput-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->d:Ljava/lang/Thread;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->f:Ljava/lang/String;

    const-string v0, "MYHALL"

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->y:Ljava/lang/String;

    const-string v0, "http://client.go360days.com/client.php?action=softlist&type=search&word="

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->z:Ljava/lang/String;

    new-instance v0, Lr;

    invoke-direct {v0, p0}, Lr;-><init>(Lcom/m_twmnpshx/SearchActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->A:Landroid/content/ServiceConnection;

    new-instance v0, Lp;

    invoke-direct {v0, p0}, Lp;-><init>(Lcom/m_twmnpshx/SearchActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->B:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/SearchActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/SearchActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/SearchActivity;->x:Z

    return p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/SearchActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/m_twmnpshx/SearchActivity;->v:I

    return-void
.end method

.method public static synthetic c(Lcom/m_twmnpshx/SearchActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->r:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/SearchActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/SearchActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->i:Landroid/app/ProgressDialog;

    const-string v0, "GameService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/m_twmnpshx/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keyword"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    if-eq v0, v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v4

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u6124\u6012\u7684\u5c0f\u9e1f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u6c34\u679c\u5fcd\u8005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "QQ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u5fae\u4fe1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u5b89\u5168"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u5929\u6c14"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u50f5\u5c38"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    const-string v1, "\u98de\u4fe1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public static synthetic f(Lcom/m_twmnpshx/SearchActivity;)Lao;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->q:Lao;

    return-object v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/SearchActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/SearchActivity;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->t:Lcz;

    return-object v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/SearchActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/SearchActivity;)Lby;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->o:Lby;

    return-object v0
.end method

.method public static synthetic k(Lcom/m_twmnpshx/SearchActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/SearchActivity;->w:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->b:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_1
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

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

    iput p1, p0, Lcom/m_twmnpshx/SearchActivity;->w:I

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->i:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->d:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->g:Lcom/m_twmnpshx/GameService;

    invoke-virtual {v0}, Lcom/m_twmnpshx/GameService;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/m_twmnpshx/SearchActivity;->b:Ljava/util/HashMap;

    const-string v4, "package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "version_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 8

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcm;

    invoke-direct {v0, p0}, Lcm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcm;->f(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/m_twmnpshx/SearchActivity;->a:Ljava/util/HashMap;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    :cond_1
    :goto_2
    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    invoke-virtual {v2}, Lcm;->a()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->h:Lcm;

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->t:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->g:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->y:Ljava/lang/String;

    const-string v1, "onCreate, init serviceBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->A:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->j:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->j:Landroid/widget/ProgressBar;

    const/16 v2, 0xf

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->n:Landroid/widget/ImageButton;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->l:Ljava/util/List;

    new-instance v0, Lao;

    invoke-direct {v0, p0, p0}, Lao;-><init>(Lcom/m_twmnpshx/SearchActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->q:Lao;

    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->r:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->r:Landroid/widget/GridView;

    new-instance v1, Ln;

    invoke-direct {v1, p0}, Ln;-><init>(Lcom/m_twmnpshx/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->r:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->q:Lao;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v4}, Lcom/m_twmnpshx/SearchActivity;->a(I)V

    invoke-static {v3}, Lcom/m_twmnpshx/SearchActivity;->b(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->k:Ljava/util/List;

    new-instance v0, Lby;

    invoke-direct {v0, p0, p0}, Lby;-><init>(Lcom/m_twmnpshx/SearchActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->o:Lby;

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->o:Lby;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lm;

    invoke-direct {v1, p0}, Lm;-><init>(Lcom/m_twmnpshx/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lay;

    invoke-direct {v0, p0}, Lay;-><init>(Lcom/m_twmnpshx/SearchActivity;)V

    invoke-virtual {v0}, Lay;->start()V

    new-instance v0, Ldk;

    invoke-direct {v0, p0}, Ldk;-><init>(Lcom/m_twmnpshx/SearchActivity;)V

    invoke-virtual {v0}, Ldk;->start()V

    invoke-direct {p0}, Lcom/m_twmnpshx/SearchActivity;->e()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->g:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->A:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->k:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbv;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/m_twmnpshx/GameInfo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "game"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "fromtype"

    const-string v2, "hall"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/SearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->o:Lby;

    invoke-virtual {v0}, Lby;->getCount()I

    move-result v0

    sget v1, Lcom/m_twmnpshx/SearchActivity;->v:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/m_twmnpshx/SearchActivity;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/SearchActivity;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/SearchActivity;->a(I)V

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/m_twmnpshx/SearchActivity;->v:I

    iget v3, p0, Lcom/m_twmnpshx/SearchActivity;->u:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    sget v2, Lcom/m_twmnpshx/SearchActivity;->v:I

    iget v3, p0, Lcom/m_twmnpshx/SearchActivity;->u:I

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
    sget v2, Lcom/m_twmnpshx/SearchActivity;->v:I

    iget v3, p0, Lcom/m_twmnpshx/SearchActivity;->u:I

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
    .locals 0

    if-nez p2, :cond_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/m_twmnpshx/SearchActivity;->x:Z

    iget-object v0, p0, Lcom/m_twmnpshx/SearchActivity;->t:Lcz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/SearchActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/SearchActivity;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/SearchActivity;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3ea

    const-string v4, "hall"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcz;->a(Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/SearchActivity;->B:Landroid/os/Handler;

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
