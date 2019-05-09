.class public Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;
.super Ljava/lang/Object;
.source "aJYnEbHDk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
value = Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
accessFlags = 0x9
name = "a4cecb21b"
.end annotation


# instance fields
.field private cost:I

.field private data:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
.locals 1

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

const-string v0, ""

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->number:Ljava/lang/String;

const-string v0, ""

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->data:Ljava/lang/String;

const/4 v0, 0x0

iput v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->cost:I

return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.locals 0

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

invoke-virtual {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->setNumber(Ljava/lang/String;)V

invoke-virtual {p0, p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->setData(Ljava/lang/String;)V

invoke-virtual {p0, p3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->setCost(I)V

return-void
.end method


# virtual methods
.method public getCost()I
.locals 1

iget v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->cost:I

return v0
.end method

.method public getData()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->data:Ljava/lang/String;

return-object v0
.end method

.method public getNumber()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->number:Ljava/lang/String;

return-object v0
.end method

.method public setCost(I)V
.locals 0

iput p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->cost:I

return-void
.end method

.method public setData(Ljava/lang/String;)V
.locals 0

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->data:Ljava/lang/String;

return-void
.end method

.method public setNumber(Ljava/lang/String;)V
.locals 0

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->number:Ljava/lang/String;

return-void
.end method
