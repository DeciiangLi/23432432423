.class public Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "p47a1867e10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/p47a1867e10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankDataAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;


# direct methods
.method public constructor <init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Landroid/app/Activity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;>;"
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    .line 207
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 208
    iput-object p2, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;->mActivity:Landroid/app/Activity;

    .line 209
    iput-object p5, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;->mData:Ljava/util/List;

    .line 210
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 216
    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 220
    :goto_0
    iget-object v6, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankDataAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;

    .line 221
    .local v0, "data":Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;
    const v6, 0x7f060023

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, "index":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mIndex:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v6, 0x7f060024

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 224
    .local v2, "name":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v6, 0x7f060025

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 226
    .local v5, "vote":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mVote:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v6, 0x7f060026

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 228
    .local v3, "star":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mStar:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-object v4

    .line 218
    .end local v0    # "data":Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;
    .end local v1    # "index":Landroid/widget/TextView;
    .end local v2    # "name":Landroid/widget/TextView;
    .end local v3    # "star":Landroid/widget/TextView;
    .end local v5    # "vote":Landroid/widget/TextView;
    :cond_0
    move-object v4, p2

    goto :goto_0
.end method
