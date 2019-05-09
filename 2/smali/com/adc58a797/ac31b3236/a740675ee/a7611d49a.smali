.class public Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;
.super Ljava/lang/Object;
.source "aGXOLeNkf.java"


# instance fields
.field private config:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>()V
.locals 1

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

const/4 v0, 0x0

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

return-void
.end method

.method private parseConfigLine(Ljava/lang/String;)V
.locals 4

const-string v3, "#"

invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

move-result v3

if-eqz v3, :cond_1

:cond_0
:goto_0
return-void

:cond_1
const/16 v3, 0x20

invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

move-result v0

if-lez v0, :cond_0

const/4 v3, 0x0

invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v1

add-int/lit8 v3, v0, 0x1

invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

move-result-object v2

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

if-nez v0, :cond_0

const/4 v0, 0x0

:goto_0
return-object v0

:cond_0
iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v0

goto :goto_0
.end method

.method public getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.locals 1

invoke-virtual {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/String;

if-nez v0, :cond_0

:goto_0
return-object p2

:cond_0
move-object p2, v0

goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
.locals 5

const/16 v4, 0xa

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

if-nez v3, :cond_1

new-instance v3, Ljava/util/HashMap;

invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

iput-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

:goto_0
const/4 v1, 0x0

const/4 v0, 0x0

invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

move-result v0

:goto_1
const/4 v3, -0x1

if-eq v0, v3, :cond_0

invoke-virtual {p1}, Ljava/lang/String;->length()I

move-result v3

if-lt v1, v3, :cond_2

:cond_0
return-void

:cond_1
iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

goto :goto_0

:cond_2
invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

move-result v0

invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v2

if-eqz v2, :cond_3

invoke-direct {p0, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->parseConfigLine(Ljava/lang/String;)V

:cond_3
add-int/lit8 v1, v0, 0x1

goto :goto_1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

if-nez v0, :cond_0

:goto_0
return-void

:cond_0
iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)V
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->config:Ljava/util/HashMap;

invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

return-void
.end method
