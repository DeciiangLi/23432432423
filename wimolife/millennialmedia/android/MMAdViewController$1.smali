.class Lcom/millennialmedia/android/MMAdViewController$1;
.super Ljava/lang/Thread;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->getNextAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/millennialmedia/android/MMAdView;

    .line 373
    .local v10, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v10, :cond_0

    .line 375
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "The reference to the ad view was broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 619
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 382
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_1

    .line 386
    :try_start_0
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, v10}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_1
    :goto_1
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto :goto_0

    .line 388
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 396
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 399
    const/4 v7, 0x0

    .local v7, "adTypeString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 406
    .local v8, "adUrl":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v1, v10}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v20

    .line 407
    .local v20, "metaValues":Ljava/lang/String;
    iget-boolean v1, v10, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    if-eqz v1, :cond_3

    .line 409
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "*********** Advertising test mode is deprecated. Refer to wiki.millennialmedia.com for testing information. "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v2, v10, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->access$300(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 413
    .local v23, "ua":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 415
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    .line 416
    .local v22, "scale":F
    move-object/from16 v0, v21

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 417
    .local v14, "heightPixels":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    .line 423
    .local v26, "widthPixels":I
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?sdkapid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .local v9, "adUrlBuilder":Ljava/lang/StringBuilder;
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&auid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :goto_2
    if-eqz v23, :cond_9

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&ua="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :goto_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&dm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_4
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&dv=Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&hpx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&wpx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&mmisdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.2.3-11.04.18.a"

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 443
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, v10, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Lcom/millennialmedia/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 444
    const-string v1, "&video=true"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :goto_4
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 449
    :cond_6
    const-string v1, "&cachedvideo=false"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 457
    .end local v9    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "context":Landroid/content/Context;
    .end local v14    # "heightPixels":I
    .end local v20    # "metaValues":Ljava/lang/String;
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    .end local v22    # "scale":F
    .end local v23    # "ua":Ljava/lang/String;
    .end local v26    # "widthPixels":I
    :goto_6
    if-eqz v7, :cond_7

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling for an advertisement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 463
    :try_start_2
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Making ad request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v16, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct/range {v16 .. v16}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 465
    .local v16, "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 466
    .local v18, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v18, :cond_c

    .line 468
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "HTTP response is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 474
    .end local v16    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v18    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "HTTP error: "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 427
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .restart local v14    # "heightPixels":I
    .restart local v20    # "metaValues":Ljava/lang/String;
    .restart local v21    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v22    # "scale":F
    .restart local v23    # "ua":Ljava/lang/String;
    .restart local v26    # "widthPixels":I
    :cond_8
    :try_start_3
    const-string v1, "&auid=UNKNOWN"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 455
    .end local v9    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "heightPixels":I
    .end local v20    # "metaValues":Ljava/lang/String;
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    .end local v22    # "scale":F
    .end local v23    # "ua":Ljava/lang/String;
    .end local v26    # "widthPixels":I
    :catch_2
    move-exception v1

    goto :goto_6

    .line 431
    .restart local v9    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .restart local v14    # "heightPixels":I
    .restart local v20    # "metaValues":Ljava/lang/String;
    .restart local v21    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v22    # "scale":F
    .restart local v23    # "ua":Ljava/lang/String;
    .restart local v26    # "widthPixels":I
    :cond_9
    const-string v1, "&ua=UNKNOWN"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 446
    .restart local v11    # "context":Landroid/content/Context;
    :cond_a
    const-string v1, "&video=false"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 451
    :cond_b
    const-string v1, "&cachedvideo=true"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 473
    .end local v9    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "context":Landroid/content/Context;
    .end local v14    # "heightPixels":I
    .end local v20    # "metaValues":Ljava/lang/String;
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    .end local v22    # "scale":F
    .end local v23    # "ua":Ljava/lang/String;
    .end local v26    # "widthPixels":I
    .restart local v16    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v18    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_c
    :try_start_4
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v15

    .line 476
    .local v15, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v15, :cond_d

    .line 478
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "null entity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 483
    :cond_d
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_f

    .line 485
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Millennial ad return failed. Zero content length returned."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_e

    .line 490
    :try_start_5
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, v10}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 494
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 492
    :catch_3
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 498
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v17

    .line 499
    .local v17, "httpHeader":Lorg/apache/http/Header;
    if-eqz v17, :cond_11

    .line 501
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 503
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 505
    const/16 v24, 0x0

    .line 508
    .local v24, "videoAd":Lcom/millennialmedia/android/VideoAd;
    :try_start_6
    new-instance v25, Lcom/millennialmedia/android/VideoAd;

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v25

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 510
    .end local v24    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    .local v25, "videoAd":Lcom/millennialmedia/android/VideoAd;
    :try_start_7
    const-string v1, "MillennialMediaAdSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current environment: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 513
    const/4 v1, 0x1

    move-object/from16 v0, v25

    iput-boolean v1, v0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 522
    :cond_10
    if-eqz v25, :cond_11

    .line 524
    const-string v1, "MillennialMediaAdSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached video ad JSON received: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v0, v25

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMAdViewController;->access$500(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V

    .line 618
    .end local v7    # "adTypeString":Ljava/lang/String;
    .end local v8    # "adUrl":Ljava/lang/String;
    .end local v15    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v16    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v17    # "httpHeader":Lorg/apache/http/Header;
    .end local v18    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v25    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 516
    .restart local v7    # "adTypeString":Ljava/lang/String;
    .restart local v8    # "adUrl":Ljava/lang/String;
    .restart local v15    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v16    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v17    # "httpHeader":Lorg/apache/http/Header;
    .restart local v18    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v24    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_4
    move-exception v13

    .local v13, "e1":Ljava/lang/IllegalStateException;
    :goto_9
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Millennial ad return failed. Invalid response data."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 517
    .end local v13    # "e1":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v13

    .local v13, "e1":Ljava/io/IOException;
    :goto_a
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Millennial ad return failed. Invalid response data."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 528
    .end local v13    # "e1":Ljava/io/IOException;
    .end local v24    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_12
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 531
    const-string v1, "X-MM-Video"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v27

    .line 532
    .local v27, "xHeader":Lorg/apache/http/Header;
    if-eqz v27, :cond_13

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 534
    invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 535
    .restart local v11    # "context":Landroid/content/Context;
    invoke-static {v11}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, v10, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Lcom/millennialmedia/android/HandShake;->didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V

    .line 538
    .end local v11    # "context":Landroid/content/Context;
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMAdViewController$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/MMAdViewController$1$1;-><init>(Lcom/millennialmedia/android/MMAdViewController$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 567
    :try_start_8
    iget-boolean v1, v10, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    if-eqz v1, :cond_15

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "content":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "/"

    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_8

    .line 577
    .end local v3    # "content":Ljava/lang/String;
    :catch_6
    move-exception v19

    .line 579
    .local v19, "ioe":Ljava/io/IOException;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in the ad webview: "

    move-object/from16 v0, v19

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_14

    .line 584
    :try_start_9
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, v10}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 588
    :cond_14
    :goto_c
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Millennial ad webview failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 573
    .end local v19    # "ioe":Ljava/io/IOException;
    :cond_15
    :try_start_a
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v3

    .restart local v3    # "content":Ljava/lang/String;
    goto :goto_b

    .line 586
    .end local v3    # "content":Ljava/lang/String;
    .restart local v19    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 593
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "ioe":Ljava/io/IOException;
    .end local v27    # "xHeader":Lorg/apache/http/Header;
    :cond_16
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_17

    .line 597
    :try_start_b
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, v10}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 601
    :cond_17
    :goto_d
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Millennial ad return failed. Invalid mime type returned."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 599
    :catch_8
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 608
    .end local v7    # "adTypeString":Ljava/lang/String;
    .end local v8    # "adUrl":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v16    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v17    # "httpHeader":Lorg/apache/http/Header;
    .end local v18    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_18
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_19

    .line 612
    :try_start_c
    iget-object v1, v10, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, v10}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 616
    :cond_19
    :goto_e
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "No network available, can\'t call for ads."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 614
    :catch_9
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 517
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "adTypeString":Ljava/lang/String;
    .restart local v8    # "adUrl":Ljava/lang/String;
    .restart local v15    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v16    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v17    # "httpHeader":Lorg/apache/http/Header;
    .restart local v18    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v25    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_a
    move-exception v13

    move-object/from16 v24, v25

    .end local v25    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    .restart local v24    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    goto/16 :goto_a

    .line 516
    .end local v24    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    .restart local v25    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_b
    move-exception v13

    move-object/from16 v24, v25

    .end local v25    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    .restart local v24    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    goto/16 :goto_9
.end method
