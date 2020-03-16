.class public Lcom/m_twmnpshx/Web;
.super Landroid/app/Activity;


# static fields
.field private static f:I

.field private static g:I

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

.field private static x:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/content/ServiceConnection;

.field private C:Landroid/os/Handler;

.field a:Landroid/webkit/WebView;

.field public b:Ljava/util/HashMap;

.field c:Lde;

.field public d:Lcom/m_twmnpshx/GameService;

.field e:Landroid/content/SharedPreferences;

.field private y:Lcz;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/m_twmnpshx/Web;->f:I

    sput v0, Lcom/m_twmnpshx/Web;->g:I

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

    const-string v0, "http://client.go360days.com/mt.php"

    sput-object v0, Lcom/m_twmnpshx/Web;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/m_twmnpshx/Web;->c:Lde;

    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->y:Lcz;

    const-string v0, "http://client.go360days.com/request/update.do"

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->A:Ljava/lang/String;

    new-instance v0, Lbz;

    invoke-direct {v0, p0}, Lbz;-><init>(Lcom/m_twmnpshx/Web;)V

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->B:Landroid/content/ServiceConnection;

    new-instance v0, Lbw;

    invoke-direct {v0, p0}, Lbw;-><init>(Lcom/m_twmnpshx/Web;)V

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->C:Landroid/os/Handler;

    iput-object v1, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/Web;)Lcz;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->y:Lcz;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Web;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/Web;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/Web;->A:Ljava/lang/String;

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

    new-instance v2, Lca;

    invoke-direct {v2, p0}, Lca;-><init>(Lcom/m_twmnpshx/Web;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/Web;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m_twmnpshx/Web;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/Web;->m:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/m_twmnpshx/Web;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->C:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->p:Ljava/lang/String;

    sget-object v0, Lcom/m_twmnpshx/Web;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/m_twmnpshx/Web;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/Web;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/m_twmnpshx/Web;->g:I

    return v0
.end method

.method public static synthetic d(Lcom/m_twmnpshx/Web;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Web;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Web;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m_twmnpshx/Web;->x:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 4

    const v3, 0x989680

    :try_start_0
    const-string v0, "GameService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/m_twmnpshx/Web;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "cpuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    sget-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_a

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Web;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m_twmnpshx/Web;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m_twmnpshx/Web;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->l:Ljava/lang/String;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->q:Ljava/lang/String;

    const-string v0, "ro.product.cpu.abi"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->t:Ljava/lang/String;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->r:Ljava/lang/String;

    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->s:Ljava/lang/String;

    const-string v0, "ro.build.version.sdk"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->u:Ljava/lang/String;

    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Lcb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->v:Ljava/lang/String;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "Serial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    sget-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    const-string v1, "0000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

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

    add-int/2addr v0, v3

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

    sput-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    :cond_4
    :goto_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Web;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m_twmnpshx/Web;->m:Ljava/lang/String;

    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_8

    :cond_7
    const-string v0, "wifi"

    sput-object v0, Lcom/m_twmnpshx/Web;->m:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Lcom/m_twmnpshx/Web;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

    :goto_1
    return-void

    :cond_9
    sget-object v0, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    sput-object v0, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "imsi"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "simnum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "telnum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "device"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "cpu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "model"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "manufacturer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "version_sdk"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->e:Landroid/content/SharedPreferences;

    const-string v1, "version_release"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m_twmnpshx/Web;->v:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/m_twmnpshx/Web;->requestWindowFeature(I)Z

    const/16 v0, 0x400

    invoke-virtual {p0}, Lcom/m_twmnpshx/Web;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Web;->setContentView(I)V

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->y:Lcz;

    invoke-virtual {v0, p0}, Lcz;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Web;->e()V

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->d:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".Web"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Web;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m_twmnpshx/Web;->B:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/m_twmnpshx/Web;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Web;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/m_twmnpshx/Web;->f:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/m_twmnpshx/Web;->g:I

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m_twmnpshx/Web;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

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

    sput-object v0, Lcom/m_twmnpshx/Web;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/m_twmnpshx/Web;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

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

    sput-object v0, Lcom/m_twmnpshx/Web;->o:Ljava/lang/String;

    const-string v0, "Web"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web: channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/m_twmnpshx/Web;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Web;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "width"

    sget v2, Lcom/m_twmnpshx/Web;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "height"

    sget v2, Lcom/m_twmnpshx/Web;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "imei"

    sget-object v2, Lcom/m_twmnpshx/Web;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "imsi"

    sget-object v2, Lcom/m_twmnpshx/Web;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "uid"

    sget-object v2, Lcom/m_twmnpshx/Web;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "cversion"

    sget-object v2, Lcom/m_twmnpshx/Web;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "channel"

    sget-object v2, Lcom/m_twmnpshx/Web;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "time"

    invoke-static {}, Lcom/m_twmnpshx/Web;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "pack_name"

    sget-object v2, Lcom/m_twmnpshx/Web;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "simnum"

    sget-object v2, Lcom/m_twmnpshx/Web;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "telnum"

    sget-object v2, Lcom/m_twmnpshx/Web;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "networktype"

    sget-object v2, Lcom/m_twmnpshx/Web;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "device"

    sget-object v2, Lcom/m_twmnpshx/Web;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "cpu"

    sget-object v2, Lcom/m_twmnpshx/Web;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "model"

    sget-object v2, Lcom/m_twmnpshx/Web;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "manufacturer"

    sget-object v2, Lcom/m_twmnpshx/Web;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "versionsdk"

    sget-object v2, Lcom/m_twmnpshx/Web;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    const-string v1, "versionrelease"

    sget-object v2, Lcom/m_twmnpshx/Web;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/m_twmnpshx/Web;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/m_twmnpshx/Web;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/m_twmnpshx/Web;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m_twmnpshx/Web;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    new-instance v1, Lbx;

    invoke-direct {v1, p0}, Lbx;-><init>(Lcom/m_twmnpshx/Web;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->c:Lde;

    if-nez v0, :cond_2

    new-instance v0, Lde;

    invoke-direct {v0, p0}, Lde;-><init>(Lcom/m_twmnpshx/Web;)V

    iput-object v0, p0, Lcom/m_twmnpshx/Web;->c:Lde;

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->c:Lde;

    invoke-virtual {v0}, Lde;->start()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->d:Lcom/m_twmnpshx/GameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->B:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/m_twmnpshx/Web;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m_twmnpshx/Web;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
