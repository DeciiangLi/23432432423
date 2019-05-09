.class public Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.super Ljava/lang/Object;
.source "adBTKyYFq.java"


# instance fields
.field isError:Z

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.locals 1

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

invoke-virtual {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->setTitle(Ljava/lang/String;)V

invoke-virtual {p0, p2}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->setText(Ljava/lang/String;)V

const/4 v0, 0x0

invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->setError(Z)V

return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
.locals 0

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

invoke-virtual {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->setTitle(Ljava/lang/String;)V

invoke-virtual {p0, p2}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->setText(Ljava/lang/String;)V

invoke-virtual {p0, p3}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->setError(Z)V

return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->text:Ljava/lang/String;

return-object v0
.end method

.method public getTitle()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->title:Ljava/lang/String;

return-object v0
.end method

.method public isError()Z
.locals 1

iget-boolean v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->isError:Z

return v0
.end method

.method public setError(Z)V
.locals 0

iput-boolean p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->isError:Z

return-void
.end method

.method public setText(Ljava/lang/String;)V
.locals 0

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->text:Ljava/lang/String;

return-void
.end method

.method public setTitle(Ljava/lang/String;)V
.locals 0

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->title:Ljava/lang/String;

return-void
.end method
