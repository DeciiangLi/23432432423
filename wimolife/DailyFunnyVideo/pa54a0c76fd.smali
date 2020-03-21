.class public Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;
.super Landroid/app/ListActivity;
.source "pa54a0c76fd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FunnyVideo"

.field private static final sNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private PkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wimolife/DailyFunnyVideo/IconifiedText;",
            ">;"
        }
    .end annotation
.end field

.field private ascAlpha:Z

.field private ascDate:Z

.field private ascSize:Z

.field bListener:Landroid/content/DialogInterface$OnClickListener;

.field private debug:Z

.field private itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private myData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pkgInfo:[Ljava/lang/String;

.field private selectedVideoPkg:Ljava/lang/String;

.field private text_alpha:Landroid/widget/TextView;

.field private text_date:Landroid/widget/TextView;

.field private text_size:Landroid/widget/TextView;

.field private useAndroidServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$1;

    invoke-direct {v0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$1;-><init>()V

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->sNameComparator:Ljava/util/Comparator;

    .line 114
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$2;

    invoke-direct {v0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$2;-><init>()V

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->sSizeComparator:Ljava/util/Comparator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    .line 31
    iput-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->useAndroidServer:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    .line 37
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    .line 38
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    .line 40
    iput-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascDate:Z

    .line 41
    iput-boolean v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascAlpha:Z

    .line 42
    iput-boolean v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascSize:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    .line 151
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;-><init>(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->mClickListener:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$4;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$4;-><init>(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->bListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascDate:Z

    return v0
.end method

.method static synthetic access$2(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascDate:Z

    return-void
.end method

.method static synthetic access$3(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setList(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascAlpha:Z

    return v0
.end method

.method static synthetic access$6(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascAlpha:Z

    return-void
.end method

.method static synthetic access$7(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascSize:Z

    return v0
.end method

.method static synthetic access$9(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascSize:Z

    return-void
.end method

.method private fillDataAsc()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 130
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 131
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->setListItems(Ljava/util/List;)V

    .line 136
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {p0, v7}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setSelection(I)V

    .line 138
    return-void

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "videoName":Ljava/lang/String;
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    new-instance v4, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020009

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillDataDsc()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 141
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 142
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "k":I
    :goto_0
    if-gtz v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->setListItems(Ljava/util/List;)V

    .line 147
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {p0, v7}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setSelection(I)V

    .line 149
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "videoName":Ljava/lang/String;
    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    new-instance v4, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020009

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private handleClick(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 325
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    invoke-virtual {v5}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getText()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "selectedFile":Ljava/lang/String;
    iget-object v5, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    invoke-virtual {v5}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "selectedPath":Ljava/lang/String;
    iput-object v4, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->selectedVideoPkg:Ljava/lang/String;

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.wimolife.com/VideoTube/Video/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->selectedVideoPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "httpURL":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->useAndroidServer:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.androidhat.com/VideoTube/Video/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->selectedVideoPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v2, "iPlay":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "MP_FILE"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->startActivity(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method public static isSdPresent()Z
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadPkgInfo()V
    .locals 20

    .prologue
    .line 260
    :try_start_0
    const-string v11, "http://www.wimolife.com/VideoTube/handleDownload.php"

    .line 261
    .local v11, "httpURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->useAndroidServer:Z

    if-eqz v1, :cond_0

    const-string v11, "http://www.androidhat.com/VideoTube/handleDownload.php"

    .line 262
    :cond_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 263
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    .line 264
    .local v18, "urlc":Ljava/net/URLConnection;
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "Accept"

    const-string v2, "text/html"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "User-Agent"

    const-string v2, "Android"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v1, 0x1388

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 268
    invoke-virtual/range {v18 .. v18}, Ljava/net/URLConnection;->connect()V

    .line 270
    invoke-virtual/range {v18 .. v18}, Ljava/net/URLConnection;->getContentLength()I

    move-result v14

    .line 271
    .local v14, "len":I
    invoke-virtual/range {v18 .. v18}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v16

    .line 272
    .local v16, "type":Ljava/lang/String;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .local v9, "dis":Ljava/io/DataInputStream;
    new-array v8, v14, [B

    .line 275
    .local v8, "data":[B
    invoke-virtual {v9, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 276
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 277
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v8}, Ljava/lang/String;-><init>([B)V

    .line 279
    .local v15, "strPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLength: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v1, 0xf

    if-lt v12, v1, :cond_3

    .line 285
    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v12    # "i":I
    :cond_1
    const-string v1, "#"

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 291
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_2

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pkgInfo.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_2
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    array-length v1, v1

    if-lt v13, v1, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->setListItems(Ljava/util/List;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setSelection(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    .end local v8    # "data":[B
    .end local v9    # "dis":Ljava/io/DataInputStream;
    .end local v11    # "httpURL":Ljava/lang/String;
    .end local v13    # "k":I
    .end local v14    # "len":I
    .end local v15    # "strPkg":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlc":Ljava/net/URLConnection;
    :goto_2
    return-void

    .line 283
    .restart local v8    # "data":[B
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "httpURL":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "len":I
    .restart local v15    # "strPkg":Ljava/lang/String;
    .restart local v16    # "type":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "urlc":Ljava/net/URLConnection;
    :cond_3
    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHeaderField["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 293
    .end local v12    # "i":I
    .restart local v13    # "k":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_5

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v1, v1, v13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v13

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 297
    .local v19, "videoName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    new-instance v2, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020009

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 303
    .end local v8    # "data":[B
    .end local v9    # "dis":Ljava/io/DataInputStream;
    .end local v11    # "httpURL":Ljava/lang/String;
    .end local v13    # "k":I
    .end local v14    # "len":I
    .end local v15    # "strPkg":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlc":Ljava/net/URLConnection;
    .end local v19    # "videoName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 304
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_6

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In loadPkgInfo(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_6
    const-string v3, "Error:"

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OK"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->showAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method private loadPkgInfo_()V
    .locals 18

    .prologue
    .line 222
    :try_start_0
    const-string v12, "http://www.wimolife.com/VideoTube/handleDownload.php"

    .line 223
    .local v12, "httpURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->useAndroidServer:Z

    if-eqz v1, :cond_0

    const-string v12, "http://www.androidhat.com/VideoTube/handleDownload.php"

    .line 224
    :cond_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 226
    .local v9, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 227
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    .local v10, "dis":Ljava/io/DataInputStream;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v14, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .local v8, "ch":I
    const/4 v1, -0x1

    if-ne v8, v1, :cond_2

    .line 233
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 235
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 237
    .local v15, "strPkg":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 240
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pkgInfo.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    array-length v1, v1

    if-lt v13, v1, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->setListItems(Ljava/util/List;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setSelection(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    .end local v8    # "ch":I
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "dis":Ljava/io/DataInputStream;
    .end local v12    # "httpURL":Ljava/lang/String;
    .end local v13    # "k":I
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "strPkg":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 231
    .restart local v8    # "ch":I
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "httpURL":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuffer;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_2
    int-to-char v1, v8

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v8    # "ch":I
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "dis":Ljava/io/DataInputStream;
    .end local v12    # "httpURL":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v11

    .line 253
    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_3

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In loadPkgInfo(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_3
    const-string v3, "Error:"

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OK"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->showAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 243
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v8    # "ch":I
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "httpURL":Ljava/lang/String;
    .restart local v13    # "k":I
    .restart local v14    # "sb":Ljava/lang/StringBuffer;
    .restart local v15    # "strPkg":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v1, v1, v13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v13

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 245
    .local v17, "videoName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_5

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    new-instance v2, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020009

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3, v4}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method

.method private setList(I)V
    .locals 9
    .param p1, "sort_index"    # I

    .prologue
    const v4, 0x7f020010

    const v3, -0x333334

    const v8, -0xffff01

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 48
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascDate:Z

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 56
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "k":I
    :goto_1
    if-gez v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->setListItems(Ljava/util/List;)V

    .line 62
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0, v7}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setSelection(I)V

    .line 76
    :goto_2
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "videoName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "FunnyVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    new-instance v3, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020009

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 65
    .end local v0    # "k":I
    .end local v1    # "videoName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 67
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_3
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->setListItems(Ljava/util/List;)V

    .line 73
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {p0, v7}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setSelection(I)V

    goto/16 :goto_2

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "videoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->PkgList:Ljava/util/List;

    new-instance v3, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->pkgInfo:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020009

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 79
    .end local v0    # "k":I
    .end local v1    # "videoName":Ljava/lang/String;
    :pswitch_1
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascAlpha:Z

    if-eqz v2, :cond_4

    .line 80
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    sget-object v3, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->sNameComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->fillDataAsc()V

    .line 88
    :goto_4
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    sget-object v3, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->sNameComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->fillDataDsc()V

    goto :goto_4

    .line 91
    :pswitch_2
    iget-boolean v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->ascSize:Z

    if-eqz v2, :cond_5

    .line 92
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    sget-object v3, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->sSizeComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->fillDataAsc()V

    .line 100
    :goto_5
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 96
    :cond_5
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->myData:Ljava/util/List;

    sget-object v3, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->sSizeComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->fillDataDsc()V

    goto :goto_5

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 312
    .local v0, "keycode":I
    packed-switch v0, :pswitch_data_0

    .line 320
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 314
    :pswitch_0
    iget-boolean v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "FunnyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchKeyEvent keycode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public doAdLink()V
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "myIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Lcom/wimolife/DailyFunnyVideo/BuzzcityAD;->downloadUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "myIntent":Landroid/content/Intent;
    .local v1, "myIntent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .end local v1    # "myIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 171
    .restart local v0    # "myIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "myIntent":Landroid/content/Intent;
    .restart local v1    # "myIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "myIntent":Landroid/content/Intent;
    .restart local v0    # "myIntent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v3, -0x333334

    .line 177
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->requestWindowFeature(I)Z

    .line 179
    const v1, 0x1030008

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setTheme(I)V

    .line 180
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->setContentView(I)V

    .line 182
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/chitika/ads/ChitikaView;

    .line 183
    .local v0, "mAdView":Lcom/chitika/ads/ChitikaView;
    const-string v1, "drhu0000"

    invoke-virtual {v0, v1}, Lcom/chitika/ads/ChitikaView;->setClient(Ljava/lang/String;)V

    .line 184
    const-string v1, "34d700c0-ebb9-012e-76a5-123139202dc6"

    invoke-virtual {v0, v1}, Lcom/chitika/ads/ChitikaView;->setAdUnitId(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lcom/chitika/ads/ChitikaView;->loadAd()V

    .line 196
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    .line 197
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    .line 198
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_date:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_alpha:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->text_size:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    new-instance v1, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->itla:Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;

    .line 208
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->loadPkgInfo_()V

    .line 209
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 217
    invoke-direct {p0, p3}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->handleClick(I)V

    .line 218
    return-void
.end method

.method public showAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "btn1"    # Ljava/lang/String;
    .param p6, "btn2"    # Z

    .prologue
    .line 345
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->bListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 350
    return-void
.end method
