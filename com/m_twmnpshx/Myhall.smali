.class public Lcom/m_twmnpshx/Myhall;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field public static b:Ljava/util/HashMap;

.field public static c:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:I

.field private static y:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Landroid/content/ServiceConnection;

.field private D:Landroid/os/Handler;

.field public a:Landroid/widget/RadioGroup;

.field d:Lbi;

.field public e:Lcom/m_twmnpshx/GameService;

.field private f:Landroid/widget/TabHost;

.field private g:Z

.field private z:Lcz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/m_twmnpshx/Myhall;->b:Ljava/util/HashMap;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Myhall;->w:Ljava/lang/String;

    sput v1, Lcom/m_twmnpshx/Myhall;->x:I

    sput v1, Lcom/m_twmnpshx/Myhall;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput-object v1, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m_twmnpshx/Myhall;->g:Z

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->z:Lcz;

    const-string v0, "http://client.go360days.com/request/update.do"

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/m_twmnpshx/Myhall;->d:Lbi;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->B:Ljava/lang/String;

    new-instance v0, Lbl;

    invoke-direct {v0, p0}, Lbl;-><init>(Lcom/m_twmnpshx/Myhall;)V

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->C:Landroid/content/ServiceConnection;

    new-instance v0, Lbj;

    invoke-direct {v0, p0}, Lbj;-><init>(Lcom/m_twmnpshx/Myhall;)V

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->D:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/Myhall;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->z:Lcz;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Myhall;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/Myhall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/Myhall;->B:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8b66\u544a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e91\u7ba1\u5bb6\u91cd\u8981\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lbo;

    invoke-direct {v2, p0}, Lbo;-><init>(Lcom/m_twmnpshx/Myhall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/Myhall;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/Myhall;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->m:Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/m_twmnpshx/Myhall;->x:I

    return v0
.end method

.method public static synthetic b(Lcom/m_twmnpshx/Myhall;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->D:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/m_twmnpshx/Myhall;->y:I

    return v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/Myhall;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->B:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Myhall;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/Myhall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/Myhall;->g:Z

    return v0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Myhall;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/m_twmnpshx/Myhall;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Myhall;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Myhall;->s:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "MYHALL"

    const-string v1, "dispatchKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/m_twmnpshx/Myhall;->g:Z

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clicked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->a:Landroid/widget/RadioGroup;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m_twmnpshx/Myhall;->g:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 2

    const-string v0, "MYHALL"

    const-string v1, "CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/TabActivity;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/m_twmnpshx/Myhall;->requestWindowFeature(I)Z

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Myhall;->setContentView(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->z:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Myhall;->w:Ljava/lang/String;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/m_twmnpshx/Myhall;->x:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/m_twmnpshx/Myhall;->y:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, La;->a:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, La;->b:I

    :try_start_0
    const-string v0, "75628422762c7b64"

    const-string v1, "hello"

    invoke-static {v0, v1}, Lak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "75628422762c7b64"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v2, v3, v1}, Lak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MYHALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MYHALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Myhall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m_twmnpshx/Myhall;->m:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "wifi"

    sput-object v0, Lcom/m_twmnpshx/Myhall;->m:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/m_twmnpshx/Myhall;->w:Ljava/lang/String;

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

    sput-object v0, Lcom/m_twmnpshx/Myhall;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/m_twmnpshx/Myhall;->w:Ljava/lang/String;

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

    sput-object v0, Lcom/m_twmnpshx/Myhall;->u:Ljava/lang/String;

    const-string v0, "MYHALL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Myhall: channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/m_twmnpshx/Myhall;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->e:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/m_twmnpshx/Myhall;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".Myhall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Myhall;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "MYHALL"

    const-string v1, "can\'t getStringExtra"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v5}, Lcom/m_twmnpshx/Myhall;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/m_twmnpshx/Myhall;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/igamepower_file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Myhall;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Myhall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clicked"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const v1, 0x7f0a005a

    if-ne v0, v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/m_twmnpshx/HomeActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :goto_1
    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/m_twmnpshx/HomeActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/m_twmnpshx/HomeActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/m_twmnpshx/SortActivity2;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nextclassid"

    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "nextclassid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/m_twmnpshx/SearchActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/m_twmnpshx/ManagerActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iput-boolean v6, p0, Lcom/m_twmnpshx/Myhall;->g:Z

    if-nez v0, :cond_9

    const v0, 0x7f0a005a

    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->a:Landroid/widget/RadioGroup;

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    :goto_3
    iput-boolean v5, p0, Lcom/m_twmnpshx/Myhall;->g:Z

    packed-switch v0, :pswitch_data_0

    :goto_4
    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->a:Landroid/widget/RadioGroup;

    new-instance v1, Lbq;

    invoke-direct {v1, p0}, Lbq;-><init>(Lcom/m_twmnpshx/Myhall;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->d:Lbi;

    if-nez v0, :cond_6

    new-instance v0, Lbi;

    invoke-direct {v0, p0}, Lbi;-><init>(Lcom/m_twmnpshx/Myhall;)V

    iput-object v0, p0, Lcom/m_twmnpshx/Myhall;->d:Lbi;

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->d:Lbi;

    invoke-virtual {v0}, Lbi;->start()V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MYHALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/m_twmnpshx/HomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "clicked"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/m_twmnpshx/Myhall;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "nextclassid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/m_twmnpshx/Myhall;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->f:Landroid/widget/TabHost;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x7f0a005a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->e:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/Myhall;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Myhall;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultTab(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->setDefaultTab(I)V

    return-void
.end method
