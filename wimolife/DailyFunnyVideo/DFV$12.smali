.class Lcom/wimolife/DailyFunnyVideo/DFV$12;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wimolife/DailyFunnyVideo/DFV;->loadDFV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/DFV;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 872
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 873
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v12, v12, Lcom/wimolife/DailyFunnyVideo/DFV;->httpURL_:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v12}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "httpURL":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 875
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 876
    .local v10, "urlc":Ljava/net/URLConnection;
    const-string v11, "Connection"

    const-string v12, "Keep-Alive"

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v11, "Accept"

    const-string v12, "video/3gpp"

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v11, "User-Agent"

    const-string v12, "Android"

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const/16 v11, 0x1388

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 880
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 882
    invoke-virtual {v10}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 883
    .local v5, "len":I
    invoke-virtual {v10}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 884
    .local v8, "type":Ljava/lang/String;
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$33(Lcom/wimolife/DailyFunnyVideo/DFV;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "DailyFunnyVideo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getLength: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$33(Lcom/wimolife/DailyFunnyVideo/DFV;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "DailyFunnyVideo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Stream Type: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_1
    const-string v7, ""

    .line 887
    .local v7, "temp":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v11, 0xa

    if-lt v4, v11, :cond_3

    .line 896
    :goto_1
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$33(Lcom/wimolife/DailyFunnyVideo/DFV;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "DailyFunnyVideo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "videoFileName: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v13}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$1(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_2
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 899
    .local v1, "dis":Ljava/io/DataInputStream;
    new-array v0, v5, [B

    .line 900
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 901
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$35(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 902
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$35(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 903
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$35(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 904
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 905
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 906
    .local v6, "m":Landroid/os/Message;
    const/16 v11, 0x100

    iput v11, v6, Landroid/os/Message;->what:I

    .line 907
    const-string v11, "finish download"

    iput-object v11, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 908
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v11, v11, Lcom/wimolife/DailyFunnyVideo/DFV;->myViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 909
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 915
    .end local v0    # "data":[B
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "httpURL":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v6    # "m":Landroid/os/Message;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlc":Ljava/net/URLConnection;
    :goto_2
    return-void

    .line 888
    .restart local v3    # "httpURL":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v7    # "temp":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlc":Ljava/net/URLConnection;
    :cond_3
    invoke-virtual {v10, v4}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v7

    .line 889
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$33(Lcom/wimolife/DailyFunnyVideo/DFV;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "DailyFunnyVideo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getHeaderField["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_4
    const-string v11, ".3gp"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".mp4"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 891
    :cond_5
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11, v7}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$34(Lcom/wimolife/DailyFunnyVideo/DFV;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 910
    .end local v3    # "httpURL":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlc":Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    .line 911
    .local v2, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 912
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$33(Lcom/wimolife/DailyFunnyVideo/DFV;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "DailyFunnyVideo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "In run(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_6
    iget-object v11, p0, Lcom/wimolife/DailyFunnyVideo/DFV$12;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v11}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$0(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v11

    const-string v12, "Sorry, DFV server is down!"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 887
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpURL":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v7    # "temp":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlc":Ljava/net/URLConnection;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
