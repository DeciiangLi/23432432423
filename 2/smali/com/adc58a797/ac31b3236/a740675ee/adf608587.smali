.class public Lcom/adc58a797/ac31b3236/a740675ee/adf608587;
.super Landroid/app/Activity;
.source "aarfxCkKD.java"


# instance fields
.field private buttonExit:Landroid/widget/Button;

.field private buttonOpen:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
.locals 0

invoke-direct {p0}, Landroid/app/Activity;-><init>()V

return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
.locals 6

invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

const/high16 v2, 0x7f030000

invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->setContentView(I)V

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v2

invoke-virtual {v2, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->init(Landroid/content/Context;)V

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

move-result-object v2

invoke-virtual {v2, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->init(Landroid/content/Context;)V

const v2, 0x7f070003

invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->findViewById(I)Landroid/view/View;

move-result-object v2

check-cast v2, Landroid/widget/Button;

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->buttonExit:Landroid/widget/Button;

const v2, 0x7f070004

invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->findViewById(I)Landroid/view/View;

move-result-object v2

check-cast v2, Landroid/widget/Button;

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->buttonOpen:Landroid/widget/Button;

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->buttonExit:Landroid/widget/Button;

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

move-result-object v3

invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

move-result-object v3

const-string v4, "ui.finishscreen.buttons.exit.caption"

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->buttonExit:Landroid/widget/Button;

invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

move-result-object v5

invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

move-result-object v5

invoke-virtual {v3, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v3

invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->buttonOpen:Landroid/widget/Button;

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

move-result-object v3

invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

move-result-object v3

const-string v4, "ui.finishscreen.buttons.open.caption"

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->buttonOpen:Landroid/widget/Button;

invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

move-result-object v5

invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

move-result-object v5

invoke-virtual {v3, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v3

invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

const v2, 0x7f070001

invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->findViewById(I)Landroid/view/View;

move-result-object v0

check-cast v0, Landroid/widget/TextView;

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

move-result-object v2

invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getTextFinder()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;

move-result-object v2

invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getFinishTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

move-result-object v1

if-eqz v1, :cond_0

invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getText()Ljava/lang/String;

move-result-object v2

invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

new-instance v2, Landroid/text/method/ScrollingMovementMethod;

invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->getTitle()Ljava/lang/String;

move-result-object v2

invoke-virtual {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->setTitle(Ljava/lang/CharSequence;)V

:cond_0
return-void
.end method

.method public onExitClicked(Landroid/view/View;)V
.locals 2

const-string v0, "log"

const-string v1, "Exit"

invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->finish()V

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

.method public onNextClicked(Landroid/view/View;)V
.locals 4

const-string v1, "log"

const-string v2, "Next"

invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v0, Landroid/content/Intent;

const-string v1, "android.intent.action.VIEW"

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v2

const-string v3, "url"

invoke-virtual {v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v2

invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

move-result-object v2

invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/adf608587;->startActivity(Landroid/content/Intent;)V

return-void
.end method
