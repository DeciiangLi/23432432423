.class Lcom/wimolife/DailyFunnyVideo/DFV$11;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wimolife/DailyFunnyVideo/DFV;->uploadNew()V
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$11;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 700
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v3, v6, v8

    .line 702
    .local v3, "t":J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "U_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".3gp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "fName":Ljava/lang/String;
    const-string v5, "http://www.wimolife.com/VideoTube/test_upload.php"

    .line 705
    .local v5, "uploadURL":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV$11;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v6, v5, v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->uploadFileToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV$11;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v6}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 707
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV$11;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v6}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 710
    const-string v6, "DailyFunnyVideo"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 712
    .local v2, "m":Landroid/os/Message;
    const/16 v6, 0x101

    iput v6, v2, Landroid/os/Message;->what:I

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Upload Failure: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 714
    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV$11;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v6, v6, Lcom/wimolife/DailyFunnyVideo/DFV;->myViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
