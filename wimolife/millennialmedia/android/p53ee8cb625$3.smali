.class Lcom/millennialmedia/android/p53ee8cb625$3;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/p53ee8cb625;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/p53ee8cb625;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/p53ee8cb625;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$200(Lcom/millennialmedia/android/p53ee8cb625;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$300(Lcom/millennialmedia/android/p53ee8cb625;I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$400(Lcom/millennialmedia/android/p53ee8cb625;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 313
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$202(Lcom/millennialmedia/android/p53ee8cb625;Z)Z

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->pause()V

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$400(Lcom/millennialmedia/android/p53ee8cb625;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$3;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$202(Lcom/millennialmedia/android/p53ee8cb625;Z)Z

    goto :goto_0
.end method
