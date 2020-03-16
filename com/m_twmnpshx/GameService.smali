.class public Lcom/m_twmnpshx/GameService;
.super Landroid/app/Service;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:Lcz;

.field private final F:Landroid/os/IBinder;

.field private G:Ljava/lang/Runnable;

.field private H:Ljava/lang/Runnable;

.field private I:Ljava/lang/Runnable;

.field private J:Ljava/lang/Runnable;

.field private K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Thread;

.field private M:Ljava/lang/Thread;

.field private N:Ljava/lang/Thread;

.field private O:Ljava/lang/Thread;

.field private P:Landroid/os/Handler;

.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field public b:Landroid/content/SharedPreferences;

.field public c:Ljava/lang/Runnable;

.field private d:Lcom/m_twmnpshx/GameBootReceiver;

.field private e:Lbb;

.field private f:Las;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lbk;

.field private t:J

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lbb;

    invoke-direct {v0}, Lbb;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->e:Lbb;

    new-instance v0, Las;

    invoke-direct {v0}, Las;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    sget-object v0, Lbk;->e:Lbk;

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->s:Lbk;

    iput-wide v1, p0, Lcom/m_twmnpshx/GameService;->t:J

    iput-boolean v4, p0, Lcom/m_twmnpshx/GameService;->u:Z

    iput-boolean v4, p0, Lcom/m_twmnpshx/GameService;->v:Z

    iput v4, p0, Lcom/m_twmnpshx/GameService;->w:I

    iput-boolean v5, p0, Lcom/m_twmnpshx/GameService;->x:Z

    iput-boolean v5, p0, Lcom/m_twmnpshx/GameService;->y:Z

    iput-wide v1, p0, Lcom/m_twmnpshx/GameService;->z:J

    iput-wide v1, p0, Lcom/m_twmnpshx/GameService;->A:J

    iput-wide v1, p0, Lcom/m_twmnpshx/GameService;->B:J

    iput-wide v1, p0, Lcom/m_twmnpshx/GameService;->C:J

    iput-wide v1, p0, Lcom/m_twmnpshx/GameService;->D:J

    iput-object v3, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->E:Lcz;

    new-instance v0, Ll;

    invoke-direct {v0, p0}, Ll;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->F:Landroid/os/IBinder;

    new-instance v0, Lcn;

    invoke-direct {v0, p0}, Lcn;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->G:Ljava/lang/Runnable;

    new-instance v0, Lcl;

    invoke-direct {v0, p0}, Lcl;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->H:Ljava/lang/Runnable;

    new-instance v0, Lcq;

    invoke-direct {v0, p0}, Lcq;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->I:Ljava/lang/Runnable;

    new-instance v0, Lcp;

    invoke-direct {v0, p0}, Lcp;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->J:Ljava/lang/Runnable;

    new-instance v0, Lcj;

    invoke-direct {v0, p0}, Lcj;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->K:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->K:Ljava/lang/Runnable;

    const-string v2, "doTimerListener"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->L:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->H:Ljava/lang/Runnable;

    const-string v2, "getNetworkType"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->M:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->I:Ljava/lang/Runnable;

    const-string v2, "getCurrentTime"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->N:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->J:Ljava/lang/Runnable;

    const-string v2, "doTimerGetConfig"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->O:Ljava/lang/Thread;

    new-instance v0, Lci;

    invoke-direct {v0, p0}, Lci;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->P:Landroid/os/Handler;

    new-instance v0, Lck;

    invoke-direct {v0, p0}, Lck;-><init>(Lcom/m_twmnpshx/GameService;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;I)I
    .locals 0

    iput p1, p0, Lcom/m_twmnpshx/GameService;->w:I

    return p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/m_twmnpshx/GameService;->t:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;Las;)Las;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;Lbk;)Lbk;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameService;->s:Lbk;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameService;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/GameService;->v:Z

    return v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/GameService;->u:Z

    return p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/GameService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/m_twmnpshx/GameService;->z:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/m_twmnpshx/GameService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/GameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/GameService;->v:Z

    return p1
.end method

.method public static synthetic c(Lcom/m_twmnpshx/GameService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/m_twmnpshx/GameService;->A:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/m_twmnpshx/GameService;)Lbb;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->e:Lbb;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/GameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/GameService;->x:Z

    return p1
.end method

.method public static synthetic d(Lcom/m_twmnpshx/GameService;)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->t:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/GameService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/m_twmnpshx/GameService;->B:J

    return-wide p1
.end method

.method public static synthetic d(Lcom/m_twmnpshx/GameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/m_twmnpshx/GameService;->y:Z

    return p1
.end method

.method public static synthetic e(Lcom/m_twmnpshx/GameService;)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->B:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/GameService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/m_twmnpshx/GameService;->C:J

    return-wide p1
.end method

.method public static synthetic f(Lcom/m_twmnpshx/GameService;)I
    .locals 1

    iget v0, p0, Lcom/m_twmnpshx/GameService;->w:I

    return v0
.end method

.method public static synthetic f(Lcom/m_twmnpshx/GameService;J)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->B:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/m_twmnpshx/GameService;->B:J

    return-wide v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/GameService;J)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->A:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/m_twmnpshx/GameService;->A:J

    return-wide v0
.end method

.method public static synthetic g(Lcom/m_twmnpshx/GameService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/GameService;->u:Z

    return v0
.end method

.method public static synthetic h(Lcom/m_twmnpshx/GameService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/m_twmnpshx/GameService;->D:J

    return-wide p1
.end method

.method public static synthetic h(Lcom/m_twmnpshx/GameService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->G:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic i(Lcom/m_twmnpshx/GameService;)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->z:J

    return-wide v0
.end method

.method public static synthetic j(Lcom/m_twmnpshx/GameService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->P:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic k(Lcom/m_twmnpshx/GameService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/GameService;->x:Z

    return v0
.end method

.method public static synthetic l(Lcom/m_twmnpshx/GameService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/GameService;->y:Z

    return v0
.end method

.method public static synthetic m(Lcom/m_twmnpshx/GameService;)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->A:J

    return-wide v0
.end method

.method public static synthetic n(Lcom/m_twmnpshx/GameService;)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->C:J

    return-wide v0
.end method

.method public static synthetic o(Lcom/m_twmnpshx/GameService;)J
    .locals 2

    iget-wide v0, p0, Lcom/m_twmnpshx/GameService;->D:J

    return-wide v0
.end method

.method public static synthetic p(Lcom/m_twmnpshx/GameService;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->E:Lcz;

    return-object v0
.end method

.method private w()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.categroy.DEFUAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/m_twmnpshx/GameBootReceiver;

    invoke-direct {v1}, Lcom/m_twmnpshx/GameBootReceiver;-><init>()V

    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->d:Lcom/m_twmnpshx/GameBootReceiver;

    invoke-static {p0}, Lcom/m_twmnpshx/GameBootReceiver;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->d:Lcom/m_twmnpshx/GameBootReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/m_twmnpshx/GameService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.categroy.DEFUAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->d:Lcom/m_twmnpshx/GameBootReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/m_twmnpshx/GameService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private x()V
    .locals 5

    const v4, 0x989680

    const/4 v3, 0x1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "GameService"

    const-string v2, "sendFirstUse"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    const-string v0, "ro.product.cpu.abi"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_7
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    const-string v0, "ro.build.version.sdk"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_8
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_9
    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "Serial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    const-string v1, "0000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x989680

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_a
    const-string v0, "GameService"

    const-string v1, "ready to send"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/report/first_run.do"

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lbb;->a(I)V

    return-void

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    goto/16 :goto_7

    :cond_d
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    goto/16 :goto_8

    :cond_e
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    goto/16 :goto_9

    :cond_f
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    const-string v1, "GameService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private y()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private z()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const-string v0, "/proc/meminfo"

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method a()Lbb;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->e:Lbb;

    invoke-virtual {v2}, Lbb;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->e:Lbb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lbb;->c()V

    const-string v2, "uid"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imei"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imsi"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "simnum"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "telnum"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "networktype"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cpu"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "model"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "manufacturer"

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cversion"

    invoke-virtual {v0, v2, v1}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pack_name"

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionsdk"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionrelease"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_channel"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameService: channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/m_twmnpshx/Myhall;->b()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/m_twmnpshx/Myhall;->c()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string v1, "width"

    invoke-static {}, Lcom/m_twmnpshx/Web;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "height"

    invoke-static {}, Lcom/m_twmnpshx/Web;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    const-string v2, "GameService"

    const-string v3, "Create new thread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lbb;

    invoke-direct {v2}, Lbb;-><init>()V

    invoke-virtual {v2}, Lbb;->d()V

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->P:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lbb;->a(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->k:Ljava/lang/String;

    const-string v4, "cmwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_3
    invoke-virtual {v2, v3}, Lbb;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lbb;->start()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2
    const-string v3, "0"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_3
    const-string v1, "width"

    invoke-static {}, Lcom/m_twmnpshx/Myhall;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "height"

    invoke-static {}, Lcom/m_twmnpshx/Myhall;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)Ldv;
    .locals 11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/m_twmnpshx/GameService;->s:Lbk;

    const-string v1, ""

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TAG"

    const-string v1, "SDCARD \u5b58\u5728 DOWNLOAD\u6587\u4ef6\u5939"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->E:Lcz;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->c:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "GameService"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldv;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Ldv;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    if-eqz p7, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldv;->a(Z)V

    :goto_1
    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->k:Ljava/lang/String;

    const-string v2, "cmwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_2
    invoke-virtual {v0, v1}, Ldv;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ldv;->a(Lbk;)V

    sget-object v1, Lbk;->e:Lbk;

    if-ne v10, v1, :cond_0

    invoke-virtual {v0, p0}, Ldv;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v2, "firstAlert"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firstAlert"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {v0, v1}, Ldv;->b(Z)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldv;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldv;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldv;->c(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldv;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_channel"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldv;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    invoke-virtual {v0}, Ldv;->start()V

    :goto_4
    return-object v0

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment.getExternalStorageDirectory().getPath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    const-string v2, "sd\u5361\u4e2d\u6ca1\u6709download\u6587\u4ef6\u5939\uff0c\u521b\u5efadownload\u6587\u4ef6\u5939"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "TAG"

    const-string v1, "Create download Exception . No SdCard, Can\'t Run!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const-string v0, "TAG"

    const-string v1, "No SdCard, Can\'t Run!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldv;->a(Z)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "0"

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_1

    const-string v1, ""

    if-eq p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select version_code from game_package where package_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 22

    const/4 v3, 0x0

    :try_start_0
    const-string v4, ":"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v12, v4, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v13, Lcm;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcm;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v13, v12}, Lcm;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v6, "soft_id"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v14, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from game_package where package_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    const-string v3, "GameService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from game_package where package_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\';"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    if-eqz p2, :cond_2

    if-eqz v17, :cond_0

    const-string v3, "GameService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from game_package where package_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from game_package where package_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_2
    if-lez v14, :cond_c

    :try_start_3
    invoke-virtual {v13, v14}, Lcm;->c(I)V

    move-object/from16 v3, v16

    :goto_3
    invoke-virtual {v13}, Lcm;->a()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    move-object v4, v0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "package_changed"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v4

    if-eqz p2, :cond_9

    const-string v5, "http://client.go360days.com/report/uninstall_success.do"

    :goto_4
    const-string v6, "package_name"

    invoke-virtual {v4, v6, v12}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "version_name"

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "version_code"

    invoke-virtual {v4, v6, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "soft_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lbb;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lbb;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcm;->a()V

    :cond_1
    :goto_5
    return-void

    :cond_2
    if-lez v14, :cond_3

    :try_start_4
    invoke-virtual {v13, v14}, Lcm;->b(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/m_twmnpshx/GameService;->startActivity(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/m_twmnpshx/GameService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x4000

    invoke-virtual {v7, v12, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    move-object v9, v6

    :goto_6
    if-eqz v9, :cond_b

    :try_start_6
    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v3, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v19

    const/4 v5, 0x0

    :try_start_7
    new-instance v3, Ldd;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ldd;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v5, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ldd;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/m_twmnpshx/GameService;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/icons/icons_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".ico"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/m_twmnpshx/GameService;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/icons"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v7, v8, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_7
    const/4 v4, 0x0

    :try_start_a
    iget-object v7, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-virtual/range {v3 .. v11}, Ldd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/m_twmnpshx/GameService;->v:Z

    move v4, v0

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/m_twmnpshx/GameService;->a(Lorg/json/JSONArray;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_5
    if-eqz v3, :cond_a

    :try_start_b
    invoke-virtual {v3}, Ldd;->a()V

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    :goto_8
    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replace into game_package (package_name, version_code, version_name, soft_id) values ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "GameService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replace into game_package (package_name, version_code, version_name, soft_id) values ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\')"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v3

    move-object v3, v13

    :goto_9
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcm;->a()V

    goto/16 :goto_5

    :catch_1
    move-exception v7

    :try_start_c
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v9, v6

    goto/16 :goto_6

    :catch_2
    move-exception v4

    :try_start_d
    const-string v7, "GameService"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_7

    :catch_3
    move-exception v4

    :goto_a
    if-eqz v3, :cond_a

    :try_start_e
    invoke-virtual {v3}, Ldd;->a()V

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    goto/16 :goto_8

    :catchall_0
    move-exception v3

    move-object v4, v5

    :goto_b
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ldd;->a()V

    :cond_6
    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v13

    :goto_c
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcm;->a()V

    :cond_7
    throw v3

    :cond_8
    :try_start_f
    const-string v5, "GameService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update game_package set status = 1, soft_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', version_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', version_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " where package_name =\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update game_package set status = 1, soft_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', version_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", version_name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " where package_name ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v5, "http://client.go360days.com/report/install_success.do"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    :catchall_2
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto/16 :goto_c

    :catch_4
    move-exception v4

    goto/16 :goto_9

    :catchall_3
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto/16 :goto_b

    :catch_5
    move-exception v3

    move-object v3, v5

    goto/16 :goto_a

    :catch_6
    move-exception v3

    goto/16 :goto_2

    :cond_a
    move-object/from16 v3, v19

    move-object/from16 v4, v18

    goto/16 :goto_8

    :cond_b
    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_8

    :cond_c
    move-object/from16 v3, v16

    goto/16 :goto_3

    :cond_d
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    goto/16 :goto_1

    :cond_e
    move v14, v6

    goto/16 :goto_0
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 5

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/request/tableclass.do"

    const-string v2, "GameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "tableclass"

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public b()V
    .locals 5

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/request/config.do"

    const-string v2, "GameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "config"

    invoke-virtual {v0, v1, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public c()V
    .locals 6

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/request/alert.do"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "alert_last_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "last_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "alert_times"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "num"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alertver"

    const-string v3, "1000"

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/request/push.do"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "soft_last_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "last_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public e()V
    .locals 6

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/report/return_config.do"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "alert_last_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "last_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "return"

    sget-object v3, Lcv;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "return"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnConfig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcv;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public f()V
    .locals 6

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/report/return_alert.do"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "alert_last_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "last_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "return"

    sget-object v3, Lcv;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "return"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnAlert:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public g()V
    .locals 6

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/report/return_push.do"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "alert_last_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "last_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "return"

    sget-object v3, Lcv;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "return"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnSoftList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcv;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public h()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "package_changed"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/report/install_list.do"

    const-string v2, "GameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare to send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from game_package where status=1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2800

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, "GameService"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "install"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lbb;->a(I)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 7

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->a()Lbb;

    move-result-object v0

    const-string v1, "http://client.go360days.com/report/listener.do"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v3, "listener_time"

    const/16 v4, 0x708

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v4, "listener_limit"

    const/16 v5, 0x3c

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/m_twmnpshx/GameService;->D:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/m_twmnpshx/GameService;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/m_twmnpshx/GameService;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "run_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbb;->a(Ljava/lang/String;)V

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lbb;->a(I)V

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Las;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->P:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Las;->a(Landroid/os/Handler;)V

    :try_start_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Las;->a(I)V

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    invoke-virtual {v0, p0}, Las;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    invoke-virtual {v0}, Las;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GameService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "GameService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->F:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/16 v3, 0x3c

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "GameService"

    const-string v1, "new GameService::OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/m_twmnpshx/GameService;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/m_twmnpshx/GameService;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->M:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->e:Lbb;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->P:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lbb;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->e:Lbb;

    invoke-virtual {v0}, Lbb;->start()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->E:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/m_twmnpshx/GameService;->w()V

    const-string v0, "game_service_package.db"

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/m_twmnpshx/GameService;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS game_package (package_name char(128) not null default \'\',version_name char(128) not null default \'\',version_code char(16) not null default \'\',status char(1) not null default \'1\',soft_id char(10) not null default \'\',primary key (package_name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "GameService"

    const-string v1, "create db in onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS pni ON game_package (package_name)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS si ON game_package (soft_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "GameService"

    invoke-virtual {p0, v0, v6}, Lcom/m_twmnpshx/GameService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "cpuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_6

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m_twmnpshx/GameService;->G:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/m_twmnpshx/GameService;->x()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->f:Las;

    invoke-virtual {v0}, Las;->d()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imei"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "imsi"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cpuid"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "simnum"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "telnum"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "device"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cpu"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "model"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "version_sdk"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "version_release"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "package_man"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "get_config_limit"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "config_next"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "firstRunTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gotAlert"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gotList"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "gotAlert"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/m_twmnpshx/GameService;->u:Z

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "gotList"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/m_twmnpshx/GameService;->v:Z

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "getConfigTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "getConfigTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "getAlertTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "getAlertTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "getSoftListTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "getSoftListTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "getUpListTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "getUpListTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->O:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->N:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "listener_time"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/m_twmnpshx/GameService;->t:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->L:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    invoke-virtual {p0}, Lcom/m_twmnpshx/GameService;->j()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "imsi"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "simnum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "telnum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "device"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "cpu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "model"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "manufacturer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "version_sdk"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->b:Landroid/content/SharedPreferences;

    const-string v1, "version_release"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "GameService"

    const-string v1, "GameService::OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->d:Lcom/m_twmnpshx/GameBootReceiver;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/GameService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "GameService"

    const-string v1, "GameService::OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "GameService"

    const-string v1, "GameService::OnStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameService::OnUnBind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->l:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->o:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->m:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->n:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->q:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameService;->r:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "select package_name, version_code from game_package"

    iget-object v2, p0, Lcom/m_twmnpshx/GameService;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package_name"

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version_code"

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method
