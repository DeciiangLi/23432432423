.class Lcom/millennialmedia/android/MillennialMediaView$5$1;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MillennialMediaView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MillennialMediaView$5;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MillennialMediaView$5;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke_removeUpdatesW0382198cKPa9993e36AcLWtDmTvmJP(Landroid/location/LocationManager;)V
    .locals 4
    .param p1, "j3fe9d97f"    # Landroid/location/LocationManager;

    const/4 v1, 0x0

    .local v1, "qypbc":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Insert method error:"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    iget-object v0, v0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    iget-object v0, v0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    iget-object v1, v1, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 425
    :cond_0
    return-void
.end method
