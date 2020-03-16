.class public Lcom/m_twmnpshx/GameBootReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static d:Landroid/content/Context;


# instance fields
.field private a:Lcom/m_twmnpshx/GameService;

.field private b:Ljava/lang/String;

.field private c:Z

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m_twmnpshx/GameBootReceiver;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    iput-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->c:Z

    new-instance v0, Ldn;

    invoke-direct {v0, p0}, Ldn;-><init>(Lcom/m_twmnpshx/GameBootReceiver;)V

    iput-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameBootReceiver;)Lcom/m_twmnpshx/GameService;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    return-object v0
.end method

.method public static synthetic a(Lcom/m_twmnpshx/GameBootReceiver;Lcom/m_twmnpshx/GameService;)Lcom/m_twmnpshx/GameService;
    .locals 0

    iput-object p1, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/m_twmnpshx/GameBootReceiver;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/m_twmnpshx/GameBootReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/m_twmnpshx/GameBootReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->c:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "GameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new OnReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    const-string v0, "GameService"

    iget-object v1, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->c:Z

    iget-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/m_twmnpshx/GameBootReceiver;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".GameBootReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/m_twmnpshx/GameBootReceiver;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    iget-object v1, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/m_twmnpshx/GameBootReceiver;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/m_twmnpshx/GameService;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    const-string v0, "GameService"

    iget-object v1, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/m_twmnpshx/GameBootReceiver;->c:Z

    iget-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m_twmnpshx/GameService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/m_twmnpshx/GameBootReceiver;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".GameBootReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/m_twmnpshx/GameBootReceiver;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/m_twmnpshx/GameBootReceiver;->a:Lcom/m_twmnpshx/GameService;

    iget-object v1, p0, Lcom/m_twmnpshx/GameBootReceiver;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/m_twmnpshx/GameBootReceiver;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/m_twmnpshx/GameService;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
