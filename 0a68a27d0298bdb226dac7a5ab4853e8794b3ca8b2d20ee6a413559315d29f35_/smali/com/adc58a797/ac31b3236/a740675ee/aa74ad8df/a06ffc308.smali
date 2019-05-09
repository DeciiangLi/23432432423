.class Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a06ffc308;
.super Ljava/lang/Object;
.source "aiHAQFfVI.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;",
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
.method public compare(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;)I
    .locals 2

    iget-object v0, p1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->prefix:Ljava/lang/String;

    iget-object v1, p2, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

    check-cast p2, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

    invoke-virtual {p0, p1, p2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a06ffc308;->compare(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;)I

    move-result v0

    return v0
.end method
