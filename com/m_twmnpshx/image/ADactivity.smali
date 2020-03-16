.class public Lcom/m_twmnpshx/image/ADactivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/GridView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Ldp;

.field private f:Lap;

.field private g:Lcz;

.field private h:Ljava/lang/String;

.field private final i:I

.field private j:Landroid/view/GestureDetector;

.field private k:Landroid/widget/Button;

.field private l:Z

.field private m:Ljava/lang/Runnable;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->a:Ljava/util/List;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->g:Lcz;

    const-string v0, "http://client.go360days.com/client.php?action=list&list_id=9"

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/m_twmnpshx/image/ADactivity;->i:I

    new-instance v0, Lu;

    invoke-direct {v0, p0}, Lu;-><init>(Lcom/m_twmnpshx/image/ADactivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->m:Ljava/lang/Runnable;

    new-instance v0, Lv;

    invoke-direct {v0, p0}, Lv;-><init>(Lcom/m_twmnpshx/image/ADactivity;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->n:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ADactivity;Ldp;)Ldp;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/image/ADactivity;->e:Ldp;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/image/ADactivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private a()Z
    .locals 4

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/m_twmnpshx/Myhall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/m_twmnpshx/image/ADactivity;->g:Lcz;

    invoke-virtual {v1, v0, v3}, Lcz;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/image/ADactivity;)Ldp;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->e:Ldp;

    return-object v0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->b:Landroid/widget/GridView;

    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->c:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->k:Landroid/widget/Button;

    new-instance v1, Lt;

    invoke-direct {v1, p0}, Lt;-><init>(Lcom/m_twmnpshx/image/ADactivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/m_twmnpshx/image/ADactivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/image/ADactivity;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->g:Lcz;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/image/ADactivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/image/ADactivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/image/ADactivity;->l:Z

    return v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/image/ADactivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/image/ADactivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/image/ADactivity;)Lap;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->f:Lap;

    return-object v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/image/ADactivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->b:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->setContentView(I)V

    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->setTitle(I)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->j:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ADactivity;->b()V

    invoke-direct {p0}, Lcom/m_twmnpshx/image/ADactivity;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/m_twmnpshx/image/ADactivity;->l:Z

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/image/ADactivity;->m:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lap;

    invoke-direct {v0, p0, p0}, Lap;-><init>(Lcom/m_twmnpshx/image/ADactivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->f:Lap;

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/m_twmnpshx/image/ADactivity;->f:Lap;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "Item ID"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->a:Ljava/util/List;

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

    const-string v2, "adver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/image/ADactivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ldb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

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

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/image/ADactivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/image/ADactivity;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
