.class public Lcom/wimolife/DailyFunnyVideo/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/airpush/android/Airpush;

    const-string v2, "11778"

    const-string v3, "1303511197426136252"

    const/4 v5, 0x1

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 14
    new-instance v7, Lcom/Leadbolt/AdController;

    const-string v0, "976632820"

    invoke-direct {v7, p1, v0}, Lcom/Leadbolt/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .local v7, "mycontroller":Lcom/Leadbolt/AdController;
    invoke-virtual {v7}, Lcom/Leadbolt/AdController;->loadNotification()V

    .line 16
    return-void
.end method
