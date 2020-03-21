.class public Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;
.super Landroid/app/Activity;
.source "p83ab0674d4.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTube"

.field private static final imgHeight:I = 0x28

.field private static final imgWidth:I = 0x12c


# instance fields
.field final activity:Landroid/app/Activity;

.field bClickListener:Landroid/view/View$OnClickListener;

.field private browser:Ljava/lang/String;

.field private debug:Z

.field private downloadUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imageSize:I

.field private imageUrl:Ljava/lang/String;

.field private imgViewAD:Landroid/widget/ImageView;

.field private mVideoView:Landroid/widget/VideoView;

.field private mc:Landroid/widget/MediaController;

.field private partnerid:I

.field private path:Ljava/lang/String;

.field private translateIn:Ljava/lang/Runnable;

.field private translateInAnimation:Landroid/view/animation/Animation;

.field private translateOut:Ljava/lang/Runnable;

.field private translateOutAnimation:Landroid/view/animation/Animation;

.field private videoName:Ljava/lang/String;

.field private voteView:Landroid/widget/ImageView;

.field yListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->debug:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->voteView:Landroid/widget/ImageView;

    .line 48
    const v0, 0xb5e6

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->partnerid:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imageSize:I

    .line 50
    const-string v0, "app_android"

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->browser:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->handler:Landroid/os/Handler;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ads.buzzcity.net/show.php?partnerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->partnerid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imgsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imageUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://click.buzzcity.net/click.php?partnerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->partnerid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->downloadUrl:Ljava/lang/String;

    .line 57
    iput-object p0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->activity:Landroid/app/Activity;

    .line 109
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;-><init>(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->bClickListener:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$2;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$2;-><init>(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->yListener:Landroid/content/DialogInterface$OnClickListener;

    .line 217
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$3;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$3;-><init>(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateOut:Ljava/lang/Runnable;

    .line 230
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$4;-><init>(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateIn:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->voteView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imgViewAD:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->rotateImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0x28

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v6, :cond_1

    .line 281
    .end local p0    # "img":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 269
    .restart local p0    # "img":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x12c

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 273
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 275
    .local v4, "height":I
    const/high16 v0, 0x43960000    # 300.0f

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 276
    .local v9, "scaleWidth":F
    const/high16 v0, 0x42200000    # 40.0f

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 278
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 279
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 280
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 281
    goto :goto_0
.end method

.method private rotateImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 224
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 227
    .local v7, "rbm":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public clickBanner(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "myIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "myIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->downloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    .restart local v0    # "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 185
    .local v0, "keycode":I
    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 187
    :pswitch_0
    iget-boolean v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "VideoTube"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchKeyEvent keycode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    goto :goto_1

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 202
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 203
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 204
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 205
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 206
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 207
    .local v4, "temp":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02000f

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 208
    :cond_0
    invoke-static {v4}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 212
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/16 v2, 0xbb8

    .line 243
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imgViewAD:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imgViewAD:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 254
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 257
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mc:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 155
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v5, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v5}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 66
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "MP_FILE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    .line 71
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    .line 72
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const v2, 0x7f06002b

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->voteView:Landroid/widget/ImageView;

    .line 74
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->voteView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->bClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->videoName:Ljava/lang/String;

    .line 78
    :try_start_0
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mc:Landroid/widget/MediaController;

    .line 79
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 80
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 81
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 83
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/res/RefDZ8740f402pIQqTyZviLGS;->md53b31239c61e520bd781c710f25ed3520(Landroid/widget/VideoView;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    .line 91
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mc:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 92
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 93
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mc:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->bringToFront()V

    .line 97
    const v2, 0x7f060011

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->imgViewAD:Landroid/widget/ImageView;

    .line 98
    const/high16 v2, 0x7f040000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateInAnimation:Landroid/view/animation/Animation;

    .line 99
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateOutAnimation:Landroid/view/animation/Animation;

    .line 101
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->translateIn:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const-string v2, "Touch Screen To Show Media Control!"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VideoTube"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 158
    const-string v0, "VideoTube"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError---> what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const-string v1, "Error:"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your phone can\'t play this video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const-string v1, "OK"

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->yListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 10
    .param p1, "mMediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/16 v9, 0x1e0

    const/16 v8, 0x140

    .line 128
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 129
    .local v1, "mVideoWidth":I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 130
    .local v0, "mVideoHeight":I
    iget-boolean v5, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "VideoTube"

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

    .line 131
    :cond_0
    move v4, v1

    .line 132
    .local v4, "videoWW":I
    move v3, v0

    .line 133
    .local v3, "videoHH":I
    if-le v1, v9, :cond_3

    .line 134
    const/16 v4, 0x2d0

    .line 135
    mul-int/lit16 v5, v0, 0x2d0

    div-int v3, v5, v1

    .line 143
    :cond_1
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 145
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 149
    invoke-static {p1}, Landroid/content/res/RefGL9da352eeGxOMhmIWKfhn;->md5bdef0b52b1aec1b86f1f3d86a7bcb041(Landroid/media/MediaPlayer;)V

    .line 151
    :cond_2
    return-void

    .line 136
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    if-lt v1, v8, :cond_4

    if-gt v1, v9, :cond_4

    .line 137
    const/16 v4, 0x1e0

    .line 138
    mul-int/lit16 v5, v0, 0x1e0

    div-int v3, v5, v1

    goto :goto_0

    .line 139
    :cond_4
    if-ge v1, v8, :cond_1

    .line 140
    const/16 v4, 0x140

    .line 141
    mul-int/lit16 v5, v0, 0x140

    div-int v3, v5, v1

    goto :goto_0
.end method
