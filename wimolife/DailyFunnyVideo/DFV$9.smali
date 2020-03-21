.class Lcom/wimolife/DailyFunnyVideo/DFV$9;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 969
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$30(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    .local v0, "resutlImage":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$28(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 971
    if-eqz v0, :cond_0

    .line 972
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$28(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 973
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$28(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV$9;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$31(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 975
    :cond_0
    return-void
.end method
