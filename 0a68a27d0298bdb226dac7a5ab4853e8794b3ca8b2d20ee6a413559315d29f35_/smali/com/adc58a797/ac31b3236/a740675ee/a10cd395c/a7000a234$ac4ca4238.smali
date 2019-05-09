.class Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;
.super Ljava/util/TimerTask;
.source "akVwJixaB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final tag:Ljava/lang/String; = "PaymentTimer"


# instance fields
.field final synthetic this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;


# direct methods
.method constructor <init>(Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;)V
    .locals 0

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PaymentTimer"

    const-string v1, "run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->confirmbleEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

    invoke-interface {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;->canSendMoreMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->confirmbleEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

    invoke-interface {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;->sendOneMessage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->unconfirmableEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

    invoke-interface {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;->canSendMoreMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->unconfirmableEngine:Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;

    invoke-interface {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/a7c41d4fa/a6c80dd6e;->sendOneMessage()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    invoke-static {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->access$000(Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a10cd395c/a7000a234;->stopSelf()V

    const-string v0, "PaymentTimer"

    const-string v1, "SMSSenderService was stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
