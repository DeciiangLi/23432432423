.class public Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;
.super Landroid/widget/LinearLayout;
.source "IconifiedTextView.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wimolife/DailyFunnyVideo/IconifiedText;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aIconifiedText"    # Lcom/wimolife/DailyFunnyVideo/IconifiedText;
    .param p3, "bigSpace"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0, v4}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->setOrientation(I)V

    .line 20
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mIcon:Landroid/widget/ImageView;

    .line 21
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    if-nez p3, :cond_0

    .line 24
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0xa

    const/4 v2, 0x6

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    if-nez p3, :cond_1

    .line 36
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    :goto_1
    if-nez p3, :cond_2

    .line 43
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :goto_2
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x16

    const/16 v2, 0x12

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v4, v1, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method


# virtual methods
.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bullet"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedTextView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
