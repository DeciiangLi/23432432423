.class Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/HandShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdTypeHandShake"
.end annotation


# instance fields
.field downloading:Z

.field lastVideo:J

.field refreshInterval:Ljava/lang/String;

.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;

.field videoInterval:J


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 293
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 286
    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    .line 294
    return-void
.end method


# virtual methods
.method canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, 0x3e8

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canRequestVideo() Current Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " last video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Video interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 309
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;
    .param p3, "videoAd"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    invoke-virtual {v0, p3}, Lcom/millennialmedia/android/AdDatabaseHelper;->getDeferredViewStart(Ljava/lang/String;)J

    move-result-wide v1

    .line 320
    .local v1, "deferredViewStart":J
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

    iget-wide v5, v5, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    const/4 v3, 0x1

    .line 328
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "adTypeObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    if-eqz p1, :cond_1

    .line 346
    :try_start_0
    const-string v1, "videointerval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "videointerval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    .line 349
    :cond_0
    const-string v1, "adrefresh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "adrefresh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 4
    .param p1, "settings"    # Landroid/content/SharedPreferences;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "settingsFound":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_videointerval_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_videointerval_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_adrefresh_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_adrefresh_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    .line 371
    :cond_2
    return v0
.end method

.method loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v1, "MillennialMediaSettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    .local v0, "settings":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 384
    :cond_0
    return-void
.end method

.method save(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 399
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 400
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    return-void
.end method

.method save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake_lastvideo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake_videointerval_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 391
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake_adrefresh_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    :cond_0
    return-void
.end method

.method updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    return-void
.end method
