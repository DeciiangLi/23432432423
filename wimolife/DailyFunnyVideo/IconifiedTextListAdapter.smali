.class public Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconifiedTextListAdapter.java"


# instance fields
.field private bigSpace:Z

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wimolife/DailyFunnyVideo/IconifiedText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bigSpace"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->bigSpace:Z

    .line 17
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mContext:Landroid/content/Context;

    .line 18
    iput-boolean p2, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->bigSpace:Z

    .line 19
    return-void
.end method


# virtual methods
.method public addItem(Lcom/wimolife/DailyFunnyVideo/IconifiedText;)V
    .locals 1
    .param p1, "it"    # Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    iget-boolean v3, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->bigSpace:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;-><init>(Landroid/content/Context;Lcom/wimolife/DailyFunnyVideo/IconifiedText;Z)V

    .line 63
    .local v0, "btv":Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;
    :goto_0
    return-object v0

    .end local v0    # "btv":Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;
    :cond_0
    move-object v0, p2

    .line 59
    check-cast v0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;

    .line 60
    .restart local v0    # "btv":Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    invoke-virtual {v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->setText(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    invoke-virtual {v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    invoke-virtual {v0}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wimolife/DailyFunnyVideo/IconifiedText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "lit":Ljava/util/List;, "Ljava/util/List<Lcom/wimolife/DailyFunnyVideo/IconifiedText;>;"
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextListAdapter;->mItems:Ljava/util/List;

    .line 27
    return-void
.end method
