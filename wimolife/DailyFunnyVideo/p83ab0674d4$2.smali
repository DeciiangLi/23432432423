.class Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$2;
.super Ljava/lang/Object;
.source "p83ab0674d4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "v"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$2;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-virtual {v0}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method
