.class public Lcom/wimolife/DailyFunnyVideo/DFV;
.super Landroid/app/Activity;
.source "DFV.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

.field private static final DOWNLOAD_BOX:I = 0x100

.field private static final KEYPROMPT:Ljava/lang/String; = "FREEVERSIONEXPERIED"

.field private static final NOTIFYTIME:J = 0xafc8L

.field private static NUM_INIT:I = 0x0

.field private static final PICK_CODE:I = 0x538

.field private static final SNAP_CODE:I = 0x537

.field public static final TAG:Ljava/lang/String; = "DailyFunnyVideo"

.field private static final TMPFILE_PATH:Ljava/lang/String;

.field private static final UPLOAD_BOX:I = 0x101

.field private static final imgHeight:I = 0x32

.field private static final imgWidth:I = 0x12c

.field private static rData:Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

.field public static speed:I


# instance fields
.field private UpBytes:I

.field private Upfilelen:I

.field aListener:Landroid/content/DialogInterface$OnClickListener;

.field final activity:Landroid/app/Activity;

.field private adManager:Lcom/pontiflex/mobile/webview/sdk/IAdManager;

.field bClickListener:Landroid/view/View$OnClickListener;

.field private browser:Ljava/lang/String;

.field buyListener:Landroid/content/DialogInterface$OnClickListener;

.field private currentIndex:I

.field private debug:Z

.field private dis:Ljava/io/DataInputStream;

.field private downloadUrl:Ljava/lang/String;

.field private fos:Ljava/io/FileOutputStream;

.field private handler:Landroid/os/Handler;

.field httpURL_:Ljava/lang/String;

.field private imageSize:I

.field private imageUrl:Ljava/lang/String;

.field private imgViewAD:Landroid/widget/ImageView;

.field private isDrawGif:Z

.field private isExit:Z

.field private list:Landroid/widget/ImageButton;

.field private mBottom:Landroid/widget/Button;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mTitleLabel:Landroid/widget/TextView;

.field private mTop:Landroid/widget/Button;

.field private mVideoView:Landroid/widget/VideoView;

.field private m_Intent:Landroid/content/Intent;

.field private m_Notification:Landroid/app/Notification;

.field private m_NotificationManager:Landroid/app/NotificationManager;

.field private m_PendingIntent:Landroid/app/PendingIntent;

.field private main_layout:Landroid/widget/RelativeLayout;

.field private mc:Landroid/widget/MediaController;

.field myViewUpdateHandler:Landroid/os/Handler;

.field private next:Landroid/widget/ImageButton;

.field private notifyTypeIsAD:Z

.field private partnerid:I

.field private pd:Landroid/app/ProgressDialog;

.field private play:Landroid/widget/ImageButton;

.field private prev:Landroid/widget/ImageButton;

.field private rand:Ljava/util/Random;

.field private rank:Landroid/widget/ImageButton;

.field private tenMinutes:I

.field private text_h1:Landroid/widget/TextView;

.field private text_h2:Landroid/widget/TextView;

.field private text_h3:Landroid/widget/TextView;

.field private text_h4:Landroid/widget/TextView;

.field private text_h5:Landroid/widget/TextView;

.field private topdown_layout:Landroid/widget/RelativeLayout;

.field private topup_layout:Landroid/widget/RelativeLayout;

.field private translateIn:Ljava/lang/Runnable;

.field private translateInAnimation:Landroid/view/animation/Animation;

.field private translateOut:Ljava/lang/Runnable;

.field private translateOutAnimation:Landroid/view/animation/Animation;

.field private uri:Landroid/net/Uri;

.field private userEmail:Ljava/lang/String;

.field private videoFileName:Ljava/lang/String;

.field xListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera/snap_temp.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/DFV;->TMPFILE_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/DFV;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 125
    const/16 v0, 0xa

    sput v0, Lcom/wimolife/DailyFunnyVideo/DFV;->speed:I

    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/wimolife/DailyFunnyVideo/DFV;->NUM_INIT:I

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->userEmail:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->dis:Ljava/io/DataInputStream;

    .line 87
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->uri:Landroid/net/Uri;

    .line 89
    iput-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    .line 92
    const-string v0, "http://www.andhat.com/dfv.php?index="

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->httpURL_:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->fos:Ljava/io/FileOutputStream;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->videoFileName:Ljava/lang/String;

    .line 95
    iput v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->currentIndex:I

    .line 97
    const v0, 0x5b8d80

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->tenMinutes:I

    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->rand:Ljava/util/Random;

    .line 102
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->topup_layout:Landroid/widget/RelativeLayout;

    .line 103
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTop:Landroid/widget/Button;

    .line 106
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->topdown_layout:Landroid/widget/RelativeLayout;

    .line 107
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h1:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h2:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h3:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h4:Landroid/widget/TextView;

    .line 111
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h5:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mBottom:Landroid/widget/Button;

    .line 115
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->main_layout:Landroid/widget/RelativeLayout;

    .line 116
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    .line 117
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTitleLabel:Landroid/widget/TextView;

    .line 118
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    .line 119
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->play:Landroid/widget/ImageButton;

    .line 120
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    .line 121
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->list:Landroid/widget/ImageButton;

    .line 122
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->rank:Landroid/widget/ImageButton;

    .line 124
    iput-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->isDrawGif:Z

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mHandler:Landroid/os/Handler;

    .line 130
    const/16 v0, 0x4d90

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->partnerid:I

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imageSize:I

    .line 132
    const-string v0, "app_android"

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->browser:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->handler:Landroid/os/Handler;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ads.buzzcity.net/show.php?partnerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->partnerid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imgsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imageUrl:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://click.buzzcity.net/click.php?partnerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->partnerid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->downloadUrl:Ljava/lang/String;

    .line 139
    iput-object p0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->activity:Landroid/app/Activity;

    .line 145
    iput-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->isExit:Z

    .line 147
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$1;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$1;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->myViewUpdateHandler:Landroid/os/Handler;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->notifyTypeIsAD:Z

    .line 383
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$2;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$2;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 395
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$3;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$3;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mClickListener:Landroid/view/View$OnClickListener;

    .line 425
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$4;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$4;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->buyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 431
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$5;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$5;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->xListener:Landroid/content/DialogInterface$OnClickListener;

    .line 436
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$6;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$6;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->bClickListener:Landroid/view/View$OnClickListener;

    .line 492
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$7;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$7;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->aListener:Landroid/content/DialogInterface$OnClickListener;

    .line 575
    iput v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->Upfilelen:I

    .line 576
    iput v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->UpBytes:I

    .line 961
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$8;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$8;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateOut:Ljava/lang/Runnable;

    .line 967
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/DFV$9;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$9;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateIn:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTitleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->videoFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h5:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/wimolife/DailyFunnyVideo/DFV;)Lcom/pontiflex/mobile/webview/sdk/IAdManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->adManager:Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->rand:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$17(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$19(Lcom/wimolife/DailyFunnyVideo/DFV;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->doShare()V

    return-void
.end method

.method static synthetic access$2(Lcom/wimolife/DailyFunnyVideo/DFV;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->currentIndex:I

    return v0
.end method

.method static synthetic access$20(Lcom/wimolife/DailyFunnyVideo/DFV;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->userEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$22(Lcom/wimolife/DailyFunnyVideo/DFV;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->currentIndex:I

    return-void
.end method

.method static synthetic access$23(Lcom/wimolife/DailyFunnyVideo/DFV;)V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->loadDFV()V

    return-void
.end method

.method static synthetic access$24(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$25(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->list:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$26(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->rank:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$27()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/wimolife/DailyFunnyVideo/DFV;->TMPFILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imgViewAD:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wimolife/DailyFunnyVideo/DFV;I)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/wimolife/DailyFunnyVideo/DFV;->saveSetting(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$32()Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/wimolife/DailyFunnyVideo/DFV;->rData:Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    return-object v0
.end method

.method static synthetic access$33(Lcom/wimolife/DailyFunnyVideo/DFV;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    return v0
.end method

.method static synthetic access$34(Lcom/wimolife/DailyFunnyVideo/DFV;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->videoFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/wimolife/DailyFunnyVideo/DFV;)Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->fos:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wimolife/DailyFunnyVideo/DFV;)V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->playVideo()V

    return-void
.end method

.method static synthetic access$5(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->topup_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->topdown_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/wimolife/DailyFunnyVideo/DFV;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mBottom:Landroid/widget/Button;

    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    if-eqz p0, :cond_1

    .line 585
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 586
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 588
    .local v0, "buffer":[C
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 590
    .local v2, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 594
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 596
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    .end local v0    # "buffer":[C
    .end local v1    # "n":I
    .end local v2    # "reader":Ljava/io/Reader;
    .end local v3    # "writer":Ljava/io/Writer;
    :goto_1
    return-object v4

    .line 591
    .restart local v0    # "buffer":[C
    .restart local v1    # "n":I
    .restart local v2    # "reader":Ljava/io/Reader;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    .end local v1    # "n":I
    .end local v2    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v4

    .line 594
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 595
    throw v4

    .line 598
    .end local v0    # "buffer":[C
    .end local v3    # "writer":Ljava/io/Writer;
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method private doShare()V
    .locals 3

    .prologue
    .line 481
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 483
    const-string v1, "Friendly Prompt:"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 484
    const-string v1, "You can pick or snapshot your favorite funny video and share with others!\nPlease don\'t upload sex related video. It will be deleted once be found! After review, if the content and quality are good, we\'ll add it to our server."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 485
    const-string v1, "PickUp"

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->aListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 486
    const-string v1, "Snapshot"

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->aListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    const-string v1, "Cancel"

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->aListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 488
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 490
    return-void
.end method

.method private loadDFV()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 860
    :try_start_0
    const-string v7, "DRHU_VIDEO.3gp"

    .line 861
    .local v7, "fileName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {p0, v7, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v7    # "fileName":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTitleLabel:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    const-string v0, "Download"

    const-string v1, "Loading, Please Wait..."

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->pd:Landroid/app/ProgressDialog;

    .line 869
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wimolife/DailyFunnyVideo/DFV$12;

    invoke-direct {v1, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$12;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 916
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 918
    return-void

    .line 862
    :catch_0
    move-exception v6

    .line 863
    .local v6, "e":Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "DailyFunnyVideo"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    const-string v1, "Error:"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OK"

    move-object v0, p0

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wimolife/DailyFunnyVideo/MyUtil;->showAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 832
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 833
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 834
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 835
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 837
    :try_start_0
    const-string v2, "content://com.wimolife.DailyFunnyVideo/DRHU_VIDEO.3gp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 838
    .local v1, "myUri":Landroid/net/Uri;
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mc:Landroid/widget/MediaController;

    .line 839
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/content/res/RefIQ8740f402GhpLtArvgMEe;->md51fc53bfa9bfa29ecc9222eff337c77f6(Landroid/widget/VideoView;)V

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 841
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 843
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v2, v1}, Landroid/content/res/RefUM8740f402dlVvcaBcqpfn;->md55eaadd1800ca6c54d6d84ef1b9c2c99f(Landroid/widget/VideoView;Landroid/net/Uri;)V

    .line 844
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    .line 845
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mc:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 846
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 847
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mc:Landroid/widget/MediaController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 848
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mc:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->bringToFront()V

    .line 849
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mc:Landroid/widget/MediaController;

    iget v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->tenMinutes:I

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    .line 850
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/content/res/RefXW8740f402OLfDuMcJOeUy;->md598cc26fa252fae74514bcef0a044b87c(Landroid/widget/VideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v1    # "myUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "DailyFunnyVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTitleLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :try_start_1
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/content/res/RefIQ8740f402GhpLtArvgMEe;->md51fc53bfa9bfa29ecc9222eff337c77f6(Landroid/widget/VideoView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private readSetting()I
    .locals 4

    .prologue
    .line 378
    const-string v2, "FREEVERSIONEXPERIED"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 379
    .local v1, "settingfile":Landroid/content/SharedPreferences;
    const-string v2, "FREEVERSIONEXPERIED"

    sget v3, Lcom/wimolife/DailyFunnyVideo/DFV;->NUM_INIT:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, "ret":I
    return v0
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0x32

    const/4 v1, 0x0

    .line 1004
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v6, :cond_1

    .line 1017
    .end local p0    # "img":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 1005
    .restart local p0    # "img":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x12c

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 1008
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1009
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1011
    .local v4, "height":I
    const/high16 v0, 0x43960000    # 300.0f

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 1012
    .local v9, "scaleWidth":F
    const/high16 v0, 0x42480000    # 50.0f

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 1014
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1015
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1016
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 1017
    goto :goto_0
.end method

.method private saveSetting(I)V
    .locals 3
    .param p1, "str"    # I

    .prologue
    .line 372
    const-string v1, "FREEVERSIONEXPERIED"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    .local v0, "settingfile":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FREEVERSIONEXPERIED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    return-void
.end method


# virtual methods
.method public clickBanner(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "myIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "myIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->downloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 999
    .restart local v0    # "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->startActivity(Landroid/content/Intent;)V

    .line 1000
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 922
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 923
    .local v0, "keycode":I
    packed-switch v0, :pswitch_data_0

    .line 937
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 925
    :pswitch_0
    iget v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->currentIndex:I

    invoke-direct {p0, v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->saveSetting(I)V

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/content/res/RefIQ8740f402GhpLtArvgMEe;->md51fc53bfa9bfa29ecc9222eff337c77f6(Landroid/widget/VideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_1
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->isExit:Z

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->finish()V

    .line 931
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 933
    :cond_0
    iput-boolean v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->isExit:Z

    goto :goto_0

    .line 928
    :catch_0
    move-exception v2

    goto :goto_1

    .line 923
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method doNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgDesc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 230
    const-string v1, ""

    if-eq p1, v1, :cond_1

    const-string v1, ""

    if-eq p2, v1, :cond_1

    .line 231
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/DFV;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_NotificationManager:Landroid/app/NotificationManager;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://action.sponsormob.com/?e=2&p=4261&c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 235
    .local v0, "mUri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->notifyTypeIsAD:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 236
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Intent:Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Intent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Intent:Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_PendingIntent:Landroid/app/PendingIntent;

    .line 241
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    .line 243
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    const v2, 0x7f02001b

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 247
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    const v2, -0xff01

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 248
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    const/16 v2, 0x12c

    iput v2, v1, Landroid/app/Notification;->ledOnMS:I

    .line 249
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/app/Notification;->ledOffMS:I

    .line 250
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 253
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    iput-object p2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 256
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 259
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    const-string v2, "New App!"

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_PendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v2, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 262
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_NotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->m_Notification:Landroid/app/Notification;

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 264
    .end local v0    # "mUri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 945
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 946
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 947
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 948
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 949
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 950
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 951
    .local v4, "temp":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02000f

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 952
    :cond_0
    invoke-static {v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 956
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 956
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getRemoteSeverData()Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 181
    new-instance v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    invoke-direct {v8, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    .line 184
    .local v8, "temp":Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;
    :try_start_0
    const-string v4, "http://www.androidhat.org/newPkg.php"

    .line 185
    .local v4, "httpURL":Ljava/lang/String;
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-ne v10, v13, :cond_0

    .line 186
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->notifyTypeIsAD:Z

    .line 187
    const-string v4, "http://www.wimolife.com/newPkg.php"

    .line 189
    :cond_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 193
    .local v1, "con":Ljava/net/HttpURLConnection;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v2, "dis":Ljava/io/DataInputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 203
    .local v6, "read":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v6

    if-gez v6, :cond_1

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "strRes":Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "pkgInfo":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 212
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->id:I

    .line 213
    const/4 v10, 0x1

    aget-object v10, v5, v10

    iput-object v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgName:Ljava/lang/String;

    .line 214
    const/4 v10, 0x2

    aget-object v10, v5, v10

    iput-object v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgDesc:Ljava/lang/String;

    .line 226
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "httpURL":Ljava/lang/String;
    .end local v5    # "pkgInfo":[Ljava/lang/String;
    .end local v6    # "read":I
    .end local v7    # "strRes":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :goto_1
    return-object v8

    .line 204
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "con":Ljava/net/HttpURLConnection;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "httpURL":Ljava/lang/String;
    .restart local v6    # "read":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_1
    int-to-char v10, v6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "httpURL":Ljava/lang/String;
    .end local v6    # "read":I
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    iput v12, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->id:I

    .line 223
    const-string v10, "com.wimolife.wallpaper.fireworks"

    iput-object v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgName:Ljava/lang/String;

    .line 224
    const-string v10, "Try our latest live wallpaper Fireworks!"

    iput-object v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgDesc:Ljava/lang/String;

    goto :goto_1

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "con":Ljava/net/HttpURLConnection;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "httpURL":Ljava/lang/String;
    .restart local v5    # "pkgInfo":[Ljava/lang/String;
    .restart local v6    # "read":I
    .restart local v7    # "strRes":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    iput v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->id:I

    .line 217
    const-string v10, "com.wimolife.PhoneSketch"

    iput-object v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgName:Ljava/lang/String;

    .line 218
    const-string v10, "Try our latest app Phone Sketch!"

    iput-object v10, v8, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgDesc:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public handleUpload(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 540
    :try_start_0
    const-string v6, "content"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 542
    .local v1, "fileInputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->dis:Ljava/io/DataInputStream;

    .line 543
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 544
    .local v4, "len2":I
    iget-boolean v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v6, :cond_0

    const-string v6, "DailyFunnyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "length="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->uploadNew()V

    .line 573
    .end local v1    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "len2":I
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v5, "temp":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 552
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    .line 553
    .local v3, "len1":I
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 554
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->dis:Ljava/io/DataInputStream;

    .line 555
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 556
    .restart local v4    # "len2":I
    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_4

    .line 557
    :cond_3
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Why length is not equal"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 566
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "len1":I
    .end local v4    # "len2":I
    .end local v5    # "temp":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "DailyFunnyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "len1":I
    .restart local v4    # "len2":I
    .restart local v5    # "temp":Ljava/io/File;
    :cond_4
    :try_start_1
    iget-boolean v6, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v6, :cond_5

    const-string v6, "DailyFunnyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "len="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_5
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->uploadNew()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 568
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "len1":I
    .end local v4    # "len2":I
    .end local v5    # "temp":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DailyFunnyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "DailyFunnyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 514
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "DailyFunnyVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    const/16 v2, 0x537

    if-ne p1, v2, :cond_3

    if-ne p2, v5, :cond_3

    .line 516
    sget-object v2, Lcom/wimolife/DailyFunnyVideo/DFV;->TMPFILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/DFV;->handleUpload(Ljava/lang/String;)V

    .line 535
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 536
    :cond_2
    :goto_0
    return-void

    .line 517
    :cond_3
    const/16 v2, 0x538

    if-ne p1, v2, :cond_1

    if-ne p2, v5, :cond_1

    .line 518
    if-eqz p3, :cond_1

    .line 519
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->uri:Landroid/net/Uri;

    .line 520
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v2, :cond_4

    const-string v2, "DailyFunnyVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_4
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "path":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v2, :cond_5

    const-string v2, "DailyFunnyVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 527
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v2, :cond_6

    const-string v2, "DailyFunnyVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_6
    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->handleUpload(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/16 v2, 0x1388

    .line 979
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imgViewAD:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 985
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imgViewAD:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 990
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 993
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 784
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "DailyFunnyVideo"

    const-string v1, "onCompletion: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTitleLabel:Landroid/widget/TextView;

    const-string v1, "\nTouch Video Screen To Show Media Control!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mc:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->show(I)V

    .line 787
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 788
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 790
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 791
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0, v5}, Lcom/wimolife/DailyFunnyVideo/DFV;->requestWindowFeature(I)Z

    .line 274
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->setContentView(I)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 278
    .local v10, "notifySettings":Landroid/content/SharedPreferences;
    if-eqz v10, :cond_0

    .line 279
    const-string v0, "RemotePkgID"

    const/4 v1, -0x1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 280
    .local v12, "sID":I
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 282
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getRemoteSeverData()Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    move-result-object v0

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/DFV;->rData:Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    .line 285
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/wimolife/DailyFunnyVideo/DFV$10;

    invoke-direct {v1, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$10;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    .line 295
    const-wide/32 v2, 0xafc8

    .line 285
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "sID":I
    :cond_0
    new-instance v0, Lcom/airpush/android/Airpush;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "11778"

    const-string v3, "1303511197426136252"

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 301
    invoke-static {p0}, Lcom/apperhand/device/android/p04f43892e3;->initSDK(Landroid/content/Context;)V

    .line 302
    new-instance v9, Lcom/Leadbolt/AdController;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "976632820"

    invoke-direct {v9, v0, v1}, Lcom/Leadbolt/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    .local v9, "myController":Lcom/Leadbolt/AdController;
    invoke-virtual {v9}, Lcom/Leadbolt/AdController;->loadNotification()V

    .line 306
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/pontiflex/mobile/webview/sdk/AdManagerFactory;->createInstance(Landroid/app/Application;)Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->adManager:Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    .line 308
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->adManager:Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    invoke-interface {v0, v4}, Lcom/pontiflex/mobile/webview/sdk/IAdManager;->setRegistrationRequired(Z)V

    .line 309
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->adManager:Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    sget-object v1, Lcom/pontiflex/mobile/webview/sdk/IAdManager$RegistrationMode;->RegistrationAdHoc:Lcom/pontiflex/mobile/webview/sdk/IAdManager$RegistrationMode;

    invoke-interface {v0, v1}, Lcom/pontiflex/mobile/webview/sdk/IAdManager;->setRegistrationMode(Lcom/pontiflex/mobile/webview/sdk/IAdManager$RegistrationMode;)V

    .line 311
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 312
    .local v8, "mNow":Ljava/util/Calendar;
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/wimolife/DailyFunnyVideo/DFV;->NUM_INIT:I

    .line 313
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->readSetting()I

    move-result v0

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->currentIndex:I

    .line 315
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v0, :cond_1

    const-string v0, "DailyFunnyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->topup_layout:Landroid/widget/RelativeLayout;

    .line 319
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTop:Landroid/widget/Button;

    .line 320
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTop:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->topdown_layout:Landroid/widget/RelativeLayout;

    .line 324
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h1:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h2:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h3:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h4:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h5:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->text_h5:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mBottom:Landroid/widget/Button;

    .line 335
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mBottom:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->main_layout:Landroid/widget/RelativeLayout;

    .line 339
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    .line 340
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mTitleLabel:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    .line 342
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->play:Landroid/widget/ImageButton;

    .line 343
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    .line 344
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->list:Landroid/widget/ImageButton;

    .line 345
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->rank:Landroid/widget/ImageButton;

    .line 346
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->bClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->play:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->bClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->bClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->list:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->bClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->rank:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->bClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/DFV;->loadDFV()V

    .line 357
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->imgViewAD:Landroid/widget/ImageView;

    .line 358
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateInAnimation:Landroid/view/animation/Animation;

    .line 359
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateOutAnimation:Landroid/view/animation/Animation;

    .line 361
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 362
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->translateIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/chitika/ads/ChitikaView;

    .line 365
    .local v7, "mAdView":Lcom/chitika/ads/ChitikaView;
    const-string v0, "drhu0000"

    invoke-virtual {v7, v0}, Lcom/chitika/ads/ChitikaView;->setClient(Ljava/lang/String;)V

    .line 366
    const-string v0, "34d700c0-ebb9-012e-76a5-123139202dc6"

    invoke-virtual {v7, v0}, Lcom/chitika/ads/ChitikaView;->setAdUnitId(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v7}, Lcom/chitika/ads/ChitikaView;->loadAd()V

    .line 369
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 794
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "DailyFunnyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onError: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    if-eqz p1, :cond_1

    .line 796
    invoke-static {p1}, Landroid/content/res/RefRH9da352eedQZbLCbbGnvy;->md5ae287881be078ba099a7a9712404efd5(Landroid/media/MediaPlayer;)V

    .line 797
    invoke-static {p1}, Landroid/content/res/RefZG9da352eeLaYllVHDbwRQ;->md5580bf3a66ea7489e8efccc35d6f1d43b(Landroid/media/MediaPlayer;)V

    .line 798
    invoke-static {p1}, Landroid/content/res/RefXY9da352eehZKklWVWGFNh;->md5757a3c1c5432d9349e3d1ca212ea2b4d(Landroid/media/MediaPlayer;)V

    .line 799
    const/4 p1, 0x0

    .line 801
    :cond_1
    const-string v1, "Error:"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Android MediaPlayer can\'t play this video. Please report\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->videoFileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")\nto drhu00@yahoo.com \nThank You!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OK"

    move-object v0, p0

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wimolife/DailyFunnyVideo/MyUtil;->showAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 802
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 803
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 806
    return v6
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mMediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 813
    .local v1, "mVideoWidth":I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 814
    .local v0, "mVideoHeight":I
    iget-boolean v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "DailyFunnyVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    move v4, v1

    .line 816
    .local v4, "videoWW":I
    move v3, v0

    .line 817
    .local v3, "videoHH":I
    const/16 v5, 0x140

    if-ge v1, v5, :cond_1

    .line 818
    const/16 v4, 0x140

    .line 819
    mul-int/lit16 v5, v0, 0x140

    div-int v3, v5, v1

    .line 821
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 822
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 823
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 827
    invoke-static {p1}, Landroid/content/res/RefGL9da352eeGxOMhmIWKfhn;->md5bdef0b52b1aec1b86f1f3d86a7bcb041(Landroid/media/MediaPlayer;)V

    .line 829
    :cond_2
    return-void
.end method

.method public uploadFileToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "actionUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v13, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 605
    .local v20, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "userid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->userEmail:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v26, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 608
    .local v18, "npos":I
    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 609
    .local v17, "newName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "BOUNDARY":Ljava/lang/String;
    const-string v7, "--"

    .local v7, "PREFIX":Ljava/lang/String;
    const-string v5, "\r\n"

    .line 613
    .local v5, "LINEND":Ljava/lang/String;
    const-string v6, "multipart/form-data"

    .line 614
    .local v6, "MULTIPART_FROM_DATA":Ljava/lang/String;
    const-string v4, "UTF-8"

    .line 616
    .local v4, "CHARSET":Ljava/lang/String;
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 617
    .local v25, "uri":Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 618
    .local v9, "conn":Ljava/net/HttpURLConnection;
    const/16 v26, 0x1388

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 619
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 620
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 621
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 622
    const-string v26, "POST"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 623
    const-string v26, "connection"

    const-string v27, "keep-alive"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v26, "Charsert"

    const-string v27, "UTF-8"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v26, "Content-Type"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, ";boundary="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v19, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 630
    .local v19, "outStream":Ljava/io/DataOutputStream;
    if-eqz v13, :cond_0

    .line 631
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_3

    .line 660
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v23, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_5

    .line 672
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 675
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 676
    .local v10, "end_data":[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 677
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->flush()V

    .line 679
    const-string v22, ""

    .line 681
    .local v22, "responseType":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    .line 682
    .local v21, "res":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    const-string v26, "DailyFunnyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "res: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1
    const/16 v26, 0xc8

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 684
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 685
    .local v14, "in":Ljava/io/InputStream;
    invoke-static {v14}, Lcom/wimolife/DailyFunnyVideo/DFV;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v22

    .line 686
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->debug:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    const-string v26, "DailyFunnyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "responseType: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v14    # "in":Ljava/io/InputStream;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V

    .line 689
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 690
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 691
    .local v16, "m":Landroid/os/Message;
    const/16 v26, 0x101

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 692
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->myViewUpdateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void

    .line 631
    .end local v10    # "end_data":[B
    .end local v16    # "m":Landroid/os/Message;
    .end local v21    # "res":I
    .end local v22    # "responseType":Ljava/lang/String;
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 632
    .local v12, "file":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v24, "sb1":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v26, "Content-Disposition: form-data; name=\"myfile[]\"; filename=\""

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "\""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v28, "Content-Type: application/octet-stream; charset="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->dis:Ljava/io/DataInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->available()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wimolife/DailyFunnyVideo/DFV;->Upfilelen:I

    .line 643
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wimolife/DailyFunnyVideo/DFV;->UpBytes:I

    .line 644
    const/16 v26, 0x400

    move/from16 v0, v26

    new-array v8, v0, [B

    .line 645
    .local v8, "buffer":[B
    const/4 v15, 0x0

    .line 646
    .local v15, "len":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->dis:Ljava/io/DataInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->read([B)I

    move-result v15

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_4

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->dis:Ljava/io/DataInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->close()V

    .line 656
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_0

    .line 647
    :cond_4
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v8, v1, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wimolife/DailyFunnyVideo/DFV;->UpBytes:I

    move/from16 v26, v0

    add-int v26, v26, v15

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wimolife/DailyFunnyVideo/DFV;->UpBytes:I

    goto :goto_2

    .line 661
    .end local v8    # "buffer":[B
    .end local v12    # "file":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "len":I
    .end local v24    # "sb1":Ljava/lang/StringBuilder;
    .restart local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 662
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v26, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "\""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v28, "Content-Type: text/plain; charset="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v28, "Content-Transfer-Encoding: 8bit"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public uploadNew()V
    .locals 4

    .prologue
    .line 697
    const-string v0, "Upload video to server..."

    const-string v1, "Please be patient!"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV;->pd:Landroid/app/ProgressDialog;

    .line 698
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wimolife/DailyFunnyVideo/DFV$11;

    invoke-direct {v1, p0}, Lcom/wimolife/DailyFunnyVideo/DFV$11;-><init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 717
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 718
    return-void
.end method
