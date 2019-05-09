.class public Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;
.super Landroid/app/Activity;
.source "aHPLCMYvp.java"


# static fields
.field public static final LAST_AUTH_TIME:Ljava/lang/String; = "LAST_AUTH_TIME"

.field public static final PREFS_NAME:Ljava/lang/String; = "LocalSettings"


# instance fields
.field private acceptButton:Landroid/widget/Button;

.field private rulesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method isPaymentExpired()Z
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "LocalSettings"

    invoke-virtual {p0, v10, v9}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v10, "LAST_AUTH_TIME"

    invoke-interface {v4, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v10, v2, v11

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v10

    const-string v11, "engine.payment.expire"

    const-string v12, "never"

    invoke-virtual {v10, v11, v12}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "never"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v5, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, v2

    cmp-long v10, v10, v5

    if-gtz v10, :cond_0

    :cond_2
    move v8, v9

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f030001

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->setContentView(I)V

    const-string v6, "Loading..."

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->init(Landroid/content/Context;)V

    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->acceptButton:Landroid/widget/Button;

    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->rulesButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->rulesButton:Landroid/widget/Button;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v7

    const-string v8, "ui.firstscreen.buttons.rules.caption"

    iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->rulesButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->acceptButton:Landroid/widget/Button;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v7

    const-string v8, "ui.firstscreen.buttons.accept.caption"

    iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->acceptButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f070006

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f070008

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f070007

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v6, "false"

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v7

    const-string v8, "ui.firstscreen.buttons.exit.enabled"

    const-string v9, "false"

    invoke-virtual {v7, v8, v9}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v6

    const-string v7, "rulesShow"

    const-string v8, "onClick"

    invoke-virtual {v6, v7, v8}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStartup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getTextFinder()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getRulesTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v7

    const-string v8, "extinfo"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->rulesButton:Landroid/widget/Button;

    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v6

    const-string v7, "ui.firstscreen.buttons.exit.caption"

    const-string v8, "\u0412\u044b\u0445\u043e\u0434"

    invoke-virtual {v6, v7, v8}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getTextFinder()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getFirstActivityTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v7

    const-string v8, "extinfo"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onExitClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->finish()V

    return-void
.end method

.method public onNextClicked(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->isPaymentExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->updateLastAuthTime()V

    invoke-static {p0, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->checkNextQuestions(Landroid/content/Context;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->launchFinishActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->finish()V

    goto :goto_0
.end method

.method public onRulesClicked(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v2

    const-string v3, "rulesShow"

    const-string v4, "onClick"

    invoke-virtual {v2, v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStartup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getTextFinder()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getRulesTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v3

    const-string v4, "extinfo"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->rulesButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->rulesButton:Landroid/widget/Button;

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method updateLastAuthTime()V
    .locals 6

    const-string v4, "LocalSettings"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a90fa2bb3;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "LAST_AUTH_TIME"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
