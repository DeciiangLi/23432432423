.class Lcom/wimolife/DailyFunnyVideo/DFV$10;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wimolife/DailyFunnyVideo/DFV;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/DFV;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/DFV;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$10;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV$10;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$32()Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    move-result-object v3

    iget-object v3, v3, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgName:Ljava/lang/String;

    invoke-static {}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$32()Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    move-result-object v4

    iget-object v4, v4, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->pkgDesc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/wimolife/DailyFunnyVideo/DFV;->doNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/DFV$10;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/DFV;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 291
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "RemotePkgID"

    invoke-static {}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$32()Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;

    move-result-object v3

    iget v3, v3, Lcom/wimolife/DailyFunnyVideo/DFV$RemoteData;->id:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    return-void
.end method
