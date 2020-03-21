.class public Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;
.super Ljava/lang/Object;
.source "BuzzcityAD.java"


# static fields
.field public static browser:Ljava/lang/String;

.field public static downloadUrl:Ljava/lang/String;

.field public static imageSize:I

.field public static imageUrl:Ljava/lang/String;

.field public static partnerid:I


# instance fields
.field private imgHeight:I

.field public imgViewAD:Landroid/widget/ImageView;

.field private imgWidth:I

.field private rotate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const v0, 0xb5e6

    sput v0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->partnerid:I

    .line 17
    const/4 v0, 0x4

    sput v0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imageSize:I

    .line 18
    const-string v0, "app_android"

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->browser:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ads.buzzcity.net/show.php?partnerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->partnerid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imgsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imageUrl:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://click.buzzcity.net/click.php?partnerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->partnerid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->downloadUrl:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(IILandroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "imgView"    # Landroid/widget/ImageView;
    .param p4, "r"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgViewAD:Landroid/widget/ImageView;

    .line 22
    const/16 v0, 0x30

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgHeight:I

    .line 23
    const/16 v0, 0x140

    iput v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgWidth:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->rotate:Z

    .line 27
    iput p1, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgWidth:I

    .line 28
    iput p2, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgHeight:I

    .line 29
    iput-object p3, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgViewAD:Landroid/widget/ImageView;

    .line 30
    iput-boolean p4, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->rotate:Z

    .line 31
    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgHeight:I

    if-ne v0, v2, :cond_1

    .line 86
    .end local p1    # "img":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 74
    .restart local p1    # "img":Landroid/graphics/Bitmap;
    :cond_1
    iget v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgHeight:I

    if-eqz v0, :cond_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 78
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 80
    .local v4, "height":I
    iget v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgWidth:I

    int-to-float v0, v0

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 81
    .local v9, "scaleWidth":F
    iget v0, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgHeight:I

    int-to-float v0, v0

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 83
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 85
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object p1, v7

    .line 86
    goto :goto_0
.end method

.method private rotateImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 66
    .local v7, "rbm":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public fillADImage()V
    .locals 2

    .prologue
    .line 34
    sget-object v1, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "resutlImage":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->imgViewAD:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 45
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 48
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 49
    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 50
    .local v3, "myBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 51
    :cond_0
    iget-boolean v6, p0, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->rotate:Z

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 52
    invoke-direct {p0, v3}, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->rotateImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 58
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "myBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v3

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    const/4 v3, 0x0

    goto :goto_0
.end method
