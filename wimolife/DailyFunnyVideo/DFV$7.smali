.class Lcom/wimolife/DailyFunnyVideo/DFV$7;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$7;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "v"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 495
    packed-switch p2, :pswitch_data_0

    .line 509
    :goto_0
    :pswitch_0
    return-void

    .line 497
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "iPick":Landroid/content/Intent;
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV$7;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/DFV;->activity:Landroid/app/Activity;

    const/16 v3, 0x538

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 504
    .end local v0    # "iPick":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, "iSnap":Landroid/content/Intent;
    const-string v2, "output"

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$27()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 506
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV$7;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/DFV;->activity:Landroid/app/Activity;

    const/16 v3, 0x537

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
