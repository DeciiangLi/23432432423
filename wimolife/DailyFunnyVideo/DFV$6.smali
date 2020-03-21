.class Lcom/wimolife/DailyFunnyVideo/DFV$6;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$16(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/util/Random;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "myIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "myIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$17(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .restart local v2    # "myIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v3, v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    .line 477
    .end local v2    # "myIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$18(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 445
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$15(Lcom/wimolife/DailyFunnyVideo/DFV;)Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/pontiflex/mobile/webview/sdk/IAdManager;->hasValidRegistrationData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$19(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    .line 447
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$15(Lcom/wimolife/DailyFunnyVideo/DFV;)Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    move-result-object v4

    const-string v5, "email"

    invoke-interface {v4, v5}, Lcom/pontiflex/mobile/webview/sdk/IAdManager;->getRegistrationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$20(Lcom/wimolife/DailyFunnyVideo/DFV;Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$15(Lcom/wimolife/DailyFunnyVideo/DFV;)Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/pontiflex/mobile/webview/sdk/IAdManager;->startMultiOfferActivity()V

    goto :goto_0

    .line 450
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 452
    const-string v4, "Info:"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 453
    const-string v4, "In order to control upload video quality, we\'d like you register first!"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 454
    const-string v4, "OK"

    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v5, v5, Lcom/wimolife/DailyFunnyVideo/DFV;->buyListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 455
    const-string v4, "Later"

    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v5, v5, Lcom/wimolife/DailyFunnyVideo/DFV;->xListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 456
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 459
    :cond_3
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$21(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 460
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$22(Lcom/wimolife/DailyFunnyVideo/DFV;I)V

    .line 461
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$23(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    .line 462
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-class v6, Lcom/wimolife/DailyFunnyVideo/p449664008f;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 463
    :cond_4
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$24(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 464
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$22(Lcom/wimolife/DailyFunnyVideo/DFV;I)V

    .line 465
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$23(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    .line 466
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-class v6, Lcom/wimolife/DailyFunnyVideo/p449664008f;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 467
    :cond_5
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$25(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_6

    .line 468
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-class v4, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .local v1, "downloadIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v3, v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    .line 470
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-class v6, Lcom/wimolife/DailyFunnyVideo/p449664008f;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 471
    .end local v1    # "downloadIntent":Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$26(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 472
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-class v4, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v0, "aIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-virtual {v3, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    .line 474
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV$6;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const-class v6, Lcom/wimolife/DailyFunnyVideo/p449664008f;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
