.class Lcom/wimolife/DailyFunnyVideo/DFV$1;
.super Landroid/os/Handler;
.source "DFV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/DFV;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 163
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$0(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$1(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$3(Lcom/wimolife/DailyFunnyVideo/DFV;I)V

    .line 154
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$4(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    .line 155
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$1;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-string v1, "Info:"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "OK"

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wimolife/DailyFunnyVideo/MyUtil;->showAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
