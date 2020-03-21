.class Lcom/millennialmedia/android/p53ee8cb625$6;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/p53ee8cb625;->playVideo(I)V
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
    .line 688
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$6;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 690
    const-string v0, "Video Playing Complete"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$6;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$700(Lcom/millennialmedia/android/p53ee8cb625;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$6;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$800(Lcom/millennialmedia/android/p53ee8cb625;)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$6;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$900(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$6;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$6;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$900(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$1000(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)V

    .line 697
    :cond_1
    return-void
.end method
