.class public final Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;
.super Ljava/lang/Object;
.source "aiXtOoYkA.java"


# static fields
.field private static instance:Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0; = null

.field private static final tag:Ljava/lang/String; = "GlobalConfig"


# instance fields
.field con:Landroid/content/Context;

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

.field private globalVars:Ljava/util/HashMap;
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

.field private isInitialized:Z

.field private res:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>()V
.locals 2

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

const/4 v0, 0x0

iput-boolean v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->isInitialized:Z

const-string v0, "GlobalConfig"

const-string v1, "Creating instance..."

invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v0, Ljava/util/HashMap;

invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->globalVars:Ljava/util/HashMap;

return-void
.end method

.method public static getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;
.locals 1

sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

if-nez v0, :cond_0

new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;-><init>()V

sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

:cond_0
sget-object v0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->instance:Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

return-object v0
.end method

.method private parseConfigLine(Ljava/lang/String;)V
.locals 4

const/16 v3, 0x20

invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

move-result v0

if-gtz v0, :cond_0

:goto_0
return-void

:cond_0
const/4 v3, 0x0

invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v1

add-int/lit8 v3, v0, 0x1

invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

move-result-object v2

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

goto :goto_0
.end method


# virtual methods
.method public existsRuntimeValue(Ljava/lang/String;)Z
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->globalVars:Ljava/util/HashMap;

invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

move-result v0

return v0
.end method

.method public getPrefsName()Ljava/lang/String;
.locals 2

new-instance v0, Ljava/lang/StringBuilder;

invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

const-string v1, "prefs"

invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v0

const-string v1, "id"

invoke-virtual {p0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v1

invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v0

invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method public getRuntimeValue(Ljava/lang/String;)Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->globalVars:Ljava/util/HashMap;

invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/String;

return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
.locals 2

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

if-nez v1, :cond_1

const-string v0, ""

:cond_0
:goto_0
return-object v0

:cond_1
iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/String;

if-nez v0, :cond_0

const-string v0, ""

goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.locals 2

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

if-nez v1, :cond_1

:cond_0
:goto_0
return-object p2

:cond_1
iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/String;

if-eqz v0, :cond_0

move-object p2, v0

goto :goto_0
.end method

.method public getValueNull(Ljava/lang/String;)Z
.locals 3

const/4 v1, 0x1

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

if-nez v2, :cond_1

:cond_0
:goto_0
return v1

:cond_1
iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v0

check-cast v0, Ljava/lang/String;

if-eqz v0, :cond_0

const/4 v1, 0x0

goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
.locals 7

iget-boolean v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->isInitialized:Z

if-eqz v5, :cond_1

:cond_0
:goto_0
return-void

:cond_1
iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->con:Landroid/content/Context;

const/4 v5, 0x1

iput-boolean v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->isInitialized:Z

new-instance v5, Ljava/util/HashMap;

invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

iput-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->config:Ljava/util/HashMap;

invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

move-result-object v5

iput-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->res:Landroid/content/res/Resources;

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->res:Landroid/content/res/Resources;

const/high16 v6, 0x7f040000

invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

move-result-object v3

:try_start_0
new-instance v2, Ljava/io/InputStreamReader;

const-string v5, "UTF-8"

invoke-direct {v2, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

new-instance v0, Ljava/io/BufferedReader;

invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

:goto_1
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v4

if-eqz v4, :cond_0

invoke-direct {p0, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->parseConfigLine(Ljava/lang/String;)V
:try_end_0
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

goto :goto_1

:catch_0
move-exception v1

invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

goto :goto_0

:catch_1
move-exception v1

invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

goto :goto_0
.end method

.method public setRuntimeValue(Ljava/lang/String;Ljava/lang/String;)V
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->globalVars:Ljava/util/HashMap;

invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

return-void
.end method
