.class Lcom/millennialmedia/android/MMAdViewController$4;
.super Ljava/lang/Thread;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V
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
    .line 757
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 762
    const/16 v10, 0xcc

    .line 763
    .local v10, "rc":I
    const/4 v8, 0x0

    .line 766
    .local v8, "mimeTypeString":Ljava/lang/String;
    const-string v11, "Touch occured, opening ad..."

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 768
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$600(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$600(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v7

    .line 772
    .local v7, "locationString":Ljava/lang/String;
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdView;

    .line 773
    .local v1, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v1, :cond_2

    .line 775
    const-string v11, "MillennialMediaAdSDK"

    const-string v12, "The reference to the ad view was broken."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 779
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 781
    const-string v11, "MillennialMediaAdSDK"

    const-string v12, "The ad view does not have a parent activity."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 790
    :cond_3
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$600(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 791
    .local v3, "connectURL":Ljava/net/URL;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 792
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 794
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v11, "GET"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 796
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const-string v12, "Location"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/millennialmedia/android/MMAdViewController;->access$602(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    const-string v11, "Content-Type"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 798
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 800
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 801
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "urlString: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewController;->access$600(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 815
    const/16 v11, 0x12c

    if-lt v10, v11, :cond_4

    const/16 v11, 0x190

    if-lt v10, v11, :cond_3

    .line 817
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "connectURL":Ljava/net/URL;
    :cond_4
    :goto_1
    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 828
    if-eqz v7, :cond_0

    .line 832
    if-nez v8, :cond_5

    .line 833
    const-string v8, ""

    .line 835
    :cond_5
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 836
    .local v4, "destinationURI":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 838
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 840
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "https"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const-string v11, "text/html"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 842
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/pd72c961b0f;

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "canAccelerate"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 844
    const-string v11, "overlayTransition"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v11, "transitionTime"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-wide v12, v12, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 846
    const-string v11, "shouldResizeOverlay"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v11, "shouldShowTitlebar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    const-string v11, "shouldShowBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    const-string v11, "shouldEnableBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    const-string v11, "shouldMakeOverlayTransparent"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 851
    const-string v11, "overlayTitle"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Accelerometer on?: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 856
    invoke-virtual {v0, v6, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 803
    .end local v4    # "destinationURI":Landroid/net/Uri;
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 808
    .local v5, "e":Ljava/net/MalformedURLException;
    goto/16 :goto_1

    .line 810
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    .line 813
    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 859
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "destinationURI":Landroid/net/Uri;
    :cond_7
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "market"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 861
    const-string v11, "Android Market URL, launch the Market Application"

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 862
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v9, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 863
    .local v9, "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 865
    .end local v9    # "myIntent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "rtsp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "video/mp4"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "video/3gpp"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 870
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Video, launch the video player for video at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 871
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 872
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 873
    invoke-virtual {v0, v6, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 875
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "tel"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 877
    const-string v11, "Telephone Number, launch the phone"

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 878
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v9, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 879
    .restart local v9    # "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 881
    .end local v9    # "myIntent":Landroid/content/Intent;
    :cond_b
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "geo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 883
    const-string v11, "Google Maps"

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 884
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v9, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 885
    .restart local v9    # "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 887
    .end local v9    # "myIntent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 889
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".mp4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".3gp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 892
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Video, launch the video player for video at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 893
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 894
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 895
    invoke-virtual {v0, v6, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 900
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_e
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/pd72c961b0f;

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v11, "canAccelerate"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 902
    const-string v11, "overlayTransition"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-string v11, "transitionTime"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-wide v12, v12, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 904
    const-string v11, "shouldResizeOverlay"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string v11, "shouldShowTitlebar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 906
    const-string v11, "shouldShowBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    const-string v11, "shouldEnableBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    const-string v11, "shouldMakeOverlayTransparent"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    const-string v11, "overlayTitle"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Accelerometer on?: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 913
    invoke-virtual {v0, v6, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 916
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_f
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 919
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/pd72c961b0f;

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 920
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v11, "canAccelerate"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 921
    const-string v11, "overlayTransition"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    const-string v11, "transitionTime"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-wide v12, v12, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 923
    const-string v11, "shouldResizeOverlay"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    const-string v11, "shouldShowTitlebar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 925
    const-string v11, "shouldShowBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    const-string v11, "shouldEnableBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    const-string v11, "shouldMakeOverlayTransparent"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 928
    const-string v11, "overlayTitle"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Accelerometer on?: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 932
    invoke-virtual {v0, v6, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 937
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_10
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v9, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 938
    .restart local v9    # "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
