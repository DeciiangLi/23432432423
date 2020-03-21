.class Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;
.super Ljava/lang/Object;
.source "p83ab0674d4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$4(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$5(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, "resutlImage":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$2(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$2(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$2(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$6(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    :cond_0
    return-void
.end method
