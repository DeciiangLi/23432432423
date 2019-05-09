.class public Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;
.super Ljava/lang/Object;
.source "amoFGxfZP.java"


# instance fields
.field private dcSmsRest:I

.field private moneyRest:I

.field private smsRest:I


# direct methods
.method public constructor <init>(III)V
.locals 0

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

iput p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->moneyRest:I

iput p2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->smsRest:I

iput p3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->dcSmsRest:I

return-void
.end method


# virtual methods
.method public dcSmsCountRest()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->dcSmsRest:I

return v0
.end method

.method public expectedMoneyRest()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->moneyRest:I

return v0
.end method

.method public registerFailedPaymend(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V
.locals 1

invoke-virtual {p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

move-result v0

add-int/lit8 v0, v0, -0x1

iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->moneyRest:I

return-void
.end method

.method public registerSuccessfulPayment(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)V
.locals 2

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->smsRest:I

add-int/lit8 v0, v0, -0x1

iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->smsRest:I

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->dcSmsRest:I

add-int/lit8 v0, v0, -0x1

iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->dcSmsRest:I

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->moneyRest:I

invoke-virtual {p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

move-result v1

sub-int/2addr v0, v1

iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->moneyRest:I

return-void
.end method

.method public smsCountRest()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a18b43c6a/ab7a95c65;->smsRest:I

return v0
.end method
