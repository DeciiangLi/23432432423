.class Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ada25fcab;
.super Ljava/lang/Object;
.source "aLRPwCmQX.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)I
    .locals 2

    invoke-virtual {p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

    move-result v0

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

    move-result v0

    invoke-virtual {p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;->getCost()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

    check-cast p2, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

    invoke-virtual {p0, p1, p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ada25fcab;->compare(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;)I

    move-result v0

    return v0
.end method
