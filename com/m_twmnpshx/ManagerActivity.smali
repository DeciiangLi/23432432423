.class public Lcom/m_twmnpshx/ManagerActivity;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:Landroid/widget/TextView;

.field d:Ljava/lang/Thread;

.field e:Lbr;

.field f:Lcm;

.field g:Ldv;

.field public h:Lcom/m_twmnpshx/GameService;

.field private i:Landroid/app/ProgressDialog;

.field private j:Ljava/util/List;

.field private k:Ljava/util/HashMap;

.field private l:Ldq;

.field private m:Landroid/widget/ListView;

.field private n:Lds;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/widget/TabHost;

.field private q:I

.field private r:Ljava/lang/String;

.field private final s:I

.field private final t:I

.field private u:Lcz;

.field private v:Landroid/content/ServiceConnection;

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->j:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/m_twmnpshx/ManagerActivity;->b:I

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->d:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->e:Lbr;

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    const/4 v0, 0x1

    iput v0, p0, Lcom/m_twmnpshx/ManagerActivity;->q:I

    const-string v0, "ManagerActivity"

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/m_twmnpshx/ManagerActivity;->s:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/m_twmnpshx/ManagerActivity;->t:I

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->g:Ldv;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->u:Lcz;

    new-instance v0, Lab;

    invoke-direct {v0, p0}, Lab;-><init>(Lcom/m_twmnpshx/ManagerActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->v:Landroid/content/ServiceConnection;

    new-instance v0, Lad;

    invoke-direct {v0, p0}, Lad;-><init>(Lcom/m_twmnpshx/ManagerActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->w:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/ManagerActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u9879"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f080000

    new-instance v2, Laf;

    invoke-direct {v2, p0, p2}, Laf;-><init>(Lcom/m_twmnpshx/ManagerActivity;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8be6\u7ec6\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u540d\u79f0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u5305\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u7248\u672c\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/ManagerActivity;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/ManagerActivity;->a(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcm;

    invoke-direct {v1, p0}, Lcm;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Lcm;->d(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcm;->a()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcm;->a()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcm;->a()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/ManagerActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/ManagerActivity;->a(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/ManagerActivity;)Ldq;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->l:Ldq;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/ManagerActivity;)Lds;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->n:Lds;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/ManagerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/ManagerActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/ManagerActivity;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/ManagerActivity;->q:I

    return v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/ManagerActivity;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->u:Lcz;

    return-object v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/ManagerActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/ManagerActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/ManagerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->w:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->i:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/m_twmnpshx/ManagerActivity;->q:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->e:Lbr;

    if-nez v0, :cond_0

    new-instance v0, Lbr;

    invoke-direct {v0, p0}, Lbr;-><init>(Lcom/m_twmnpshx/ManagerActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->e:Lbr;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->e:Lbr;

    invoke-virtual {v0}, Lbr;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->e:Lbr;

    invoke-virtual {v0}, Lbr;->run()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->d:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 13

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    const-string v1, "enter readDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcm;

    invoke-direct {v0, p0}, Lcm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcm;->f(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "soft_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "completed"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "total"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "filepath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lbv;

    invoke-direct {v11}, Lbv;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lbv;->c(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lbv;->h(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lbv;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Lbv;->d(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lbv;->m(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lbv;->a(I)V

    invoke-virtual {v11, v9}, Lbv;->b(I)V

    invoke-virtual {v11, v10}, Lbv;->c(I)V

    invoke-virtual {v11, v0}, Lbv;->n(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    invoke-virtual {v0, v11}, Lag;->a(Lbv;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lag;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lag;->a(I)V

    iget-object v4, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcm;->f(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "soft_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "completed"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "total"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "filepath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lbv;

    invoke-direct {v11}, Lbv;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lbv;->c(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lbv;->h(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lbv;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Lbv;->d(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lbv;->m(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lbv;->a(I)V

    invoke-virtual {v11, v9}, Lbv;->b(I)V

    invoke-virtual {v11, v10}, Lbv;->c(I)V

    invoke-virtual {v11, v0}, Lbv;->n(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    invoke-virtual {v0, v11}, Lag;->a(Lbv;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lag;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lag;->a(I)V

    iget-object v4, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    invoke-virtual {v1}, Lcm;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    :cond_4
    throw v0

    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm;->f(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    move v9, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "soft_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "icon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v6, "completed"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "total"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v11, "filepath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lbv;

    invoke-direct {v11}, Lbv;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lbv;->c(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lbv;->h(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lbv;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lbv;->d(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lbv;->m(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lbv;->a(I)V

    invoke-virtual {v11, v6}, Lbv;->b(I)V

    invoke-virtual {v11, v7}, Lbv;->c(I)V

    invoke-virtual {v11, v0}, Lbv;->n(Ljava/lang/String;)V

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v6, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldv;->a()V

    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v0, -0x1

    if-eq v1, v0, :cond_9

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->h:Lcom/m_twmnpshx/GameService;

    iget-object v6, p0, Lcom/m_twmnpshx/ManagerActivity;->w:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/m_twmnpshx/GameService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)Ldv;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v2, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDB ----- status == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lag;

    invoke-direct {v2}, Lag;-><init>()V

    invoke-virtual {v2, v11}, Lag;->a(Lbv;)V

    invoke-virtual {v2, v0}, Lag;->a(Ldv;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lag;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lag;->a(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_9
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v1

    :cond_a
    sget-object v0, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldv;

    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-object v4, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v1, :cond_b

    if-nez v4, :cond_b

    :try_start_10
    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->w:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Ldv;->a(Landroid/os/Handler;)V

    invoke-virtual {v1}, Ldv;->e()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "app_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "completed"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "total"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "soft_id"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v9, Lbv;

    invoke-direct {v9}, Lbv;-><init>()V

    invoke-virtual {v9, v4}, Lbv;->a(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lbv;->h(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lbv;->d(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lbv;->b(I)V

    invoke-virtual {v9, v8}, Lbv;->c(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lbv;->c(Ljava/lang/String;)V

    new-instance v3, Lag;

    invoke-direct {v3}, Lag;-><init>()V

    invoke-virtual {v3, v1}, Lag;->a(Ldv;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lag;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lag;->a(I)V

    invoke-virtual {v3, v9}, Lag;->a(Lbv;)V

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    iget-object v4, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_6
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v0

    :cond_c
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm;->f(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "soft_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    iget-object v4, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-eqz v4, :cond_d

    :try_start_18
    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :try_start_19
    iget-object v4, p0, Lcom/m_twmnpshx/ManagerActivity;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :catchall_7
    move-exception v0

    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :catchall_8
    move-exception v0

    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :try_start_1e
    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :cond_e
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->f:Lcm;

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    move v2, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    move v3, v6

    :goto_1
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->a()V

    return-void

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f0a0032

    const v3, 0x7f03000c

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    const-string v1, "ManagerActivity::OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    iget-object v2, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v3, 0x7f0a0025

    invoke-virtual {v0, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    iget v1, p0, Lcom/m_twmnpshx/ManagerActivity;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->p:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->h:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/ManagerActivity;->v:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/ManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ldq;

    invoke-direct {v0, p0, p0}, Ldq;-><init>(Lcom/m_twmnpshx/ManagerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->l:Ldq;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/ManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->l:Ldq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    new-instance v0, Lds;

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lds;-><init>(Lcom/m_twmnpshx/ManagerActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->n:Lds;

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/ManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->n:Lds;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->a()V

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/ManagerActivity;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->h:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->v:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    const-string v1, "ManagerActivity onItemClick....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagerActivity:lv_1 onItemClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->o:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagerActivity:lv_2 onItemClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, p0, v0}, Lcom/m_twmnpshx/ManagerActivity;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->b()V

    invoke-super {p0}, Landroid/app/TabActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->b()V

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/ManagerActivity;->b:I

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/ManagerActivity;->q:I

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged: tabid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->a()V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    :cond_0
    :goto_0
    move v2, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m_twmnpshx/ManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_4

    move v3, v6

    :goto_3
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/m_twmnpshx/ManagerActivity;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_6

    move v3, v6

    goto :goto_3

    :cond_5
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/ManagerActivity;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    move v3, v5

    goto :goto_3
.end method
