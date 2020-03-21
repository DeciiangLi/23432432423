.class public Lcom/millennialmedia/android/pd72c961b0f;
.super Landroid/app/Activity;
.source "pd72c961b0f.java"

# interfaces
.implements Lcom/millennialmedia/android/AccelerometerListener;


# static fields
.field private static context:Landroid/content/Context;


# instance fields
.field private mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

.field protected shouldAccelerate:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/millennialmedia/android/pd72c961b0f;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public didAccelerate(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accelerometer x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/millennialmedia/android/pd72c961b0f;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:didAccelerate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->injectJS(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public didShake(F)V
    .locals 3
    .param p1, "force"    # F

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone shaken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/millennialmedia/android/pd72c961b0f;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:didShake("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->injectJS(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sput-object p0, Lcom/millennialmedia/android/pd72c961b0f;->context:Landroid/content/Context;

    .line 35
    const-wide/16 v5, 0x258

    .line 36
    .local v5, "time":J
    const/4 v7, 0x0

    .line 37
    .local v7, "transition":Ljava/lang/String;
    const/4 v4, 0x0

    .line 38
    .local v4, "padding":I
    const/4 v8, 0x0

    .line 39
    .local v8, "titlebar":Z
    const/4 v9, 0x0

    .line 40
    .local v9, "title":Ljava/lang/String;
    const/4 v10, 0x1

    .line 41
    .local v10, "bottombar":Z
    const/4 v11, 0x1

    .line 42
    .local v11, "bottombarEnabled":Z
    const/4 v12, 0x0

    .line 43
    .local v12, "isTransparent":Z
    const/4 v13, 0x0

    .line 45
    .local v13, "cachedAdView":Z
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/pd72c961b0f;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 46
    .local v14, "extras":Landroid/os/Bundle;
    if-eqz v14, :cond_0

    .line 48
    const-string v2, "transitionTime"

    const-wide/16 v16, 0x258

    move-wide/from16 v0, v16

    invoke-virtual {v14, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 49
    const-string v2, "overlayTransition"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    const-string v2, "shouldResizeOverlay"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 51
    const-string v2, "shouldShowTitlebar"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 52
    const-string v2, "overlayTitle"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 53
    const-string v2, "shouldShowBottomBar"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 54
    const-string v2, "shouldEnableBottomBar"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 55
    const-string v2, "shouldMakeOverlayTransparent"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 56
    const-string v2, "cachedAdView"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Bottom bar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Should accelerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/pd72c961b0f;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Tranparent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cached Ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/pd72c961b0f;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 65
    new-instance v2, Lcom/millennialmedia/android/MMAdViewWebOverlay;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/pd72c961b0f;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/pd72c961b0f;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/pd72c961b0f;->setContentView(Landroid/view/View;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/pd72c961b0f;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/pd72c961b0f;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->loadWebContent(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/pd72c961b0f;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "canAccelerate"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/pd72c961b0f;->shouldAccelerate:Ljava/lang/Boolean;

    .line 69
    if-eqz v13, :cond_1

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/pd72c961b0f;->setRequestedOrientation(I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/pd72c961b0f;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    const-string v0, "Overlay onDestroy"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    const-string v0, "Overlay onPause"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->stopListening()V

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/pd72c961b0f;->setResult(I)V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    const-string v0, "Overlay onResume"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/millennialmedia/android/pd72c961b0f;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/millennialmedia/android/AccelerometerHelper;->startListening(Lcom/millennialmedia/android/AccelerometerListener;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 102
    return-void
.end method
