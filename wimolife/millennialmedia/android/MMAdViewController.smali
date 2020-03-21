.class Lcom/millennialmedia/android/MMAdViewController;
.super Ljava/lang/Object;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;,
        Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;
    }
.end annotation


# static fields
.field private static final controllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/millennialmedia/android/MMAdViewController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdView;",
            ">;"
        }
    .end annotation
.end field

.field private appPaused:Z

.field private cacheHandler:Landroid/os/Handler;

.field canAccelerate:Z

.field private handler:Landroid/os/Handler;

.field nextUrl:Ljava/lang/String;

.field overlayTitle:Ljava/lang/String;

.field overlayTransition:Ljava/lang/String;

.field private paused:Z

.field private refreshTimerOn:Z

.field requestInProgress:Z

.field private runnable:Ljava/lang/Runnable;

.field shouldEnableBottomBar:Z

.field shouldLaunchToOverlay:Z

.field shouldMakeOverlayTransparent:Z

.field shouldResizeOverlay:I

.field shouldShowBottomBar:Z

.field shouldShowTitlebar:Z

.field private timeRemaining:J

.field private timeResumed:J

.field transitionTime:J

.field private urlString:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 75
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 76
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    .line 77
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    .line 78
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    .line 79
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    .line 81
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    .line 82
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    .line 83
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    .line 1027
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController$5;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    .line 96
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    .line 97
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 99
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 100
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 101
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 102
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdViewController$1;)V

    const-string v2, "interface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x3ad7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p1, "x1"    # Lcom/millennialmedia/android/MMAdView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->getURLMetaValues(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->getAdType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p1, "x1"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->handleCachedAdResponse(Lcom/millennialmedia/android/VideoAd;)V

    return-void
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/MMAdViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V
    .locals 7
    .param p0, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/4 v4, -0x1

    .line 114
    const-class v3, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v3

    const/4 v1, 0x1

    .line 116
    .local v1, "reassign":Z
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 121
    const-string v2, "MillennialMediaAdSDK"

    const-string v4, "MMAdView found without a view id. Ad requests on this MMAdView are disabled."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 125
    :cond_2
    :try_start_2
    sget-object v2, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 126
    .local v0, "controller":Lcom/millennialmedia/android/MMAdViewController;
    if-nez v0, :cond_3

    .line 128
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController;

    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    .line 129
    .restart local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    sget-object v2, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v1, 0x0

    .line 134
    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    .line 135
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    .line 138
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    const/16 v4, 0xf

    if-ge v2, v4, :cond_4

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refresh interval is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Change to at least 15 to refresh ads."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 161
    :goto_1
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ltz v2, :cond_0

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdViewController;->chooseCachedAdOrAdCall()V

    goto :goto_0

    .line 147
    :cond_4
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-gez v2, :cond_5

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Automatic ad fetching is off with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". You must manually call for ads."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 3
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1669
    new-instance v0, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1670
    .local v0, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->getExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1671
    .local v1, "exp":Ljava/util/Date;
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1673
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/MMAdViewController;->isExpired(Ljava/util/Date;)Z

    move-result v2

    return v2
.end method

.method private cleanUpExpiredAds(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1482
    new-instance v0, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1483
    .local v0, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getAllExpiredAds()Ljava/util/List;

    move-result-object v1

    .line 1484
    .local v1, "expiredAds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1485
    if-eqz v1, :cond_0

    .line 1487
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1489
    const-string v3, "Some ads are expired"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1490
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1491
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 1490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1494
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    .locals 8
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1741
    if-nez p1, :cond_0

    .line 1785
    :goto_0
    return-void

    .line 1749
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1751
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/millennialmedia/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v5, "sdCardAd":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1754
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1755
    .local v2, "files":[Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad directory size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1756
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 1758
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1756
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1760
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1766
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "sdCardAd":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1767
    .local v0, "cacheDirAd":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1769
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1770
    .restart local v2    # "files":[Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad directory size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1771
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 1773
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1771
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1775
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1780
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_4
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1781
    .local v1, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->purgeAdFromDb(Ljava/lang/String;)Z

    move-result v4

    .line 1782
    .local v4, "purged":Z
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1783
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad deleted from database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with succuess? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 1396
    new-instance v7, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1400
    .local v7, "file":Ljava/io/File;
    :try_start_0
    sget-object v14, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 1402
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Downloading Component: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1403
    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v3, "connectURL":Ljava/net/URL;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 1406
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 1407
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v14, "GET"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 1409
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 1410
    .local v13, "stream":Ljava/io/InputStream;
    const-string v14, "Content-Length"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1413
    .local v8, "fileSize":Ljava/lang/String;
    if-nez v13, :cond_1

    .line 1414
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Stream is null"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1460
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "connectURL":Ljava/net/URL;
    .end local v8    # "fileSize":Ljava/lang/String;
    .end local v13    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 1461
    .local v5, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1470
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1471
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 1417
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "connectURL":Ljava/net/URL;
    .restart local v8    # "fileSize":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v10, "out":Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 1422
    .local v1, "buf":[B
    :goto_2
    invoke-virtual {v13, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v9

    .line 1423
    .local v9, "numread":I
    if-gtz v9, :cond_2

    .line 1433
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 1434
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1443
    if-eqz v7, :cond_0

    .line 1447
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 1448
    .local v11, "sizeOnDisk":J
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v8}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v4, "contentLength":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-wide v14

    cmp-long v14, v11, v14

    if-nez v14, :cond_0

    .line 1450
    const/4 v14, 0x1

    goto :goto_1

    .line 1428
    .end local v4    # "contentLength":Ljava/lang/Long;
    .end local v11    # "sizeOnDisk":J
    :cond_2
    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v10, v1, v14, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 1462
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "connectURL":Ljava/net/URL;
    .end local v8    # "fileSize":Ljava/lang/String;
    .end local v9    # "numread":I
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 1463
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1436
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "connectURL":Ljava/net/URL;
    .restart local v8    # "fileSize":Ljava/lang/String;
    .restart local v9    # "numread":I
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 1438
    .local v6, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v14, "MillennialMediaAdSDK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Content caching error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1440
    const/4 v14, 0x0

    goto :goto_1

    .line 1457
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "connectURL":Ljava/net/URL;
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v8    # "fileSize":Ljava/lang/String;
    .end local v9    # "numread":I
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "stream":Ljava/io/InputStream;
    :cond_3
    const-string v14, "MillennialMediaAdSDK"

    const-string v15, "Not connected to the internet"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 1464
    :catch_3
    move-exception v5

    .line 1465
    .local v5, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1466
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v5

    .line 1467
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1452
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "connectURL":Ljava/net/URL;
    .restart local v8    # "fileSize":Ljava/lang/String;
    .restart local v9    # "numread":I
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_5
    move-exception v14

    goto/16 :goto_0
.end method

.method private getAdType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "adtype"    # Ljava/lang/String;

    .prologue
    .line 1169
    const-string v0, "&adtype="

    .line 1170
    .local v0, "type":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 1172
    const-string v1, "MMBannerAdTop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    :goto_0
    return-object v1

    .line 1175
    :cond_0
    const-string v1, "MMBannerAdBottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdBottom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1178
    :cond_1
    const-string v1, "MMBannerAdRectangle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdRectangle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1181
    :cond_2
    const-string v1, "MMFullScreenAdLaunch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMFullScreenAdLaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1184
    :cond_3
    const-string v1, "MMFullScreenAdTransition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMFullScreenAdTransition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1189
    :cond_4
    const-string v1, "MillennialMediaAdSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") **********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "******* SDK DEFAULTED TO MMBannerAdTop. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getNextAd()V
    .locals 2

    .prologue
    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 369
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController$1;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    .line 621
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 622
    return-void
.end method

.method private getURLMetaValues(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 5
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    .local v1, "metaString":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1055
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :cond_0
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&age="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_1
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&gender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_2
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&zip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_3
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1078
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v3, "single"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v3, "married"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v3, "divorced"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v3, "swinger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v3, "relationship"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v3, "engaged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1080
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&marital="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    :cond_5
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&income="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_6
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&kw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    :cond_7
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_8
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_9
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&acid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :cond_a
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mxsdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_b
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&hsht="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_c
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&hswd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_d
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&ethnicity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    :cond_e
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1132
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v3, "straight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v3, "gay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v3, "bisexual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v3, "notsure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1134
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    :cond_10
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&edu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_11
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&children="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    :cond_12
    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&politics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_13
    if-eqz v1, :cond_14

    .line 1155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1159
    :goto_0
    return-object v2

    :cond_14
    const-string v2, ""

    goto :goto_0
.end method

.method private handleCachedAdResponse(Lcom/millennialmedia/android/VideoAd;)V
    .locals 10
    .param p1, "videoAd"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 627
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 628
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 630
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "The reference to the ad view was broken."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 635
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 638
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->isExpired(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 640
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Ad is valid. Saving new ad settings. Download TRUE."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMAdViewController;->writeAdDataToSettings(Lcom/millennialmedia/android/VideoAd;Lcom/millennialmedia/android/MMAdView;)V

    .line 643
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    new-instance v8, Lcom/millennialmedia/android/MMAdViewController$2;

    invoke-direct {v8, p0, p1}, Lcom/millennialmedia/android/MMAdViewController$2;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 654
    :cond_2
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "New ad has expiration date in the past. Not downloading ad content."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_3
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Ad received exists in filesystem but not database. Running checks . . ."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 664
    .local v6, "settings":Landroid/content/SharedPreferences;
    const-string v7, "lastDownloadedAdName"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 665
    .local v5, "lastAdName":Ljava/lang/String;
    const-string v7, "MillennialMediaAdSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last ad name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eqz v5, :cond_0

    .line 668
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    .line 669
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, v5, v7}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 680
    .end local v5    # "lastAdName":Ljava/lang/String;
    .end local v6    # "settings":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v1, 0x0

    .line 683
    .local v1, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v2, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateDeferredViewStart(Ljava/lang/String;)V

    .line 686
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 688
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoImage;

    .line 686
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 691
    :cond_5
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdData(Lcom/millennialmedia/android/VideoAd;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 696
    if-eqz v2, :cond_c

    .line 697
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .line 700
    .end local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v4    # "i":I
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_6
    :goto_2
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 703
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->isExpired(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 706
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Ad is valid. Saving new ad settings."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    new-instance v8, Lcom/millennialmedia/android/MMAdViewController$3;

    invoke-direct {v8, p0, p1}, Lcom/millennialmedia/android/MMAdViewController$3;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 693
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    if-eqz v1, :cond_6

    .line 697
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_2

    .line 696
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_7

    .line 697
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_7
    throw v7

    .line 717
    :cond_8
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "New ad has expiration date in the past. Not downloading ad content. Remove any expired content from the filesystem."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 724
    :cond_9
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 726
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Cached ad is valid. Show."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v7

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 728
    iget-object v7, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v7, :cond_a

    .line 732
    :try_start_3
    iget-object v7, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v7, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 736
    :cond_a
    :goto_5
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Millennial ad return success"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 734
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Exception raised in your MMAdListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 741
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Ad returned exists in db & filesystem but is expired. Deleting."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 696
    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_4

    .line 693
    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3

    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v4    # "i":I
    :cond_c
    move-object v1, v2

    .end local v2    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_2
.end method

.method private isExpired(Ljava/util/Date;)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1678
    if-eqz p1, :cond_0

    .line 1680
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1682
    const/4 v0, 0x1

    .line 1685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 5
    .param p0, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p1, "isFinishing"    # Z

    .prologue
    .line 175
    const-class v2, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 178
    :cond_1
    if-eqz p1, :cond_3

    .line 179
    :try_start_1
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 183
    .local v0, "controller":Lcom/millennialmedia/android/MMAdViewController;
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    .line 185
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 189
    if-eqz p1, :cond_2

    .line 190
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    .line 193
    :cond_2
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 181
    :cond_3
    :try_start_2
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    goto :goto_1
.end method

.method private writeAdDataToSettings(Lcom/millennialmedia/android/VideoAd;Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/VideoAd;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1690
    const-string v1, "Storing ad data in db"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1691
    new-instance v0, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1692
    .local v0, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->storeAd(Lcom/millennialmedia/android/VideoAd;)V

    .line 1693
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1694
    return-void
.end method


# virtual methods
.method public DownloadLastAd(Lcom/millennialmedia/android/MMAdView;)V
    .locals 8
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1620
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "MillennialMediaSettings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1621
    .local v4, "settings":Landroid/content/SharedPreferences;
    const-string v5, "lastDownloadedAdName"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    .local v3, "lastAdName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading last ad: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1625
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1626
    .local v1, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v1, v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    .line 1627
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1628
    if-eqz v0, :cond_1

    .line 1630
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v5, :cond_0

    .line 1634
    :try_start_0
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v5, p1}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V

    .line 1635
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v5, p1}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    :cond_0
    :goto_0
    const-string v5, "MillennialMediaAdSDK"

    const-string v6, "Millennial restarting or finishing caching ad."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    new-instance v6, Lcom/millennialmedia/android/MMAdViewController$6;

    invoke-direct {v6, p0, v0}, Lcom/millennialmedia/android/MMAdViewController$6;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1665
    :goto_1
    return-void

    .line 1637
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "MillennialMediaAdSDK"

    const-string v6, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1652
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "Can\'t find last ad in database, calling for new ad"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1653
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V

    goto :goto_1
.end method

.method public checkForAdNotDownloaded(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 8
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/4 v5, 0x0

    .line 1536
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    .line 1538
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "MillennialMediaSettings"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1539
    .local v4, "settings":Landroid/content/SharedPreferences;
    const-string v6, "pendingDownload"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1540
    .local v1, "downloaded":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pending download?: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1541
    const-string v6, "downloadAttempts"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1542
    .local v0, "attempts":I
    const/4 v6, 0x3

    if-lt v0, v6, :cond_0

    .line 1544
    const-string v6, "Cached ad download failed too many times. Purging it from the database."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1545
    const-string v6, "lastDownloadedAdName"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1546
    .local v3, "lastAdName":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 1547
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1548
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "downloadAttempts"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1549
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v5

    .line 1552
    .end local v1    # "downloaded":Z
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "lastAdName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1600
    const/4 v0, 0x0

    .line 1601
    .local v0, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v3, 0x0

    .line 1604
    .local v3, "existsInDb":Z
    :try_start_0
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    .end local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v1, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->checkIfAdExists(Ljava/lang/String;)Z

    move-result v3

    .line 1606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in database?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1611
    if-eqz v1, :cond_2

    .line 1612
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v0, v1

    .line 1615
    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_0
    return v3

    .line 1608
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1611
    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 1611
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 1612
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_1
    throw v4

    .line 1611
    .end local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .line 1608
    .end local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1

    .end local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_2
    move-object v0, v1

    .end local v1    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0
.end method

.method public checkIfAdExistsInFilesystem(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1564
    const/4 v2, 0x0

    .line 1568
    .local v2, "existsInFilesystem":Z
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1569
    .local v1, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->getButtonCountForAd(Ljava/lang/String;)I

    move-result v3

    .line 1570
    .local v3, "fileCount":I
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->isAdOnSDCard(Ljava/lang/String;)Z

    move-result v5

    .line 1571
    .local v5, "onSDCard":Z
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1573
    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1574
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/millennialmedia/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v0, "adDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1581
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1582
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lt v6, v3, :cond_0

    .line 1584
    const/4 v2, 0x1

    .line 1587
    .end local v4    # "list":[Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last ad "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in filesystem?: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1588
    return v2

    .line 1576
    .end local v0    # "adDir":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "adDir":Ljava/io/File;
    goto :goto_0
.end method

.method declared-synchronized chooseCachedAdOrAdCall()V
    .locals 11

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 208
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 210
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "The reference to the ad view was broken."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 215
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-boolean v8, v8, Lcom/millennialmedia/android/HandShake;->kill:Z

    if-eqz v8, :cond_1

    .line 217
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "The server is no longer allowing ads."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 221
    .restart local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    iget-boolean v8, p0, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    if-eqz v8, :cond_2

    .line 223
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "There is already an ad request in progress. Defering call for new ad"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-object v9, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_3

    .line 233
    :try_start_3
    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v8, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V

    .line 234
    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v8, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    :cond_3
    :goto_1
    :try_start_4
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "There is a download in progress. Defering call for new ad"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Exception raised in your MMAdListener: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 243
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v8, "No download in progress."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkForAdNotDownloaded(Lcom/millennialmedia/android/MMAdView;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 250
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->DownloadLastAd(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 256
    :cond_5
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "No incomplete downloads."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->cleanUpExpiredAds(Lcom/millennialmedia/android/MMAdView;)V

    .line 264
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "MillennialMediaSettings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 265
    .local v6, "settings":Landroid/content/SharedPreferences;
    const-string v8, "lastDownloadedAdName"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "lastAdName":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 270
    invoke-virtual {p0, v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 273
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Ad found in the database"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 277
    invoke-direct {p0, v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 280
    const-string v8, "lastAdViewed"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 281
    .local v1, "adViewed":Z
    const-string v8, "MillennialMediaAdSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last ad viewed?: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-nez v1, :cond_8

    .line 285
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-object v9, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v8, v2, v9, v5}, Lcom/millennialmedia/android/HandShake;->canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 288
    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_6

    .line 292
    :try_start_5
    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v8, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    :cond_6
    :goto_2
    :try_start_6
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Millennial ad return success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 294
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Exception raised in your MMAdListener: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 302
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Outside of the timeout window. Call for a new ad"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V

    goto/16 :goto_0

    .line 308
    :cond_8
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Existing ad has been viewed. Call for a new ad"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V

    goto/16 :goto_0

    .line 315
    .end local v1    # "adViewed":Z
    :cond_9
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Existing ad is expired. Delete and call for a new ad"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0, v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 321
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "MillennialMediaSettings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 322
    .local v7, "settings1":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 323
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "lastDownloadedAdName"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    const-string v8, "Setting last ad name to NULL"

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V

    goto/16 :goto_0

    .line 333
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "settings1":Landroid/content/SharedPreferences;
    :cond_a
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Last ad can\'t be found in the file system. Download again."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->DownloadLastAd(Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 340
    :cond_b
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Last ad can\'t be found in the database. Remove any files from the filesystem and call for new ad."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0, v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 344
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "MillennialMediaSettings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 345
    .restart local v7    # "settings1":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 346
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "lastDownloadedAdName"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    const-string v8, "Setting last ad name to NULL"

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V

    goto/16 :goto_0

    .line 356
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "settings1":Landroid/content/SharedPreferences;
    :cond_c
    const-string v8, "MillennialMediaAdSDK"

    const-string v9, "Last ad name is null. Call for new ad."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public freeMemoryOnDisk(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 13
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const-wide/32 v11, 0xc00000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1506
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1508
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/millennialmedia"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v1, "sdCardFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1511
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1512
    .local v2, "sdCardMem":J
    cmp-long v8, v2, v11

    if-gez v8, :cond_1

    .line 1528
    .end local v1    # "sdCardFile":Ljava/io/File;
    .end local v2    # "sdCardMem":J
    :cond_0
    :goto_0
    return v6

    .restart local v1    # "sdCardFile":Ljava/io/File;
    .restart local v2    # "sdCardMem":J
    :cond_1
    move v6, v7

    .line 1512
    goto :goto_0

    .line 1516
    .end local v1    # "sdCardFile":Ljava/io/File;
    .end local v2    # "sdCardMem":J
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1517
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 1522
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1523
    .local v4, "usedMem":J
    const-string v8, "MillennialMediaAdSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    cmp-long v8, v4, v11

    if-ltz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 1527
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v4    # "usedMem":J
    :catch_0
    move-exception v6

    :cond_3
    move v6, v7

    .line 1528
    goto :goto_0
.end method

.method handleClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;

    .line 757
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController$4;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    .line 944
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 945
    return-void
.end method

.method pauseTimer(Z)V
    .locals 4
    .param p1, "appRequested"    # Z

    .prologue
    .line 961
    monitor-enter p0

    .line 963
    :try_start_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-nez v0, :cond_0

    .line 964
    monitor-exit p0

    .line 982
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    if-eqz v0, :cond_2

    .line 968
    if-eqz p1, :cond_1

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    .line 970
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 974
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 977
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdViewController;->timeResumed:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 980
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    .line 981
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/4 v10, 0x1

    .line 1699
    if-eqz p1, :cond_1

    .line 1701
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1702
    .local v6, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1703
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "lastAdViewed"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1704
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1705
    iget-object v7, p2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v7, :cond_0

    .line 1709
    :try_start_0
    iget-object v7, p2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v7, p2}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launch Video Player. Playing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1715
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/millennialmedia/android/p53ee8cb625;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 1716
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "cached"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1717
    const-string v7, "adName"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    new-instance v0, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1721
    .local v0, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->isAdOnSDCard(Ljava/lang/String;)Z

    move-result v4

    .line 1722
    .local v4, "onSDCard":Z
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1724
    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/millennialmedia/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/video.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1727
    .local v5, "sdCardAdVideo":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1735
    .end local v5    # "sdCardAdVideo":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1737
    .end local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "onSDCard":Z
    .end local v6    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 1711
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "settings":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MillennialMediaAdSDK"

    const-string v8, "Exception raised in your MMAdListener: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1731
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "onSDCard":Z
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method resumeTimer(Z)V
    .locals 5
    .param p1, "appRequested"    # Z

    .prologue
    .line 996
    monitor-enter p0

    .line 998
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-nez v1, :cond_0

    .line 999
    monitor-exit p0

    .line 1024
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    if-nez v1, :cond_1

    .line 1002
    monitor-exit p0

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1004
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 1005
    monitor-exit p0

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1008
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_3

    .line 1010
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "The reference to the ad view was broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit p0

    goto :goto_0

    .line 1014
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 1015
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    .line 1017
    :cond_4
    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    iget v3, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 1018
    :cond_5
    iget v1, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    .line 1019
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1020
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeResumed:J

    .line 1022
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 1023
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
