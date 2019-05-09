.class Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;
.super Landroid/os/AsyncTask;
.source "abLJYRvTa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
value = Lcom/adc58a797/ac31b3236/a740675ee/a56246149;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
accessFlags = 0x2
name = "a7d3ad782"
.end annotation

.annotation system Ldalvik/annotation/Signature;
value = {
"Landroid/os/AsyncTask",
"<",
"Ljava/lang/String;",
"Ljava/lang/Void;",
"Ljava/lang/String;",
">;"
}
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;


# direct methods
.method private constructor <init>(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)V
.locals 0

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

return-void
.end method

.method synthetic constructor <init>(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;)V
.locals 0

invoke-direct {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;-><init>(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)V

return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.locals 1

check-cast p1, [Ljava/lang/String;

invoke-virtual {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
.locals 20

const-string v17, "MemberActivity"

const-string v18, "doInBackground"

invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v13, Ljava/lang/StringBuffer;

invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

move-object/from16 v2, p1

array-length v12, v2

const/4 v11, 0x0

:goto_0
if-ge v11, v12, :cond_3

aget-object v16, v2, v11

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

move-result-object v17

invoke-virtual/range {v17 .. v17}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getCache()Ljava/util/HashMap;

move-result-object v17

move-object/from16 v0, v17

move-object/from16 v1, v16

invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

move-result v17

if-eqz v17, :cond_1

const-string v17, "USING_CACHE"

const-string v18, "TRUE"

invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

move-result-object v17

invoke-virtual/range {v17 .. v17}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getCache()Ljava/util/HashMap;

move-result-object v17

move-object/from16 v0, v17

move-object/from16 v1, v16

invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v17

check-cast v17, Ljava/lang/String;

move-object/from16 v0, v17

invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

:cond_0
:goto_1
add-int/lit8 v11, v11, 0x1

goto :goto_0

:cond_1
const-string v17, "USING_CACHE"

const-string v18, "FALSE"

invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

const-string v17, "doInBackground"

move-object/from16 v0, v17

move-object/from16 v1, v16

invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v10, Lorg/apache/http/client/methods/HttpGet;

move-object/from16 v0, v16

invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

new-instance v4, Ljava/lang/StringBuffer;

invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

:try_start_0
invoke-virtual {v5, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

move-result-object v9

invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

move-result-object v17

invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I
:try_end_0
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

move-result v15

sparse-switch v15, :sswitch_data_0

:cond_2
:goto_2
move-object/from16 v7, v16

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

move-result-object v17

invoke-virtual/range {v17 .. v17}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getCache()Ljava/util/HashMap;

move-result-object v17

move-object/from16 v0, v17

invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

move-result v17

if-nez v17, :cond_0

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

move-result-object v17

invoke-virtual/range {v17 .. v17}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getCache()Ljava/util/HashMap;

move-result-object v17

invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

move-result-object v18

move-object/from16 v0, v17

move-object/from16 v1, v18

invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

goto :goto_1

:sswitch_0
:try_start_1
invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

move-result-object v17

invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

move-result-object v6

new-instance v3, Ljava/io/BufferedReader;

new-instance v17, Ljava/io/InputStreamReader;

move-object/from16 v0, v17

invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

move-object/from16 v0, v17

invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

const-string v14, ""

:goto_3
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v14

if-eqz v14, :cond_2

invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

const/16 v17, 0xa

move/from16 v0, v17

invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

const/16 v17, 0xa

move/from16 v0, v17

invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:try_end_1
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

goto :goto_3

:catch_0
move-exception v8

const-string v17, "MemberActivity"

new-instance v18, Ljava/lang/StringBuilder;

invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

const-string v19, "ex: "

invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v18

invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

move-result-object v19

invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v18

invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v18

invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

goto :goto_2

:sswitch_1
:try_start_2
const-string v17, "ERROR 403"

move-object/from16 v0, v17

invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

const/16 v17, 0xa

move/from16 v0, v17

invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:try_end_2
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

goto/16 :goto_2

:cond_3
invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

move-result-object v17

return-object v17

nop

:sswitch_data_0
.sparse-switch
0xc8 -> :sswitch_0
0x193 -> :sswitch_1
.end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.locals 0

check-cast p1, Ljava/lang/String;

invoke-virtual {p0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->onPostExecute(Ljava/lang/String;)V

return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
.locals 7

const/4 v6, 0x0

const-string v3, "ERROR"

invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

move-result v3

if-eqz v3, :cond_1

const-string v3, "onPostExecute"

const-string v4, "403"

invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v2, Landroid/content/Intent;

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->getApplicationContext()Landroid/content/Context;

move-result-object v3

const-class v4, Lcom/adc58a797/ac31b3236/a740675ee/pb8bb0aab46;

invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-virtual {v3, v2, v6}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->startActivityForResult(Landroid/content/Intent;I)V

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-virtual {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->finish()V

:goto_0
:try_start_0
iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

iget-object v3, v3, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->dialog:Landroid/app/ProgressDialog;

if-eqz v3, :cond_0

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

iget-object v3, v3, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->dialog:Landroid/app/ProgressDialog;

invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
:try_end_0
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

:cond_0
:goto_1
return-void

:cond_1
const-string v3, "MemberActivity"

const-string v4, "onPostExecute"

invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;

invoke-direct {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;-><init>()V

invoke-virtual {v0, p1}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->init(Ljava/lang/String;)V

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$400(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

move-result-object v3

invoke-interface {v3}, Ljava/util/List;->clear()V

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$300(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

move-result-object v3

invoke-interface {v3}, Ljava/util/List;->clear()V

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$000(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

move-result-object v3

invoke-interface {v3}, Ljava/util/List;->clear()V

const/4 v1, 0x0

:goto_2
new-instance v3, Ljava/lang/StringBuilder;

invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

move-result-object v4

invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v3

const-string v4, "_name"

invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v3

invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v3

invoke-virtual {v0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->get(Ljava/lang/Object;)Ljava/lang/Object;

move-result-object v3

if-eqz v3, :cond_2

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$400(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

move-result-object v3

new-instance v4, Ljava/lang/StringBuilder;

invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

move-result-object v5

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

const-string v5, "_name"

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

const-string v5, "<null>"

invoke-virtual {v0, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v4

invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$300(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

move-result-object v3

new-instance v4, Ljava/lang/StringBuilder;

invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

move-result-object v5

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

const-string v5, "_link"

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

const-string v5, ""

invoke-virtual {v0, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v4

invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$000(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

move-result-object v3

new-instance v4, Ljava/lang/StringBuilder;

invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

move-result-object v5

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

const-string v5, "_type"

invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v4

const-string v5, ""

invoke-virtual {v0, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v4

invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

add-int/lit8 v1, v1, 0x1

goto/16 :goto_2

:cond_2
iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$500(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Landroid/widget/ArrayAdapter;

move-result-object v3

invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

const v5, 0x7f07000c

invoke-virtual {v3, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->findViewById(I)Landroid/view/View;

move-result-object v3

check-cast v3, Landroid/widget/ListView;

invoke-static {v4, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$602(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;Landroid/widget/ListView;)Landroid/widget/ListView;

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$600(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Landroid/widget/ListView;

move-result-object v3

invoke-virtual {v3, v6}, Landroid/widget/ListView;->setSelection(I)V

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

const-string v4, "name"

const-string v5, "Content"

invoke-virtual {v0, v4, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a7611d49a;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v4

invoke-virtual {v3, v4}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->setTitle(Ljava/lang/CharSequence;)V

goto/16 :goto_0

:catch_0
move-exception v3

goto/16 :goto_1
.end method
