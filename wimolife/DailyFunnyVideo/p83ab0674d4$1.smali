.class Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;
.super Ljava/lang/Object;
.source "p83ab0674d4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$0(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 112
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    const-class v3, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, "vote":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "VOTENAME"

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->access$1(Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "VOTENUMBER"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "VOTESTAR"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4$1;->this$0:Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;

    invoke-virtual {v2, v1}, Lcom/wimolife/DailyFunnyVideo/p83ab0674d4;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "vote":Landroid/content/Intent;
    :cond_0
    return-void
.end method
