.class Lcom/millennialmedia/android/HandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    }
.end annotation


# static fields
.field static apid:Ljava/lang/String; = null

.field private static final handShakeURL:Ljava/lang/String; = "http://ads.mp.mydas.mobi/appConfigServlet?apid="

.field private static sharedInstance:Lcom/millennialmedia/android/HandShake;


# instance fields
.field adTypeHandShakes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/android/HandShake$AdTypeHandShake;",
            ">;"
        }
    .end annotation
.end field

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field deferredViewTimeout:J

.field handShakeCallback:J

.field final handler:Landroid/os/Handler;

.field kill:Z

.field lastHandShake:J

.field private updateHandShakeRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 47
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 51
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 270
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    .line 195
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->loadHandShake(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 198
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/HandShake$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HandShake$1;-><init>(Lcom/millennialmedia/android/HandShake;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->saveHandShake(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 15
    .param p1, "handShakeObject"    # Lorg/json/JSONObject;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 430
    if-nez p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    :try_start_0
    const-string v11, "errors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 437
    const-string v11, "errors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 438
    .local v8, "jsonArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_4

    .line 440
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 442
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 443
    .local v6, "errorObject":Lorg/json/JSONObject;
    const-string v11, "type"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "message"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 445
    const-string v11, "message"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, "message":Ljava/lang/String;
    const-string v11, "type"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 448
    .local v10, "type":Ljava/lang/String;
    const-string v11, "log"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 450
    const-string v11, "MillennialMediaAdSDK"

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 452
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_3
    const-string v11, "prompt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 454
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/millennialmedia/android/HandShake$3;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0, v9}, Lcom/millennialmedia/android/HandShake$3;-><init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 511
    .end local v6    # "errorObject":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v11, "adtypes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 481
    const-string v11, "adtypes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 482
    .local v4, "adTypesObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_6

    .line 484
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "adTypes":[Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    array-length v11, v3

    if-ge v7, v11, :cond_6

    .line 487
    aget-object v11, v3, v7

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 489
    aget-object v11, v3, v7

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 490
    .local v2, "adTypeObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 492
    new-instance v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 493
    .local v1, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 495
    aget-object v11, v3, v7

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v11}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    aget-object v12, v3, v7

    invoke-virtual {v11, v12, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v1    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    .end local v2    # "adTypeObject":Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 504
    .end local v3    # "adTypes":[Ljava/lang/String;
    .end local v4    # "adTypesObject":Lorg/json/JSONObject;
    .end local v7    # "i":I
    :cond_6
    const-string v11, "deferredviewtimeout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 505
    const-string v11, "deferredviewtimeout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iput-wide v11, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 506
    :cond_7
    const-string v11, "kill"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 507
    const-string v11, "kill"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 508
    :cond_8
    const-string v11, "handshakecallback"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 509
    const-string v11, "handshakecallback"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iput-wide v11, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getAuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "auid":Ljava/lang/String;
    const-string v0, "android_idandroid_id"

    .line 251
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 252
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :goto_0
    const/4 v2, 0x0

    .line 262
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 263
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 265
    :cond_3
    const-string v0, "UNKNOWN"

    .line 266
    :cond_4
    return-object v0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadHandShake(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 516
    const/4 v4, 0x0

    .line 517
    .local v4, "settingsFound":Z
    const-string v6, "MillennialMediaSettings"

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 519
    .local v3, "settings":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    .line 552
    :goto_0
    return v5

    .line 523
    :cond_0
    const-string v5, "handshake_deferredviewtimeout"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 524
    const-string v5, "handshake_deferredviewtimeout"

    iget-wide v6, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 525
    :cond_1
    const-string v5, "handshake_kill"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 526
    const-string v5, "handshake_kill"

    iget-boolean v6, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 527
    :cond_2
    const-string v5, "handshake_callback"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 528
    const-string v5, "handshake_callback"

    iget-wide v6, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 531
    :cond_3
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "adTypes":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_5

    .line 534
    new-instance v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 535
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    aget-object v5, v1, v2

    invoke-virtual {v0, v3, v5}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 537
    const/4 v4, 0x1

    .line 538
    iget-object v5, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_5
    const-string v5, "handshake_lasthandshake"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 544
    const-string v5, "handshake_lasthandshake"

    iget-wide v6, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 546
    :cond_6
    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_7

    .line 547
    iget-object v5, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    iget-wide v7, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v9, v11

    sub-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    :cond_7
    if-eqz v4, :cond_8

    .line 550
    const-string v5, "Handshake successfully loaded from shared preferences."

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    :cond_8
    move v5, v4

    .line 552
    goto/16 :goto_0
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 409
    if-eqz p1, :cond_0

    .line 413
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 415
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 421
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 421
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveHandShake(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    const-string v5, "MillennialMediaSettings"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 558
    .local v4, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 561
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "handshake_deferredviewtimeout"

    iget-wide v6, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 562
    const-string v5, "handshake_kill"

    iget-boolean v6, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 563
    const-string v5, "handshake_callback"

    iget-wide v6, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 566
    iget-object v5, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    .local v0, "adType":Ljava/lang/String;
    iget-object v5, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 569
    .local v1, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "adType":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    .end local v1    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    const-string v5, "handshake_lasthandshake"

    iget-wide v6, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 575
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    return-void
.end method

.method static declared-synchronized sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "MillennialMediaAdSDK"

    const-string v2, "No apid set for the handshake."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v0, 0x0

    .line 70
    :goto_0
    monitor-exit v1

    return-object v0

    .line 61
    :cond_0
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    .line 70
    :cond_1
    :goto_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 67
    const-string v0, "Handshake expired, requesting new handshake from the server."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 99
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 103
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;
    .param p3, "videoAd"    # Ljava/lang/String;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 119
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 121
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 84
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isAdTypeDownloading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 157
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 158
    iget-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized lockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 167
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method overrideAdRefresh(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 183
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 186
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 189
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    return-void
.end method

.method declared-synchronized unlockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 176
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 138
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
