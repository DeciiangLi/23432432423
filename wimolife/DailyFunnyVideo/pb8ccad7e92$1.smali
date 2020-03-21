.class Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$1;
.super Ljava/lang/Object;
.source "pb8ccad7e92.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$1;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "v"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10;->needLoadData:Z

    .line 88
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$1;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-virtual {v0}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->finish()V

    .line 89
    return-void
.end method
