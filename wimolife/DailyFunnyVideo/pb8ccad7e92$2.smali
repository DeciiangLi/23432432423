.class Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;
.super Ljava/lang/Object;
.source "pb8ccad7e92.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->access$0(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "View is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->access$1(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Landroid/widget/Button;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 96
    const-string v0, ""

    .line 97
    .local v0, "gStar":Ljava/lang/String;
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->access$2(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-static {v2, v0}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->access$3(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v3, "Information"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 118
    const-string v3, "OK"

    iget-object v4, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    iget-object v4, v4, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->bListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    .end local v0    # "gStar":Ljava/lang/String;
    .end local v1    # "res":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 99
    .restart local v0    # "gStar":Ljava/lang/String;
    :pswitch_1
    const-string v0, "1"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    const-string v0, "2"

    .line 103
    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "3"

    .line 106
    goto :goto_0

    .line 108
    :pswitch_4
    const-string v0, "4"

    .line 109
    goto :goto_0

    .line 111
    :pswitch_5
    const-string v0, "5"

    goto :goto_0

    .line 120
    .end local v0    # "gStar":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-static {v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->access$4(Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;)Landroid/widget/Button;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92$2;->this$0:Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;

    invoke-virtual {v2}, Lcom/wimolife/DailyFunnyVideo/pb8ccad7e92;->finish()V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f06002d
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
