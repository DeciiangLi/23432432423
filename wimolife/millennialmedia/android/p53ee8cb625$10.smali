.class Lcom/millennialmedia/android/p53ee8cb625$10;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/p53ee8cb625;I)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$10;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    iput p2, p0, Lcom/millennialmedia/android/p53ee8cb625$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 767
    const-string v0, "Video Prepared"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$10;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-static {v0}, Lcom/millennialmedia/android/p53ee8cb625;->access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/p53ee8cb625$10;->val$position:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 769
    return-void
.end method
