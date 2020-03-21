.class Lcom/wimolife/DailyFunnyVideo/DFV$8;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$8;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$8;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$28(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$8;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$29(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 964
    return-void
.end method
