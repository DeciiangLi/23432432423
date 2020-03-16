.class public Lcom/m_twmnpshx/HomeActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/GridView;

.field private f:Landroid/widget/TextView;

.field private g:Lbh;

.field private h:Lbm;

.field private i:Landroid/view/View;

.field private j:Lcz;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    const-string v0, "http://client.go360days.com/request/index.do"

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->k:Ljava/lang/String;

    const-string v0, "MYHALL"

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->l:Ljava/lang/String;

    new-instance v0, Lk;

    invoke-direct {v0, p0}, Lk;-><init>(Lcom/m_twmnpshx/HomeActivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->m:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/HomeActivity;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    return-object v0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/HomeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/HomeActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/HomeActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/HomeActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/HomeActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/HomeActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/HomeActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->i:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    iget v1, v0, Lcz;->f:I

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v4

    :goto_0
    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    iget-object v0, v0, Lcz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    iget-object v0, v0, Lcz;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    check-cast v0, Ldb;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    iget-object v0, v0, Lcz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb;

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->h:Lbm;

    invoke-virtual {v0}, Lbm;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->h:Lbm;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_2
    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->g:Lbh;

    invoke-virtual {v0}, Lbh;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f0a001b

    const/16 v5, 0x3e8

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->l:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clicked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clicked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f0a005a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeActivity::onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "clicked"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/HomeActivity;->setContentView(I)V

    invoke-virtual {p0, v6}, Lcom/m_twmnpshx/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->l:Ljava/lang/String;

    const-string v1, "HomeActivity::Oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    new-instance v0, Lbh;

    invoke-direct {v0, p0, p0}, Lbh;-><init>(Lcom/m_twmnpshx/HomeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->g:Lbh;

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->g:Lbh;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->c:Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/m_twmnpshx/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    new-instance v0, Lbm;

    invoke-direct {v0, p0, p0}, Lbm;-><init>(Lcom/m_twmnpshx/HomeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->h:Lbm;

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->h:Lbm;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->e:Landroid/widget/GridView;

    new-instance v1, Lo;

    invoke-direct {v1, p0}, Lo;-><init>(Lcom/m_twmnpshx/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "\u8bf7\u7a0d\u5019..."

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-static {p0, v0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->a:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/m_twmnpshx/Myhall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    invoke-static {v0}, La;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcz;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/HomeActivity;->a()V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeActivity onItemClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb;

    invoke-virtual {v0}, Ldb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lbv;

    invoke-direct {v1}, Lbv;-><init>()V

    invoke-virtual {v0}, Ldb;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbv;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbv;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbv;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/m_twmnpshx/GameInfo;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "game"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "fromtype"

    const-string v2, "hall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/HomeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ldb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/m_twmnpshx/Myhall;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nextclassid"

    invoke-virtual {v0}, Ldb;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "clicked"

    const v2, 0x7f0a005b

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ldb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ldb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/HomeActivity;->j:Lcz;

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->k:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    const-string v4, "hall"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcz;->a(Ljava/lang/String;ZILjava/lang/String;)V
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

    iget-object v1, p0, Lcom/m_twmnpshx/HomeActivity;->m:Landroid/os/Handler;

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
