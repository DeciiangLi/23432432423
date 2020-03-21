.class public Lcom/wimolife/DailyFunnyVideo/p47a1867e10;
.super Landroid/app/ListActivity;
.source "p47a1867e10.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;,
        Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final AFTER_LOAD:I = 0x101

.field public static needLoadData:Z

.field public static topRankData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private debug:Z

.field private mBack:Landroid/widget/Button;

.field myViewUpdateHandler:Landroid/os/Handler;

.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->needLoadData:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->pd:Landroid/app/ProgressDialog;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->debug:Z

    .line 105
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$1;

    invoke-direct {v0, p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$1;-><init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->myViewUpdateHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->displayData()V

    return-void
.end method

.method static synthetic access$1(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->debug:Z

    return v0
.end method

.method static synthetic access$2(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->pd:Landroid/app/ProgressDialog;

    return-void
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 118
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;

    const v4, 0x7f030003

    sget-object v5, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;-><init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Landroid/app/Activity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    return-void
.end method

.method private loadRankData()V
    .locals 4

    .prologue
    .line 122
    const-string v0, "LOADING..."

    const-string v1, "Please be patient!"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->pd:Landroid/app/ProgressDialog;

    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;

    invoke-direct {v1, p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$2;-><init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 53
    .local v0, "keycode":I
    packed-switch v0, :pswitch_data_0

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 56
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public doAdLink()V
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
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

    .line 47
    .end local v0    # "myIntent":Landroid/content/Intent;
    .local v1, "myIntent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .end local v1    # "myIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 48
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

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->mBack:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->setContentView(I)V

    .line 69
    const-string v2, "No.      Name                                #Vote        Star"

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "b":Landroid/os/Bundle;
    const v2, 0x7f060022

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->mBack:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->mBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-boolean v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->needLoadData:Z

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->loadRankData()V

    .line 79
    const/4 v2, 0x0

    sput-boolean v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->needLoadData:Z

    .line 83
    :goto_0
    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/chitika/ads/ChitikaView;

    .line 84
    .local v1, "mAdView":Lcom/chitika/ads/ChitikaView;
    const-string v2, "drhu0000"

    invoke-virtual {v1, v2}, Lcom/chitika/ads/ChitikaView;->setClient(Ljava/lang/String;)V

    .line 85
    const-string v2, "34d700c0-ebb9-012e-76a5-123139202dc6"

    invoke-virtual {v1, v2}, Lcom/chitika/ads/ChitikaView;->setAdUnitId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lcom/chitika/ads/ChitikaView;->loadAd()V

    .line 97
    return-void

    .line 81
    .end local v1    # "mAdView":Lcom/chitika/ads/ChitikaView;
    :cond_0
    invoke-direct {p0}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->displayData()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v1, "vote":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "VOTENAME"

    sget-object v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "VOTENUMBER"

    sget-object v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mVote:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "VOTESTAR"

    sget-object v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->topRankData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;

    iget-object v2, v2, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mStar:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v1}, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
