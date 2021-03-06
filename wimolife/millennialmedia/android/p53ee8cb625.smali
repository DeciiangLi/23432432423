.class public Lcom/millennialmedia/android/p53ee8cb625;
.super Landroid/app/Activity;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/p53ee8cb625$VideoServer;,
        Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_DELAYED_BUTTON:I = 0x3

.field private static final MESSAGE_EVENTLOG_CHECK:I = 0x2

.field private static final MESSAGE_INACTIVITY_ANIMATION:I = 0x1


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private controlsLayout:Landroid/widget/RelativeLayout;

.field private current:Ljava/lang/String;

.field private currentVideoPosition:I

.field private handler:Landroid/os/Handler;

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private isCachedAd:Z

.field private lastVideoPosition:I

.field private logSet:Lcom/millennialmedia/android/EventLogSet;

.field private mPausePlay:Landroid/widget/Button;

.field private mRewind:Landroid/widget/Button;

.field private mStop:Landroid/widget/Button;

.field private mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

.field private paused:Z

.field private relLayout:Landroid/widget/RelativeLayout;

.field private showBottomBar:Z

.field private showCountdownHud:Z

.field private videoAd:Lcom/millennialmedia/android/VideoAd;

.field private videoCompleted:Z

.field protected videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->paused:Z

    .line 77
    iput-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->showBottomBar:Z

    .line 79
    iput v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    .line 81
    iput-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    .line 1316
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/p53ee8cb625;->dispatchButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/MillennialMediaView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/p53ee8cb625;->videoPlayerOnCompletion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/p53ee8cb625;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->paused:Z

    return v0
.end method

.method static synthetic access$202(Lcom/millennialmedia/android/p53ee8cb625;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/millennialmedia/android/p53ee8cb625;->paused:Z

    return p1
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/p53ee8cb625;I)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/p53ee8cb625;->playVideo(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/p53ee8cb625;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mPausePlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625;->current:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/p53ee8cb625;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->dismiss()V

    return-void
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/p53ee8cb625;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    return v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/p53ee8cb625;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->hideHud()V

    return-void
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/p53ee8cb625;)Lcom/millennialmedia/android/VideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/p53ee8cb625;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    return-object v0
.end method

.method private canFadeButtons()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 915
    const-string v0, "Video ad player closed"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/p53ee8cb625;->finish()V

    .line 921
    return-void
.end method

.method private dispatchButtonClick(Ljava/lang/String;)V
    .locals 25
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 1017
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Button Clicked: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1018
    if-eqz p1, :cond_5

    .line 1020
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/p53ee8cb625;->pauseVideo()V

    .line 1021
    const-string v20, "mmsdk"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1023
    const/16 v20, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, "action":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1026
    const-string v20, "restartVideo"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1028
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 1033
    .local v7, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1035
    if-eqz v7, :cond_4

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1042
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->lastVideoPosition:I

    .line 1044
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    .line 1046
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "i: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1047
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/millennialmedia/android/VideoImage;

    .line 1050
    .local v6, "buttonData":Lcom/millennialmedia/android/VideoImage;
    if-eqz v6, :cond_3

    .line 1052
    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_0

    .line 1054
    iget-object v5, v6, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 1055
    .local v5, "button":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 1057
    .local v15, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1061
    .end local v5    # "button":Landroid/widget/ImageButton;
    .end local v15    # "message":Landroid/os/Message;
    :cond_0
    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_1

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 1064
    .restart local v15    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v21, v0

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1067
    .end local v15    # "message":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1068
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->showHud(Z)V

    .line 1069
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x3e8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1044
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1078
    .end local v6    # "buttonData":Lcom/millennialmedia/android/VideoImage;
    .end local v7    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v12    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1080
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->playVideo(I)V

    .line 1240
    .end local v3    # "action":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 1084
    .restart local v3    # "action":Ljava/lang/String;
    :cond_6
    const-string v20, "endVideo"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1086
    const-string v20, "End"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1089
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->current:Ljava/lang/String;

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/p53ee8cb625;->dismiss()V

    goto :goto_1

    .line 1101
    :cond_7
    const-string v20, "Unrecognized mmsdk:// URL"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1120
    .end local v3    # "action":Ljava/lang/String;
    :cond_8
    const/16 v18, 0xcc

    .line 1121
    .local v18, "rc":I
    const/16 v16, 0x0

    .line 1122
    .local v16, "mimeTypeString":Ljava/lang/String;
    move-object/from16 v14, p1

    .line 1123
    .local v14, "locationString":Ljava/lang/String;
    move-object/from16 v19, p1

    .line 1128
    .local v19, "redirectString":Ljava/lang/String;
    :cond_9
    move-object/from16 v14, v19

    .line 1129
    if-eqz v19, :cond_5

    .line 1131
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v9, "connectURL":Ljava/net/URL;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 1133
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 1134
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const-string v20, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 1136
    const-string v20, "Location"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1137
    const-string v20, "Content-Type"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1138
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 1140
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Response Code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Response Message: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1141
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "urlString: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1155
    const/16 v20, 0x12c

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    const/16 v20, 0x190

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 1157
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "connectURL":Ljava/net/URL;
    :cond_a
    :goto_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "locationString: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1160
    if-eqz v14, :cond_5

    .line 1162
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1170
    .local v10, "destinationURI":Landroid/net/Uri;
    if-nez v16, :cond_b

    .line 1171
    const-string v16, ""

    .line 1173
    :cond_b
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mmsdk"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1175
    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v20

    const-string v21, "endVideo"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1179
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->current:Ljava/lang/String;

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 1182
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/p53ee8cb625;->dismiss()V

    goto/16 :goto_1

    .line 1105
    .end local v10    # "destinationURI":Landroid/net/Uri;
    .end local v14    # "locationString":Ljava/lang/String;
    .end local v16    # "mimeTypeString":Ljava/lang/String;
    .end local v18    # "rc":I
    .end local v19    # "redirectString":Ljava/lang/String;
    :cond_c
    const-string v20, "mmbrowser"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1107
    const/16 v20, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1108
    .local v4, "browserAction":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1110
    const-string v20, "Launch browser"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1113
    :try_start_1
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1114
    .local v17, "myIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1115
    .end local v17    # "myIntent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v11}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1143
    .end local v4    # "browserAction":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v14    # "locationString":Ljava/lang/String;
    .restart local v16    # "mimeTypeString":Ljava/lang/String;
    .restart local v18    # "rc":I
    .restart local v19    # "redirectString":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1148
    .local v11, "e":Ljava/net/MalformedURLException;
    goto/16 :goto_2

    .line 1150
    .end local v11    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v11

    .line 1152
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1186
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v10    # "destinationURI":Landroid/net/Uri;
    :cond_d
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "http"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "https"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    :cond_e
    const-string v20, "text/html"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1188
    new-instance v13, Landroid/content/Intent;

    const-class v20, Lcom/millennialmedia/android/pd72c961b0f;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1189
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1190
    const-string v20, "cachedAdView"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1191
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1193
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_f
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "market"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1195
    const-string v20, "Android Market URL, launch the Market Application"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1196
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1197
    .restart local v17    # "myIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1199
    .end local v17    # "myIntent":Landroid/content/Intent;
    :cond_10
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "rtsp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "http"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    const-string v20, "video/mp4"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    const-string v20, "video/3gpp"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1202
    :cond_11
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->playVideo(I)V

    goto/16 :goto_1

    .line 1204
    :cond_12
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "tel"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1206
    const-string v20, "Telephone Number, launch the phone"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1207
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.DIAL"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1208
    .restart local v17    # "myIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1210
    .end local v17    # "myIntent":Landroid/content/Intent;
    :cond_13
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "http"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1213
    new-instance v13, Landroid/content/Intent;

    const-class v20, Lcom/millennialmedia/android/pd72c961b0f;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    .restart local v13    # "intent":Landroid/content/Intent;
    invoke-virtual {v13, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1215
    const-string v20, "cachedAdView"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1216
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1218
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_14
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mmbrowser"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1220
    const/16 v20, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1221
    .restart local v4    # "browserAction":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1223
    const-string v20, "Launch browser"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1226
    :try_start_2
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1227
    .restart local v17    # "myIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 1228
    .end local v17    # "myIntent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .local v11, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v11}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1234
    .end local v4    # "browserAction":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :cond_15
    const-string v20, "Uncertain about content, launch to browser"

    invoke-static/range {v20 .. v20}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1236
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1237
    .restart local v17    # "myIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private hideHud()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 650
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    :cond_1
    return-void
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->pause()V

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->paused:Z

    .line 960
    const-string v0, "Video paused"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 963
    :cond_0
    return-void
.end method

.method private playVideo(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/p53ee8cb625;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 665
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playVideo path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 667
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 669
    :cond_0
    const-string v5, "Sorry. There was a problem playing the video"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 812
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 674
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v5, "MillennialMediaSettings"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/millennialmedia/android/p53ee8cb625;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 675
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 676
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "lastAdViewed"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    .line 679
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->current:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v5, :cond_4

    .line 681
    iget-boolean v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    if-eqz v5, :cond_5

    .line 683
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_1

    .line 686
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v5, :cond_3

    .line 688
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/p53ee8cb625$6;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/p53ee8cb625$6;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 700
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/p53ee8cb625$7;

    invoke-direct {v6, p0, p1}, Lcom/millennialmedia/android/p53ee8cb625$7;-><init>(Lcom/millennialmedia/android/p53ee8cb625;I)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 707
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/p53ee8cb625$8;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/p53ee8cb625$8;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 712
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 714
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 715
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 716
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MillennialMediaAdSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    const-string v5, "MillennialMediaSettings"

    invoke-virtual {p0, v5, v8}, Lcom/millennialmedia/android/p53ee8cb625;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 803
    .restart local v3    # "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 804
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "lastAdViewed"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 805
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 807
    const-string v5, "Sorry. There was a problem playing the video"

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 808
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v5, :cond_1

    .line 809
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    goto/16 :goto_0

    .line 722
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1, v5}, Lcom/millennialmedia/android/p53ee8cb625;->startServer(Ljava/lang/String;IZ)V

    .line 735
    :cond_4
    iput-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->current:Ljava/lang/String;

    .line 737
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v5, :cond_8

    .line 739
    iget-boolean v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    if-eqz v5, :cond_7

    .line 741
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_1

    .line 744
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-nez v5, :cond_6

    .line 746
    const-string v5, "Cached Ad. Starting Server"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 748
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    invoke-virtual {p0, v2, p1, v5}, Lcom/millennialmedia/android/p53ee8cb625;->startServer(Ljava/lang/String;IZ)V

    .line 779
    :goto_1
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 780
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 781
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    goto/16 :goto_0

    .line 728
    :cond_5
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 729
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 730
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    goto/16 :goto_0

    .line 753
    :cond_6
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/p53ee8cb625$9;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/p53ee8cb625$9;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 765
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/p53ee8cb625$10;

    invoke-direct {v6, p0, p1}, Lcom/millennialmedia/android/p53ee8cb625$10;-><init>(Lcom/millennialmedia/android/p53ee8cb625;I)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 772
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/p53ee8cb625$11;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/p53ee8cb625$11;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_1

    .line 786
    :cond_7
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 787
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 788
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 789
    iget-object v5, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    goto/16 :goto_0

    .line 794
    :cond_8
    const-string v5, "MillennialMediaAdSDK"

    const-string v6, "Video Player is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setButtonAlpha(Landroid/widget/ImageButton;F)V
    .locals 4
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "alpha"    # F

    .prologue
    const/4 v3, 0x1

    .line 361
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 362
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 364
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 365
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 366
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    return-void
.end method

.method private showHud(Z)V
    .locals 10
    .param p1, "restart"    # Z

    .prologue
    const/16 v9, 0xa

    const/4 v8, -0x1

    const-wide/16 v6, 0x3e8

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 597
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 599
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 600
    .local v0, "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 602
    .local v1, "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    .line 603
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    const-string v3, " seconds remaining ..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 607
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    .line 608
    if-eqz p1, :cond_2

    .line 610
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 623
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    const/16 v3, 0x192

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 626
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 627
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 628
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 631
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 632
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    .end local v0    # "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 615
    .restart local v0    # "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    if-eqz v2, :cond_3

    .line 616
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    iget v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 636
    .end local v0    # "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    if-eqz p1, :cond_5

    .line 638
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_6

    .line 639
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 641
    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private videoPlayerOnCompletion(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 972
    iput-boolean v6, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    .line 973
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->logSet:Lcom/millennialmedia/android/EventLogSet;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/p53ee8cb625;->logEndEvent(Lcom/millennialmedia/android/EventLogSet;)V

    .line 974
    invoke-virtual {p0}, Lcom/millennialmedia/android/p53ee8cb625;->stopServer()V

    .line 975
    const-string v3, "Video player on complete"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 976
    if-eqz p1, :cond_0

    .line 978
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/p53ee8cb625;->dispatchButtonClick(Ljava/lang/String;)V

    .line 980
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_1

    .line 982
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-nez v3, :cond_2

    .line 984
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->dismiss()V

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 988
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 993
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 994
    .local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/android/p53ee8cb625;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 997
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 998
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1000
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1001
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1004
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1006
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 480
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v4, :cond_4

    .line 482
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 487
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 488
    .local v3, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/android/p53ee8cb625;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 489
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 492
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    invoke-static {v4, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 493
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    iget-wide v5, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->canFadeButtons()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 502
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v4, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 503
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 504
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 505
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 506
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 507
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 510
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 512
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/android/p53ee8cb625;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    goto :goto_1

    .line 517
    .end local v1    # "i":I
    .end local v3    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    .line 390
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 472
    :cond_0
    :goto_0
    return v13

    .line 393
    :pswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->canFadeButtons()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 395
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    .line 396
    .local v8, "videoImage":Lcom/millennialmedia/android/VideoImage;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v9, v8, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v10, v8, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 397
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v9, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 398
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 399
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 400
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 401
    iget-object v9, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 405
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    .line 407
    .restart local v8    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :try_start_0
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 408
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v11, v8, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v9, v8, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    iget v10, v8, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 411
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v9, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 412
    new-instance v9, Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v11, v8, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, p0, v10, v11}, Lcom/millennialmedia/android/p53ee8cb625$DelayedAnimationListener;-><init>(Lcom/millennialmedia/android/p53ee8cb625;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 414
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 415
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Beginning animation to visibility. Fade duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Button: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 417
    iget-object v9, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 409
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 422
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v8    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :pswitch_2
    :try_start_1
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v9}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 424
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v9}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    .line 425
    .local v1, "currentPosition":I
    iget v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->lastVideoPosition:I

    if-le v1, v9, :cond_4

    .line 427
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v9, :cond_3

    .line 429
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 431
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoLogEvent;

    .line 432
    .local v7, "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    if-eqz v7, :cond_2

    .line 434
    iget-wide v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    iget v11, p0, Lcom/millennialmedia/android/p53ee8cb625;->lastVideoPosition:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    iget-wide v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    int-to-long v11, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 436
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v9, v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v4, v9, :cond_2

    .line 440
    :try_start_2
    iget-object v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {p0, v9}, Lcom/millennialmedia/android/p53ee8cb625;->logEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 441
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 468
    .end local v1    # "currentPosition":I
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v7    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 429
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "currentPosition":I
    .restart local v3    # "i":I
    .restart local v7    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 447
    .end local v3    # "i":I
    .end local v7    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_3
    :try_start_4
    iput v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->lastVideoPosition:I

    .line 451
    :cond_4
    iget-boolean v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    if-eqz v9, :cond_5

    .line 453
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v9, v9, Lcom/millennialmedia/android/VideoAd;->duration:J

    int-to-long v11, v1

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v5, v9, v11

    .line 454
    .local v5, "seconds":J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_6

    .line 456
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 457
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .end local v1    # "currentPosition":I
    .end local v5    # "seconds":J
    :cond_5
    :goto_5
    iget-object v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 461
    .restart local v1    # "currentPosition":I
    .restart local v5    # "seconds":J
    :cond_6
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->hideHud()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logBeginEvent(Lcom/millennialmedia/android/EventLogSet;)V
    .locals 3
    .param p1, "set"    # Lcom/millennialmedia/android/EventLogSet;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 529
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 533
    :try_start_0
    const-string v2, "Cached video begin event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 535
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/p53ee8cb625;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 540
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V
    .locals 3
    .param p1, "button"    # Lcom/millennialmedia/android/VideoImage;

    .prologue
    .line 564
    const-string v2, "Cached video button event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 567
    iget-object v2, p1, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/p53ee8cb625;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 571
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logEndEvent(Lcom/millennialmedia/android/EventLogSet;)V
    .locals 3
    .param p1, "set"    # Lcom/millennialmedia/android/EventLogSet;

    .prologue
    .line 548
    const-string v2, "Cached video end event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 551
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/p53ee8cb625;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 555
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 580
    move-object v0, p1

    .line 581
    .local v0, "logString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging event to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 582
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/millennialmedia/android/p53ee8cb625$5;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/android/p53ee8cb625$5;-><init>(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 593
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v25, "Setting up the video player"

    invoke-static/range {v25 .. v25}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 102
    if-eqz p1, :cond_6

    .line 104
    const-string v25, "isCachedAd"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    .line 105
    const-string v25, "videoCompleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    .line 106
    const-string v25, "videoPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    .line 116
    :goto_0
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x190

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v26 .. v28}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setDrawingCacheBackgroundColor(I)V

    .line 121
    new-instance v23, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v23, "videoLayout":Landroid/widget/RelativeLayout;
    const/high16 v25, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 125
    const/16 v25, 0x19a

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 126
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v22, "videoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xd

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/high16 v25, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheBackgroundColor(I)V

    .line 131
    new-instance v24, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-direct/range {v24 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v24, "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xd

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    new-instance v25, Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v25, v0

    const/16 v26, 0x19b

    invoke-virtual/range {v25 .. v26}, Lcom/millennialmedia/android/MillennialMediaView;->setId(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/millennialmedia/android/MillennialMediaView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v25

    const/16 v26, -0x2

    invoke-interface/range {v25 .. v26}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    invoke-virtual/range {v25 .. v26}, Lcom/millennialmedia/android/MillennialMediaView;->setDrawingCacheBackgroundColor(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v8, "buttonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Is Cached Ad: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 148
    new-instance v25, Landroid/os/Handler;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    .line 151
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->setRequestedOrientation(I)V

    .line 152
    if-nez p1, :cond_8

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/p53ee8cb625;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "adName"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 157
    .local v16, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 160
    .local v11, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_0
    new-instance v12, Lcom/millennialmedia/android/AdDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v12, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    if-eqz v12, :cond_10

    .line 167
    invoke-virtual {v12}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v11, v12

    .line 171
    .end local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_1
    new-instance v25, Lcom/millennialmedia/android/EventLogSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/millennialmedia/android/EventLogSet;-><init>(Lcom/millennialmedia/android/VideoAd;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->logSet:Lcom/millennialmedia/android/EventLogSet;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->showBottomBar:Z

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    .line 177
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->logSet:Lcom/millennialmedia/android/EventLogSet;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->logBeginEvent(Lcom/millennialmedia/android/EventLogSet;)V

    .line 187
    .end local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v16    # "name":Ljava/lang/String;
    :goto_2
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x1a4

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 193
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->showHud(Z)V

    .line 197
    :cond_2
    const/4 v7, 0x0

    .line 198
    .local v7, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 201
    :cond_3
    if-eqz v7, :cond_c

    .line 203
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 208
    new-instance v9, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/millennialmedia"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v9, "cacheDir":Ljava/io/File;
    :goto_4
    new-instance v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 212
    .local v17, "newButton":Landroid/widget/ImageButton;
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 215
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "buttonPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 217
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 218
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 219
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/p53ee8cb625;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 220
    add-int/lit8 v25, v14, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 221
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v18, "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Array #: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageButton;->getId()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " View ID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageButton;->getId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " Relative to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v25, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " position: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v25, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 225
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v26, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->position2:I

    move/from16 v26, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    move/from16 v26, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    move/from16 v27, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    move/from16 v28, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/VideoImage;

    .line 232
    .local v5, "button":Lcom/millennialmedia/android/VideoImage;
    iget-object v0, v5, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 234
    new-instance v25, Lcom/millennialmedia/android/p53ee8cb625$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/android/p53ee8cb625$1;-><init>(Lcom/millennialmedia/android/p53ee8cb625;Lcom/millennialmedia/android/VideoImage;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_4
    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_a

    .line 246
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 248
    .local v15, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v25, v0

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    .end local v15    # "message":Landroid/os/Message;
    :goto_5
    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 259
    .restart local v15    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    move-object/from16 v25, v0

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v26, v0

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 203
    .end local v15    # "message":Landroid/os/Message;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 110
    .end local v5    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v6    # "buttonPath":Ljava/lang/String;
    .end local v7    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v8    # "buttonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "cacheDir":Ljava/io/File;
    .end local v14    # "i":I
    .end local v17    # "newButton":Landroid/widget/ImageButton;
    .end local v18    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "videoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23    # "videoLayout":Landroid/widget/RelativeLayout;
    .end local v24    # "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/p53ee8cb625;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "cached"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    .line 111
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    .line 112
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    goto/16 :goto_0

    .line 163
    .restart local v8    # "buttonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v22    # "videoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v23    # "videoLayout":Landroid/widget/RelativeLayout;
    .restart local v24    # "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/database/sqlite/SQLiteException;
    :goto_6
    :try_start_2
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    if-eqz v11, :cond_0

    .line 167
    invoke-virtual {v11}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto/16 :goto_1

    .line 166
    .end local v13    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v25

    :goto_7
    if-eqz v11, :cond_7

    .line 167
    invoke-virtual {v11}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_7
    throw v25

    .line 181
    .end local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v16    # "name":Ljava/lang/String;
    :cond_8
    const-string v25, "videoAd"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 182
    const-string v25, "logSet"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Lcom/millennialmedia/android/EventLogSet;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->logSet:Lcom/millennialmedia/android/EventLogSet;

    .line 183
    const-string v25, "shouldShowBottomBar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->showBottomBar:Z

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    goto/16 :goto_2

    .line 210
    .restart local v7    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .restart local v14    # "i":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/p53ee8cb625;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .restart local v9    # "cacheDir":Ljava/io/File;
    goto/16 :goto_4

    .line 252
    .restart local v5    # "button":Lcom/millennialmedia/android/VideoImage;
    .restart local v6    # "buttonPath":Ljava/lang/String;
    .restart local v17    # "newButton":Landroid/widget/ImageButton;
    .restart local v18    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 263
    .end local v5    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v6    # "buttonPath":Ljava/lang/String;
    .end local v9    # "cacheDir":Ljava/io/File;
    .end local v17    # "newButton":Landroid/widget/ImageButton;
    .end local v18    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .end local v7    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v14    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->showBottomBar:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 270
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 272
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    .local v10, "controlsLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    new-instance v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->mRewind:Landroid/widget/Button;

    .line 277
    new-instance v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->mPausePlay:Landroid/widget/Button;

    .line 278
    new-instance v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/p53ee8cb625;->mStop:Landroid/widget/Button;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mRewind:Landroid/widget/Button;

    move-object/from16 v25, v0

    const v26, 0x1080025

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v25, v0

    const v26, 0x1080023

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mStop:Landroid/widget/Button;

    move-object/from16 v25, v0

    const v26, 0x1080038

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 284
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v19, "pauseLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 286
    .local v21, "stopLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v20, "rewindLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xe

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getId()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mRewind:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 294
    const/16 v25, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mStop:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mRewind:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/millennialmedia/android/p53ee8cb625$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625$2;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/millennialmedia/android/p53ee8cb625$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625$3;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->mStop:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/millennialmedia/android/p53ee8cb625$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625$4;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .end local v10    # "controlsLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "pauseLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "rewindLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "stopLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 344
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 349
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->setContentView(Landroid/view/View;)V

    .line 350
    return-void

    .line 166
    .restart local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v16    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v25

    move-object v11, v12

    .end local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_7

    .line 163
    .end local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_6

    .end local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_10
    move-object v11, v12

    .end local v12    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 927
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 928
    iget-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/millennialmedia/android/p53ee8cb625;->stopServer()V

    .line 932
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 898
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 899
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    .line 902
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    invoke-virtual {p0}, Lcom/millennialmedia/android/p53ee8cb625;->stopServer()V

    .line 909
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 846
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 847
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v7, :cond_6

    .line 849
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v7}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    if-nez v7, :cond_6

    .line 851
    iget-boolean v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 853
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 854
    iget-boolean v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->showCountdownHud:Z

    if-eqz v7, :cond_0

    .line 856
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v7, v7, Lcom/millennialmedia/android/VideoAd;->duration:J

    iget v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 857
    .local v5, "seconds":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    .line 859
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 860
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    .end local v5    # "seconds":J
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 869
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 870
    .local v0, "button":Lcom/millennialmedia/android/VideoImage;
    const-wide/16 v1, 0x0

    .line 872
    .local v1, "delay":J
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 874
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 875
    .local v4, "message":Landroid/os/Message;
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    iget v9, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 876
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_1

    .line 877
    const-wide/16 v1, 0x1f4

    .line 878
    :cond_1
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 881
    .end local v4    # "message":Landroid/os/Message;
    :cond_2
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 883
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 884
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->handler:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    add-long/2addr v8, v1

    iget-wide v10, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v8, v10

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 867
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 864
    .end local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v1    # "delay":J
    .end local v3    # "i":I
    .restart local v5    # "seconds":J
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/android/p53ee8cb625;->hideHud()V

    goto :goto_0

    .line 888
    .end local v5    # "seconds":J
    :cond_5
    iget v7, p0, Lcom/millennialmedia/android/p53ee8cb625;->currentVideoPosition:I

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/p53ee8cb625;->playVideo(I)V

    .line 891
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 940
    const-string v0, "videoPosition"

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    :cond_0
    const-string v0, "isCachedAd"

    iget-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->isCachedAd:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    const-string v0, "videoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 944
    const-string v0, "logSet"

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->logSet:Lcom/millennialmedia/android/EventLogSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 945
    const-string v0, "shouldShowBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->showBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 948
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 949
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 818
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 819
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_2

    .line 821
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoCompleted:Z

    if-ne v3, v4, :cond_2

    .line 823
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 826
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 828
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 829
    .local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/android/p53ee8cb625;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 830
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 831
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 833
    iget-object v4, p0, Lcom/millennialmedia/android/p53ee8cb625;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_2
    return-void
.end method

.method public declared-synchronized startServer(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "isSDCard"    # Z

    .prologue
    .line 1249
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    if-nez v1, :cond_0

    .line 1251
    new-instance v1, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    invoke-direct {v1, p0, p1, p3}, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;-><init>(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    .line 1252
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1253
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 1255
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    iget-object v3, v3, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->port:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/video.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 1258
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Lcom/millennialmedia/android/p53ee8cb625$12;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/p53ee8cb625$12;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1270
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Lcom/millennialmedia/android/p53ee8cb625$13;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/p53ee8cb625$13;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1276
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Lcom/millennialmedia/android/p53ee8cb625$14;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/p53ee8cb625$14;-><init>(Lcom/millennialmedia/android/p53ee8cb625;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1281
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 1282
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 1283
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1287
    .restart local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    :try_start_1
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Null Video View"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1249
    .end local v0    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopServer()V
    .locals 1

    .prologue
    .line 1297
    monitor-enter p0

    :try_start_0
    const-string v0, "Stop video server"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    invoke-virtual {v0}, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->requestStop()V

    .line 1301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->videoServer:Lcom/millennialmedia/android/p53ee8cb625$VideoServer;

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    :cond_1
    monitor-exit p0

    return-void

    .line 1297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
