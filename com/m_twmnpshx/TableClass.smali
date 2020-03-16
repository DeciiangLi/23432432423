.class public Lcom/m_twmnpshx/TableClass;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/Runnable;

.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/util/List;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/TextView;

.field private f:Ldx;

.field private g:Lcz;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Handler;

.field private k:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->g:Lcz;

    const/4 v0, 0x0

    iput v0, p0, Lcom/m_twmnpshx/TableClass;->h:I

    const-string v0, "http://client.go360days.com/report/open_table.do"

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->i:Ljava/lang/String;

    new-instance v0, Lae;

    invoke-direct {v0, p0}, Lae;-><init>(Lcom/m_twmnpshx/TableClass;)V

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->j:Landroid/os/Handler;

    new-instance v0, Lah;

    invoke-direct {v0, p0}, Lah;-><init>(Lcom/m_twmnpshx/TableClass;)V

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->a:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->k:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/TableClass;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 9

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ldd;

    invoke-direct {v2, p0}, Ldd;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/m_twmnpshx/TableClass;->h:I

    invoke-virtual {v2, v0}, Ldd;->c(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    new-instance v6, Lbv;

    invoke-direct {v6}, Lbv;-><init>()V

    const/4 v0, 0x1

    aget-object v0, v5, v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aget-object v0, v5, v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x3

    aget-object v0, v5, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aget-object v0, v5, v0

    const-string v7, ""

    if-eq v0, v7, :cond_1

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/TableClass;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Lbv;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lbv;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->c(Ljava/lang/String;)V

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->h(Ljava/lang/String;)V

    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->g(Ljava/lang/String;)V

    const/4 v0, 0x5

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lbv;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ldd;->a()V

    :cond_3
    :goto_3
    monitor-exit v1

    return-void

    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ldd;->a()V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_4
    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ldd;->a()V

    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static synthetic b(Lcom/m_twmnpshx/TableClass;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/TableClass;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->d:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/TableClass;)Ldx;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->f:Ldx;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/TableClass;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/TableClass;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/TableClass;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->g:Lcz;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lcom/m_twmnpshx/TableClass;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m_twmnpshx/TableClass;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "TableClass"

    const-string v1, "oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/TableClass;->setContentView(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->g:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/TableClass;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "folder_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/TableClass;->h:I

    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/TableClass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->e:Landroid/widget/TextView;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    new-instance v0, Ldx;

    invoke-direct {v0, p0, p0}, Ldx;-><init>(Lcom/m_twmnpshx/TableClass;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->f:Ldx;

    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/TableClass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->d:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->d:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->d:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->f:Ldx;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/TableClass;->b:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/m_twmnpshx/TableClass;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbv;

    invoke-virtual {p0}, Lcom/m_twmnpshx/TableClass;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lbv;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/m_twmnpshx/TableClass;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lbv;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/TableClass;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/m_twmnpshx/TableClass;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "detail_flag"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TableClass"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detail_flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v1, Lcom/m_twmnpshx/GameInfo;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f070018

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Lj;

    const-string v2, "table"

    invoke-direct {v1, p0, v2}, Lj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, v5}, Lj;->a(IZ)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lbv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const v0, 0x7f070017

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/m_twmnpshx/GameInfo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "game"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "fromtype"

    const-string v2, "table"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/TableClass;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/m_twmnpshx/TableClass;->a()V
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

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/m_twmnpshx/TableClass;->j:Landroid/os/Handler;

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
