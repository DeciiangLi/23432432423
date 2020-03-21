.class Lcom/wimolife/DailyFunnyVideo/DFV$3;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x10000000

    .line 397
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v5}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$10(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 398
    const-string v5, "market://details?id=org.drhu.iRadio"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 399
    .local v4, "uri1":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v5, v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    .line 422
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v4    # "uri1":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v5}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$11(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 403
    const-string v5, "market://details?id=org.drhu.FunnyFace"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v5, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 407
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v5}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$12(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_3

    .line 408
    const-string v5, "market://details?id=com.wimolife.PhoneSketchFree"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 409
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v5, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 412
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v5}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$13(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_4

    .line 413
    const-string v5, "market://details?id=com.wimolife.VideoTube"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 414
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 415
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 416
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v5, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 417
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v5}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$14(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 418
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "market://search?q=pub:DrHu"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v2, "myIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$3;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v5, v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
