.class Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;
.super Ljava/lang/Object;
.source "p47a1867e10.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->loadRankData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 126
    const-string v20, "http://www.wimolife.com/VideoTube/android_rank.php"

    .line 129
    .local v20, "uploadURL":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    .local v7, "aURL":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 131
    .local v10, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 132
    .local v17, "rc":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$1(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "responseCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const/16 v2, 0xc8

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 135
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v7    # "aURL":Ljava/net/URL;
    .end local v10    # "con":Ljava/net/HttpURLConnection;
    .end local v17    # "rc":I
    :catch_0
    move-exception v12

    .line 175
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 177
    .local v16, "m":Landroid/os/Message;
    const/16 v2, 0x101

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 178
    const-string v2, "loading done."

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->myViewUpdateHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$2(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$3(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Landroid/app/ProgressDialog;)V

    .line 182
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 184
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 137
    .end local v16    # "m":Landroid/os/Message;
    .restart local v7    # "aURL":Ljava/net/URL;
    .restart local v10    # "con":Ljava/net/HttpURLConnection;
    .restart local v17    # "rc":I
    :cond_1
    :try_start_1
    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v3, "UTF-8"

    invoke-direct {v14, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 138
    .local v14, "isr":Ljava/io/InputStreamReader;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v9, "buffer":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .line 140
    .local v18, "read":I
    :goto_1
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->read()I

    move-result v18

    if-gez v18, :cond_3

    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "res":Ljava/lang/String;
    const-string v2, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, "data":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$1(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadRankData: data.length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    array-length v2, v11

    if-lez v2, :cond_7

    .line 152
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v2, v11

    if-lt v13, v2, :cond_4

    .line 164
    .end local v13    # "i":I
    :goto_3
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 165
    .restart local v16    # "m":Landroid/os/Message;
    const/16 v2, 0x101

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 166
    const-string v2, "loading done."

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->myViewUpdateHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$2(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$3(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Landroid/app/ProgressDialog;)V

    .line 171
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_0

    .line 141
    .end local v11    # "data":[Ljava/lang/String;
    .end local v16    # "m":Landroid/os/Message;
    .end local v19    # "res":Ljava/lang/String;
    :cond_3
    move/from16 v0, v18

    int-to-char v2, v0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 153
    .restart local v11    # "data":[Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v19    # "res":Ljava/lang/String;
    :cond_4
    aget-object v8, v11, v13

    .line 154
    .local v8, "best":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, "items":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$1(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$1(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_6
    new-instance v1, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    add-int/lit8 v3, v13, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v15, v4

    const/4 v5, 0x1

    aget-object v5, v15, v5

    const/4 v6, 0x2

    aget-object v6, v15, v6

    invoke-direct/range {v1 .. v6}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;-><init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, "temp":Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;
    sget-object v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 161
    .end local v1    # "temp":Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;
    .end local v8    # "best":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v15    # "items":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    const-string v3, "Warning: Can\'t get rank data now!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
