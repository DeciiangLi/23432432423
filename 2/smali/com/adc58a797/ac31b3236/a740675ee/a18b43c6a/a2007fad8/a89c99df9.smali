.class public Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;
.super Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ad126a8fc;
.source "aBRVXlxtp.java"

# interfaces
.implements Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;


# static fields
.field private static final CONFIRMABLE_SMS_LAST_RECEIVED_TIME:Ljava/lang/String; = "receivedSMS.confirmable.lastTime"

.field private static final CONFIRMABLE_SMS_LAST_SENT_TIME:Ljava/lang/String; = "sentSMS.confirmable.lastTime"

.field private static final tag:Ljava/lang/String; = "ConfirmableSMSSenderEngineImpl"


# instance fields
.field private context:Landroid/content/Context;

.field private final data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

.field limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

.field private nextID:I

.field private prev:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;Landroid/content/SharedPreferences;Landroid/content/Context;)V
.locals 2

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ad126a8fc;-><init>()V

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

iput-object p2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->settings:Landroid/content/SharedPreferences;

iput-object p3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->context:Landroid/content/Context;

const-string v0, "ConfirmableSMSSenderEngineImpl"

const-string v1, "C-tor"

invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

return-void
.end method

.method private isLastSentSMSApproved()Z
.locals 8

const-wide/16 v6, 0x0

iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->settings:Landroid/content/SharedPreferences;

const-string v5, "receivedSMS.confirmable.lastTime"

invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

move-result-wide v0

iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->settings:Landroid/content/SharedPreferences;

const-string v5, "sentSMS.confirmable.lastTime"

invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

move-result-wide v2

cmp-long v4, v0, v2

if-lez v4, :cond_0

const/4 v4, 0x1

:goto_0
return v4

:cond_0
const/4 v4, 0x0

goto :goto_0
.end method

.method private updateLastSentTime()V
.locals 4

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->settings:Landroid/content/SharedPreferences;

invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

move-result-object v0

invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

move-result-wide v1

const-string v3, "sentSMS.confirmable.lastTime"

invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

return-void
.end method


# virtual methods
.method public SendMessage(Landroid/content/Context;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V
.locals 0

invoke-super {p0, p1, p2}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ad126a8fc;->SendMessage(Landroid/content/Context;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->updateLastSentTime()V

iput-object p2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->prev:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

return-void
.end method

.method public canSendMoreMessages()Z
.locals 6

const/4 v2, 0x1

const/4 v3, 0x0

:goto_0
iget v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getConfirmableSmsCount()I

move-result v5

if-ge v4, v5, :cond_0

iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

iget v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

invoke-virtual {v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getConfirmableSMS(I)Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

move-result-object v4

invoke-virtual {v4}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

move-result v4

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->expectedMoneyRest()I

move-result v5

if-le v4, v5, :cond_0

iget v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

add-int/lit8 v4, v4, 0x1

iput v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

goto :goto_0

:cond_0
iget v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getConfirmableSmsCount()I

move-result v5

if-ge v4, v5, :cond_1

move v1, v2

:goto_1
iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

invoke-virtual {v4}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->dcSmsCountRest()I

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

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

const/4 v0, 0x0

iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

const/4 v0, 0x0

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->prev:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

return-void
.end method

.method public sendOneMessage()V
.locals 3

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->prev:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

if-eqz v1, :cond_0

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->isLastSentSMSApproved()Z

move-result v1

if-eqz v1, :cond_1

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->prev:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

invoke-virtual {v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->registerSuccessfulPayment(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V

:cond_0
:goto_0
invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->canSendMoreMessages()Z

move-result v1

if-nez v1, :cond_2

:goto_1
return-void

:cond_1
iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->prev:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

invoke-virtual {v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->registerFailedPaymend(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V

goto :goto_0

:cond_2
iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->data:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

iget v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->nextID:I

invoke-virtual {v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getConfirmableSMS(I)Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

move-result-object v0

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->context:Landroid/content/Context;

invoke-virtual {p0, v1, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;->SendMessage(Landroid/content/Context;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V

goto :goto_1
.end method
