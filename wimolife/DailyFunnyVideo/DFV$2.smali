.class Lcom/wimolife/DailyFunnyVideo/DFV$2;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$6(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$7(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$8(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$9(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$7(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$2;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$8(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
