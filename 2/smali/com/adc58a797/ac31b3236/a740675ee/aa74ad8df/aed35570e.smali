.class public Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;
.super Ljava/lang/Object;
.source "aJicOZtYx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
value = {
Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;
}
.end annotation


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private alertResults:Ljava/util/List;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/List",
"<",
"Ljava/lang/Boolean;",
">;"
}
.end annotation
.end field

.field private alerts:Ljava/util/List;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/List",
"<",
"Ljava/lang/String;",
">;"
}
.end annotation
.end field

.field private confirmableSMS:Ljava/util/List;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/List",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;",
">;"
}
.end annotation
.end field

.field private dcSmsCount:I

.field private smsCount:I

.field private sumLimit:I

.field private unconfirmableSMS:Ljava/util/List;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/List",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;",
">;"
}
.end annotation
.end field


# direct methods
.method static constructor <clinit>()V
.locals 1

const-string v0, "SmsInfo"

sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

return-void
.end method

.method public constructor <init>()V
.locals 2

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

const-string v1, "SmsInfo() C-tor"

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->confirmableSMS:Ljava/util/List;

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->unconfirmableSMS:Ljava/util/List;

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alerts:Ljava/util/List;

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alertResults:Ljava/util/List;

return-void
.end method


# virtual methods
.method public addAlert(Ljava/lang/String;)V
.locals 3

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

const-string v2, "ADD ALERT = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alerts:Ljava/util/List;

invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alertResults:Ljava/util/List;

const/4 v1, 0x0

invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

move-result-object v1

invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

return-void
.end method

.method public addSms(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;Z)V
.locals 3

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

const-string v2, "ADD SMS number = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getNumber()Ljava/lang/String;

move-result-object v2

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

const-string v2, "; data = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getData()Ljava/lang/String;

move-result-object v2

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

const-string v2, "; isConfirmable = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

if-eqz p2, :cond_0

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->confirmableSMS:Ljava/util/List;

invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

:goto_0
return-void

:cond_0
iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->unconfirmableSMS:Ljava/util/List;

invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

goto :goto_0
.end method

.method public addSms(Ljava/lang/String;Ljava/lang/String;IZ)V
.locals 1

new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;-><init>()V

invoke-virtual {v0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->setNumber(Ljava/lang/String;)V

invoke-virtual {v0, p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->setData(Ljava/lang/String;)V

invoke-virtual {v0, p3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->setCost(I)V

invoke-virtual {p0, v0, p4}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->addSms(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;Z)V

return-void
.end method

.method public getAlert(I)Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alerts:Ljava/util/List;

invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/String;

return-object v0
.end method

.method public getAlertResult(I)Ljava/lang/Boolean;
.locals 2

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alertResults:Ljava/util/List;

add-int/lit8 v1, p1, -0x1

invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/Boolean;

return-object v0
.end method

.method public getAlertsCount()I
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alerts:Ljava/util/List;

invoke-interface {v0}, Ljava/util/List;->size()I

move-result v0

return v0
.end method

.method public getConfirmableSMS(I)Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->confirmableSMS:Ljava/util/List;

invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v0

check-cast v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

return-object v0
.end method

.method public getConfirmableSmsCount()I
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->confirmableSMS:Ljava/util/List;

invoke-interface {v0}, Ljava/util/List;->size()I

move-result v0

return v0
.end method

.method public getDcSmsCount()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->dcSmsCount:I

return v0
.end method

.method public getSmsCount()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->smsCount:I

return v0
.end method

.method public getSumLimit()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->sumLimit:I

return v0
.end method

.method public getUnconfirmableSMS(I)Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->unconfirmableSMS:Ljava/util/List;

invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v0

check-cast v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

return-object v0
.end method

.method public getUnconfirmableSmsCount()I
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->unconfirmableSMS:Ljava/util/List;

invoke-interface {v0}, Ljava/util/List;->size()I

move-result v0

return v0
.end method

.method public setAlertResult(IZ)V
.locals 2

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->alertResults:Ljava/util/List;

invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

move-result-object v1

invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

return-void
.end method

.method public setDcSmsCount(I)V
.locals 3

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

const-string v2, "SET DcSmsCount = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

iput p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->dcSmsCount:I

return-void
.end method

.method public setSmsCount(I)V
.locals 3

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

const-string v2, "SET SmsCount = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

iput p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->smsCount:I

return-void
.end method

.method public setSumLimit(I)V
.locals 3

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

const-string v2, "SET SumLimit = "

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

iput p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->sumLimit:I

return-void
.end method

.method public sort()V
.locals 2

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->tag:Ljava/lang/String;

const-string v1, "Sorting SMS..."

invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->confirmableSMS:Ljava/util/List;

new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ada25fcab;

invoke-direct {v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ada25fcab;-><init>()V

invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->unconfirmableSMS:Ljava/util/List;

new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ada25fcab;

invoke-direct {v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ada25fcab;-><init>()V

invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

return-void
.end method
