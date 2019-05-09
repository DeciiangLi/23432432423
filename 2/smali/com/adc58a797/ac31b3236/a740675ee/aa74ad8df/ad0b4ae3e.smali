.class public Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;
.super Ljava/lang/Object;
.source "aQXERuPtG.java"


# instance fields
.field private context:Landroid/content/Context;

.field private finishTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

.field private firstActivityTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

.field private locations:Ljava/util/List;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/List",
"<",
"Ljava/lang/String;",
">;"
}
.end annotation
.end field

.field private rulesTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.locals 1
.annotation system Ldalvik/annotation/Signature;
value = {
"(",
"Landroid/content/Context;",
"Ljava/util/List",
"<",
"Ljava/lang/String;",
">;)V"
}
.end annotation

const/4 v0, 0x0

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->firstActivityTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->rulesTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->finishTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->context:Landroid/content/Context;

iput-object p2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->locations:Ljava/util/List;

return-void
.end method

.method private getReplaces()Ljava/util/ArrayList;
.locals 5
.annotation system Ldalvik/annotation/Signature;
value = {
"()",
"Ljava/util/ArrayList",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;",
">;"
}
.end annotation

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;

const-string v2, "%id%"

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v3

const-string v4, "id"

invoke-virtual {v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v3

invoke-direct {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;

const-string v2, "%midname%"

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v3

const-string v4, "midname"

invoke-virtual {v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v3

invoke-direct {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;

const-string v2, "%dfrom%"

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v3

const-string v4, "dfrom"

invoke-virtual {v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v3

invoke-direct {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;

const-string v2, "%megafonRules%"

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v3

const-string v4, "megafonRules"

invoke-virtual {v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v3

invoke-direct {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

return-object v0
.end method

.method private getTextForLocation(Ljava/lang/String;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.locals 7

new-instance v2, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

const-string v4, "Error"

const-string v5, "Resource not found"

const/4 v6, 0x1

invoke-direct {v2, v4, v5, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

const/4 v0, 0x0

:goto_0
iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->locations:Ljava/util/List;

invoke-interface {v4}, Ljava/util/List;->size()I

move-result v4

if-ge v0, v4, :cond_2

const-string v1, "/"

const-string v4, ""

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->locations:Ljava/util/List;

invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v5

invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v4

if-eqz v4, :cond_0

const-string v1, ""

:cond_0
new-instance v4, Ljava/lang/StringBuilder;

invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

const-string v5, "texts/"

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v5

iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->locations:Ljava/util/List;

invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v4

check-cast v4, Ljava/lang/String;

invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getReplaces()Ljava/util/ArrayList;

move-result-object v5

invoke-direct {p0, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->readFile(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

move-result-object v2

invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;->isError()Z

move-result v4

if-nez v4, :cond_1

move-object v3, v2

:goto_1
return-object v3

:cond_1
add-int/lit8 v0, v0, 0x1

goto :goto_0

:cond_2
move-object v3, v2

goto :goto_1
.end method

.method private readFile(ILjava/util/ArrayList;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.locals 15
.annotation system Ldalvik/annotation/Signature;
value = {
"(I",
"Ljava/util/ArrayList",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;",
">;)",
"Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;"
}
.end annotation

iget-object v11, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->context:Landroid/content/Context;

invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

move-result-object v11

move/from16 v0, p1

invoke-virtual {v11, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

move-result-object v6

new-instance v9, Ljava/lang/StringBuilder;

invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

:try_start_0
new-instance v5, Ljava/io/InputStreamReader;

const-string v11, "UTF-8"

invoke-direct {v5, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

new-instance v1, Ljava/io/BufferedReader;

invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

const/4 v10, 0x0

const/4 v3, 0x1

:goto_0
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v7

if-eqz v7, :cond_2

const/4 v4, 0x0

:goto_1
invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

move-result v11

if-ge v4, v11, :cond_0

move-object/from16 v0, p2

invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

move-result-object v8

check-cast v8, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;

invoke-virtual {v8}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;->getFrom()Ljava/lang/String;

move-result-object v11

invoke-virtual {v8}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;->getTo()Ljava/lang/String;

move-result-object v12

invoke-static {v7, v11, v12}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v7

add-int/lit8 v4, v4, 0x1

goto :goto_1

:cond_0
if-eqz v3, :cond_1

move-object v10, v7

const/4 v3, 0x0

goto :goto_0

:cond_1
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

const/16 v11, 0xa

invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_0
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

goto :goto_0

:catch_0
move-exception v2

invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

new-instance v11, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

const-string v12, "Error"

const-string v13, "Resource error(UnsupportedEncodingException)"

const/4 v14, 0x1

invoke-direct {v11, v12, v13, v14}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

:goto_2
return-object v11

:cond_2
:try_start_1
new-instance v11, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v12

invoke-direct {v11, v10, v12}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

goto :goto_2

:catch_1
move-exception v2

invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

new-instance v11, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

const-string v12, "Error"

const-string v13, "Resource error (IOException)"

const/4 v14, 0x1

invoke-direct {v11, v12, v13, v14}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

goto :goto_2
.end method

.method private readFile(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.locals 17
.annotation system Ldalvik/annotation/Signature;
value = {
"(",
"Ljava/lang/String;",
"Ljava/util/ArrayList",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;",
">;)",
"Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;"
}
.end annotation

const-string v13, "GlobalConfig"

move-object/from16 v0, p1

invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

move-object/from16 v0, p0

iget-object v13, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->context:Landroid/content/Context;

invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

move-result-object v1

const/4 v8, 0x0

:try_start_0
move-object/from16 v0, p1

invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_0
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

move-result-object v8

new-instance v11, Ljava/lang/StringBuilder;

invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

:try_start_1
new-instance v7, Ljava/io/InputStreamReader;

const-string v13, "UTF-8"

invoke-direct {v7, v8, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

new-instance v2, Ljava/io/BufferedReader;

invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

const/4 v12, 0x0

const/4 v5, 0x1

:goto_0
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v9

if-eqz v9, :cond_2

const/4 v6, 0x0

:goto_1
invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

move-result v13

if-ge v6, v13, :cond_0

move-object/from16 v0, p2

invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

move-result-object v10

check-cast v10, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;

invoke-virtual {v10}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;->getFrom()Ljava/lang/String;

move-result-object v13

invoke-virtual {v10}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/af71b26ab;->getTo()Ljava/lang/String;

move-result-object v14

invoke-static {v9, v13, v14}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_1
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

move-result-object v9

add-int/lit8 v6, v6, 0x1

goto :goto_1

:catch_0
move-exception v4

const-string v13, "error"

invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

move-result-object v14

invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v13, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

const-string v14, "Error"

const-string v15, "Resource error"

const/16 v16, 0x1

invoke-direct/range {v13 .. v16}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

:goto_2
return-object v13

:cond_0
if-eqz v5, :cond_1

move-object v12, v9

const/4 v5, 0x0

goto :goto_0

:cond_1
:try_start_2
invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

const/16 v13, 0xa

invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_2
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

goto :goto_0

:catch_1
move-exception v3

invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

new-instance v13, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

const-string v14, "Error"

const-string v15, "Resource error(UnsupportedEncodingException)"

const/16 v16, 0x1

invoke-direct/range {v13 .. v16}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

goto :goto_2

:cond_2
:try_start_3
new-instance v13, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v14

invoke-direct {v13, v12, v14}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

goto :goto_2

:catch_2
move-exception v3

invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

new-instance v13, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

const-string v14, "Error"

const-string v15, "Resource error (IOException)"

const/16 v16, 0x1

invoke-direct/range {v13 .. v16}, Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

goto :goto_2
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.locals 5

new-instance v0, Ljava/lang/StringBuffer;

invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

move-result v2

const/4 v3, 0x0

invoke-virtual {p1}, Ljava/lang/String;->length()I

move-result v1

:goto_0
const/4 v4, -0x1

if-eq v2, v4, :cond_0

invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v4

invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

move-result-object v4

invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

add-int v3, v2, v1

invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

move-result v2

goto :goto_0

:cond_0
invoke-virtual {p0}, Ljava/lang/String;->length()I

move-result v4

invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v4

invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

move-result-object v4

return-object v4
.end method


# virtual methods
.method public getFinishTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->finishTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

if-nez v0, :cond_0

const-string v0, "finish_activity.txt"

invoke-direct {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getTextForLocation(Ljava/lang/String;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

move-result-object v0

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->finishTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

:cond_0
iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->finishTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

return-object v0
.end method

.method public getFirstActivityTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->firstActivityTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

if-nez v0, :cond_0

const-string v0, "first_activity.txt"

invoke-direct {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getTextForLocation(Ljava/lang/String;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

move-result-object v0

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->firstActivityTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

:cond_0
iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->firstActivityTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

return-object v0
.end method

.method public getRulesTexts()Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->rulesTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

if-nez v0, :cond_0

const-string v0, "rules_activity.txt"

invoke-direct {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->getTextForLocation(Ljava/lang/String;)Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

move-result-object v0

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->rulesTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

:cond_0
iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/ad0b4ae3e;->rulesTexts:Lcom/adc58a797/ac31b3236/a740675ee/a114d9de8;

return-object v0
.end method
