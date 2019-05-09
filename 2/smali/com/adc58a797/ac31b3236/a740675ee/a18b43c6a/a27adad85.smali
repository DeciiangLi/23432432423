.class public Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a27adad85;
.super Landroid/content/BroadcastReceiver;
.source "aGVdoZwTR.java"


# static fields
.field private static final CONFIRMABLE_SMS_LAST_RECEIVED_TIME:Ljava/lang/String; = "receivedSMS.confirmable.lastTime"

.field private static final tag:Ljava/lang/String; = "BinarySMSReceiver"


# direct methods
.method public constructor <init>()V
.locals 0

invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

return-void
.end method

.method private setLastReceivedSMSTime(Landroid/content/Context;)V
.locals 6

const-string v4, "LocalSettings"

const/4 v5, 0x0

invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

move-result-object v1

invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

move-result-object v0

invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

move-result-wide v2

const-string v4, "receivedSMS.confirmable.lastTime"

invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.locals 9

invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

move-result-object v0

const/4 v5, 0x0

if-eqz v0, :cond_2

const-string v4, "Binary SMS from "

const-string v7, "pdus"

invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

move-result-object v7

check-cast v7, [Ljava/lang/Object;

move-object v6, v7

check-cast v6, [Ljava/lang/Object;

array-length v7, v6

new-array v5, v7, [Landroid/telephony/SmsMessage;

const/4 v1, 0x0

const/4 v2, 0x0

:goto_0
array-length v7, v5

if-ge v2, v7, :cond_1

aget-object v7, v6, v2

check-cast v7, [B

check-cast v7, [B

invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

move-result-object v7

aput-object v7, v5, v2

new-instance v7, Ljava/lang/StringBuilder;

invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v7

aget-object v8, v5, v2

invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

move-result-object v8

invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v7

invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

new-instance v7, Ljava/lang/StringBuilder;

invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v7

const-string v8, "\n*****BINARY MESSAGE*****\n"

invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v7

invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

aget-object v7, v5, v2

invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

move-result-object v1

const/4 v3, 0x0

:goto_1
array-length v7, v1

if-ge v3, v7, :cond_0

new-instance v7, Ljava/lang/StringBuilder;

invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v7

aget-byte v8, v1, v3

int-to-char v8, v8

invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

move-result-object v8

invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v7

invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

add-int/lit8 v3, v3, 0x1

goto :goto_1

:cond_0
add-int/lit8 v2, v2, 0x1

goto :goto_0

:cond_1
const-string v7, "BinarySMSReceiver"

const-string v8, "Confirmtion received"

invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

invoke-direct {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a27adad85;->setLastReceivedSMSTime(Landroid/content/Context;)V

:cond_2
return-void
.end method
