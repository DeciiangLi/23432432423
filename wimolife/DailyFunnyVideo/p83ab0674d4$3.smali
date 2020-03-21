.class Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$3;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$3;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$3;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$2(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$3;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$3(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    return-void
.end method
