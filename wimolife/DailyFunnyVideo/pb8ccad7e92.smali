.class public Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;
.super Landroid/app/Activity;
.source "pb8ccad7e92.java"


# instance fields
.field bListener:Landroid/content/DialogInterface$OnClickListener;

.field buttonListener:Landroid/view/View$OnClickListener;

.field private cmd_back:Landroid/widget/Button;

.field private cmd_vote:Landroid/widget/Button;

.field private debug:Z

.field private mStar:Landroid/widget/RadioGroup;

.field private tv:Landroid/widget/TextView;

.field private vName:Ljava/lang/String;

.field private vNumber:Ljava/lang/String;

.field private vStar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->debug:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->tv:Landroid/widget/TextView;

    .line 83
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$1;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$1;-><init>(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->bListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;-><init>(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->buttonListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->debug:Z

    return v0
.end method

.method static synthetic access$1(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->cmd_vote:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->mStar:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->uploadUserVoteToServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->cmd_back:Landroid/widget/Button;

    return-object v0
.end method

.method private uploadUserVoteToServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x7f050000

    .line 127
    const-string v6, ""

    .line 128
    .local v6, "res":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.wimolife.com/VideoTube/android_vote.php?n="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "uploadURL":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->debug:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0, v11}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "aURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 133
    .local v2, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 134
    .local v5, "rc":I
    iget-boolean v9, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->debug:Z

    if-eqz v9, :cond_1

    const/high16 v9, 0x7f050000

    invoke-virtual {p0, v9}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "responseCode: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    const/16 v9, 0xc8

    if-eq v5, v9, :cond_2

    const/16 v9, 0x64

    if-eq v5, v9, :cond_2

    .line 137
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "HTTP response code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "aURL":Ljava/net/URL;
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v5    # "rc":I
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v6

    .line 139
    .restart local v0    # "aURL":Ljava/net/URL;
    .restart local v2    # "con":Ljava/net/HttpURLConnection;
    .restart local v5    # "rc":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v7, "sb":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_4

    .line 145
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    iget-boolean v9, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->debug:Z

    if-eqz v9, :cond_3

    const/high16 v9, 0x7f050000

    invoke-virtual {p0, v9}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 143
    :cond_4
    int-to-char v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public doAdLink()V
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
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

    .line 38
    .end local v0    # "myIntent":Landroid/content/Intent;
    .local v1, "myIntent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .end local v1    # "myIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 39
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
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "VOTENAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vName:Ljava/lang/String;

    .line 50
    const-string v2, "VOTENUMBER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vNumber:Ljava/lang/String;

    .line 51
    const-string v2, "VOTESTAR"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vStar:Ljava/lang/String;

    .line 53
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->setContentView(I)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Vote: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vStar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->cmd_vote:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->cmd_vote:Landroid/widget/Button;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->cmd_back:Landroid/widget/Button;

    .line 60
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->cmd_back:Landroid/widget/Button;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->mStar:Landroid/widget/RadioGroup;

    .line 63
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->mStar:Landroid/widget/RadioGroup;

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 65
    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->tv:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video Name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->vName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/chitika/ads/ChitikaView;

    .line 68
    .local v1, "mAdView":Lcom/chitika/ads/ChitikaView;
    const-string v2, "drhu0000"

    invoke-virtual {v1, v2}, Lcom/chitika/ads/ChitikaView;->setClient(Ljava/lang/String;)V

    .line 69
    const-string v2, "34d700c0-ebb9-012e-76a5-123139202dc6"

    invoke-virtual {v1, v2}, Lcom/chitika/ads/ChitikaView;->setAdUnitId(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lcom/chitika/ads/ChitikaView;->loadAd()V

    .line 81
    return-void
.end method
