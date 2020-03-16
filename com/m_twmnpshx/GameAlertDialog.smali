.class public Lcom/m_twmnpshx/GameAlertDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Ljava/util/Timer;

.field b:Ljava/util/TimerTask;

.field private c:Landroid/widget/TextView;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->c:Landroid/widget/TextView;

    const-string v0, "GameService"

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->d:Ljava/lang/String;

    const/16 v0, 0x77d

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->a:Ljava/util/Timer;

    new-instance v0, Lbn;

    invoke-direct {v0, p0}, Lbn;-><init>(Lcom/m_twmnpshx/GameAlertDialog;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->b:Ljava/util/TimerTask;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameAlertDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/GameAlertDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->h:I

    return v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/GameAlertDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->j:I

    return v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->k:I

    return v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->l:I

    return v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    return v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/GameAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->m:I

    return v0
.end method

.method public static synthetic k(Lcom/m_twmnpshx/GameAlertDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic l(Lcom/m_twmnpshx/GameAlertDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic m(Lcom/m_twmnpshx/GameAlertDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timer canceled id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->m:I

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/m_twmnpshx/GameAlertDialog;->finish()V

    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->f:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->l:I

    if-nez v0, :cond_2

    new-instance v0, Lj;

    const-string v1, "alert"

    invoke-direct {v0, p0, v1}, Lj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lj;->a(IZ)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/m_twmnpshx/GameAlertDialog;->finish()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->l:I

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget v2, p0, Lcom/m_twmnpshx/GameAlertDialog;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "detail_flag"

    iget v2, p0, Lcom/m_twmnpshx/GameAlertDialog;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "from_alert"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/GameAlertDialog;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameAlertDialog;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_3
    invoke-virtual {p0}, Lcom/m_twmnpshx/GameAlertDialog;->finish()V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameAlertDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const-string v2, "\u5f00\u542fUSB\u8c03\u8bd5"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "btn_txt"

    const-string v2, "\u6253\u5f00\u8bbe\u7f6e\u9875"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cont"

    const-string v2, "\u672c\u5e94\u7528\u90e8\u5206\u529f\u80fd\u9700\u8981\u5f00\u542fUSB\u8c03\u8bd5\uff0c\u8bf7\u60a8\u8bbe\u7f6e"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "need_adb_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "close_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7f0a000b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a000b
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/m_twmnpshx/GameAlertDialog;->requestWindowFeature(I)Z

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "type"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->f:I

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->g:Ljava/lang/String;

    const-string v0, "soft_id"

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->h:I

    const-string v0, "btn_txt"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->i:Ljava/lang/String;

    const-string v0, "close_flag"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->j:I

    const-string v0, "alert_flag"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->k:I

    const-string v0, "detail_flag"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->l:I

    const-string v0, "need_adb_flag"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->m:I

    const-string v0, "version_code"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->o:Ljava/lang/String;

    const-string v0, "apk_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->n:Ljava/lang/String;

    const-string v0, "package_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->p:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->c:Landroid/widget/TextView;

    const-string v1, "content"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a000b

    invoke-virtual {p0, v1}, Lcom/m_twmnpshx/GameAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "close_flag"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/m_twmnpshx/GameAlertDialog;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "notificaton_id"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/m_twmnpshx/GameAlertDialog;->b:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "notificaton_id"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/m_twmnpshx/GameAlertDialog;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
