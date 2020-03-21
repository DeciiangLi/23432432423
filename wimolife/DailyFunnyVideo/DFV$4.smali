.class Lcom/wimolife/DailyFunnyVideo/DFV$4;
.super Ljava/lang/Object;
.source "DFV.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/DFV;
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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/DFV$4;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "v"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/DFV$4;->this$0:Lcom/wimolife/DailyFunnyVideo/DFV;

    invoke-static {v0}, Lcom/wimolife/DailyFunnyVideo/DFV;->access$15(Lcom/wimolife/DailyFunnyVideo/DFV;)Lcom/pontiflex/mobile/webview/sdk/IAdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/pontiflex/mobile/webview/sdk/IAdManager;->startRegistrationActivity()V

    .line 428
    return-void
.end method
