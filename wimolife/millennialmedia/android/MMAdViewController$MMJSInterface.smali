.class Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;
.super Ljava/lang/Object;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdViewController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p2, "x1"    # Lcom/millennialmedia/android/MMAdViewController$1;

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    return-void
.end method


# virtual methods
.method public countImages(Ljava/lang/String;)V
    .locals 5
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 1848
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1849
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1851
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "The reference to the ad view was broken."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :goto_0
    return-void

    .line 1855
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1857
    if-eqz p1, :cond_2

    .line 1859
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1867
    .local v2, "num":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1869
    if-lez v2, :cond_3

    .line 1872
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v3, :cond_1

    .line 1876
    :try_start_0
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v3, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :cond_1
    :goto_2
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "Millennial ad return success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 1863
    .end local v2    # "num":I
    :cond_2
    const/4 v2, 0x0

    .line 1864
    .restart local v2    # "num":I
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "Image count is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1878
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "Exception raised in your MMAdListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1886
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v3, :cond_4

    .line 1890
    :try_start_1
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v3, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1894
    :cond_4
    :goto_3
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "Millennial ad return failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1892
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "Exception raised in your MMAdListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1906
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2043
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 2044
    return-void
.end method

.method public overlayTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    .line 1956
    return-void
.end method

.method public overlayTransition(Ljava/lang/String;J)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    .line 1967
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-wide p2, v0, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    .line 1968
    return-void
.end method

.method public setLoaded(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 1804
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1805
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1807
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "The reference to the ad view was broken."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :goto_0
    return-void

    .line 1811
    :cond_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_1

    .line 1813
    if-eqz p1, :cond_2

    .line 1817
    :try_start_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 1832
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Millennial ad return success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1819
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1825
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1827
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1834
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Millennial ad return failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shouldAccelerate(Z)V
    .locals 3
    .param p1, "shouldAccelerate"    # Z

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1978
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 1980
    iget-boolean v1, v0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1982
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v1, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    .line 1989
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    goto :goto_0
.end method

.method public shouldEnableBottomBar(Z)V
    .locals 1
    .param p1, "enableBottomBar"    # Z

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    .line 2026
    return-void
.end method

.method public shouldMakeOverlayTransparent(Z)V
    .locals 1
    .param p1, "isTransparent"    # Z

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    .line 2035
    return-void
.end method

.method public shouldOpen(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1916
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1917
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 1919
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "The reference to the ad view was broken."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V

    .line 1926
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_0

    .line 1930
    :try_start_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1932
    :catch_0
    move-exception v1

    .line 1934
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldOverlay(Z)V
    .locals 1
    .param p1, "shouldOverlay"    # Z

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 1946
    return-void
.end method

.method public shouldResizeOverlay(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    .line 1999
    return-void
.end method

.method public shouldShowBottomBar(Z)V
    .locals 1
    .param p1, "showBottomBar"    # Z

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    .line 2017
    return-void
.end method

.method public shouldShowTitlebar(Z)V
    .locals 1
    .param p1, "showTitlebar"    # Z

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    .line 2008
    return-void
.end method

.method public vibrate(I)V
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 2055
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdView;

    .line 2056
    .local v1, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    if-eqz v3, :cond_0

    .line 2058
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2059
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 2061
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2062
    .local v2, "vibrator":Landroid/os/Vibrator;
    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2069
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 2066
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "Advertisement is trying to use vibrator but permissions are missing."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
