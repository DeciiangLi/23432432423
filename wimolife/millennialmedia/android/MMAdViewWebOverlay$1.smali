.class Lcom/millennialmedia/android/MMAdViewWebOverlay$1;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 140
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 142
    :pswitch_0
    const-string v2, "Close button down"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$000(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 146
    const-string v2, "Close button up"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$100(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method