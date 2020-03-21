.class Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;
.super Ljava/lang/Object;
.source "pa54a0c76fd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;


# direct methods
.method constructor <init>(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 153
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$0(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$1(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$2(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;Z)V

    .line 155
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$3(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;I)V

    .line 163
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$4(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$5(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v2, v0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$6(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;Z)V

    .line 158
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$3(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 157
    goto :goto_2

    .line 159
    :cond_4
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$7(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    invoke-static {v3}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$8(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    invoke-static {v2, v0}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$9(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;Z)V

    .line 161
    iget-object v0, p0, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd$3;->this$0:Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;->access$3(Lcom/wimolife/DailyFunnyVideo/pa54a0c76fd;I)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 160
    goto :goto_3
.end method
