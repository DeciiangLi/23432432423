.class public Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;
.super Ljava/lang/Object;
.source "aVKZlxUIJ.java"


# static fields
.field private static s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

.field private static tag:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field internals:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

.field private isInitialized:Z

.field paymentMgr:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad19f3969;

.field textFinder:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    const-string v0, "OpInfo"

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->isInitialized:Z

    return-void
.end method

.method public static getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;
    .locals 1

    sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;-><init>()V

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    :cond_0
    sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    return-object v0
.end method


# virtual methods
.method public getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->internals:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    return-object v0
.end method

.method public getPaymentMgr()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad19f3969;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->paymentMgr:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad19f3969;

    return-object v0
.end method

.method public getTextFinder()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->textFinder:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->isInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->isInitialized:Z

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->context:Landroid/content/Context;

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    invoke-direct {v0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->internals:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->internals:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getLocationList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->textFinder:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad19f3969;

    invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad19f3969;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->paymentMgr:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad19f3969;

    goto :goto_0
.end method
