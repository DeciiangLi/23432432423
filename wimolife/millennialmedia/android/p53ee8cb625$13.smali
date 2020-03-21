.class Lcom/millennialmedia/android/p53ee8cb625$13;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/p53ee8cb625;->startServer(Ljava/lang/String;IZ)V
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
    .line 1270
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$13;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1272
    const-string v0, "Video Prepared"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1273
    return-void
.end method
