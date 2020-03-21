.class public Lcom/wimolife/DailyFunnyVideo/p449664008f;
.super Landroid/app/Activity;
.source "p449664008f.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    new-instance v0, Lcom/appenda/Appenda;

    const/16 v1, 0x20

    const/16 v2, 0x52

    const-string v3, ""

    const-string v4, ""

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/appenda/Appenda;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;)V

    .line 12
    .local v0, "ads":Lcom/appenda/Appenda;
    sget-object v1, Lcom/appenda/Appenda;->DISPLAY_INSTERSTITIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appenda/Appenda;->callFunction(Ljava/lang/String;)Z

    .line 13
    return-void
.end method
