.class Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/p53ee8cb625;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedAnimationListener"
.end annotation


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic this$0:Lcom/millennialmedia/android/p53ee8cb625;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/p53ee8cb625;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .param p2, "b"    # Landroid/widget/ImageButton;
    .param p3, "lp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;->button:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 380
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 378
    return-void
.end method
