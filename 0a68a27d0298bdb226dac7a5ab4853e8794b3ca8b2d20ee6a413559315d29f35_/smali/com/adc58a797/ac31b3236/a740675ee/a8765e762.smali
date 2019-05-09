.class Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;
.super Ljava/lang/Object;
.source "aTJnmwRZb.java"


# static fields
.field private static instance:Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentLink:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private history:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->data:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->links:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->types:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->history:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;
    .locals 1

    sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;-><init>()V

    sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    :cond_0
    sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    return-object v0
.end method


# virtual methods
.method public getCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->data:Ljava/util/List;

    return-object v0
.end method

.method public getHistory()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->history:Ljava/util/Stack;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->currentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->links:Ljava/util/List;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->types:Ljava/util/List;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->currentLink:Ljava/lang/String;

    return-void
.end method
