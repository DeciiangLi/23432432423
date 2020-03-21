.class Lcom/millennialmedia/android/p53ee8cb625$4;
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
    .line 326
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$4;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$4;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$4;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$502(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$4;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 331
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$4;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$600(Lcom/millennialmedia/android/p53ee8cb625;)V

    .line 333
    :cond_0
    return-void
.end method
