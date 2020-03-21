.class public Lcom/wimolife/DailyFunnyVideo/IconifiedText;
.super Ljava/lang/Object;
.source "IconifiedText.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/wimolife/DailyFunnyVideo/IconifiedText;",
        ">;"
    }
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mPath:Ljava/lang/String;

.field private mSelectable:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "bullet"    # Landroid/graphics/Bitmap;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mPath:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mText:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mSelectable:Z

    .line 12
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mPath:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mIcon:Landroid/graphics/Bitmap;

    .line 14
    iput-object p2, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mText:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/wimolife/DailyFunnyVideo/IconifiedText;)I
    .locals 2
    .param p1, "other"    # Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/wimolife/DailyFunnyVideo/IconifiedText;

    invoke-virtual {p0, p1}, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->compareTo(Lcom/wimolife/DailyFunnyVideo/IconifiedText;)I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mSelectable:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mIcon:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mSelectable:Z

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/IconifiedText;->mText:Ljava/lang/String;

    .line 35
    return-void
.end method
