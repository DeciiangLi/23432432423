.class Lcom/wimolife/DailyFunnyVideo/p47a1867e10$1;
.super Landroid/os/Handler;
.source "p47a1867e10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/p47a1867e10;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->access$0(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method
