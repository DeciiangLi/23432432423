.class Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;
.super Ljava/lang/Object;
.source "aZTnQESgs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;


# direct methods
.method constructor <init>(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)V
    .locals 0

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v3, "TYPE"

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$000(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$000(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "dir"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getHistory()Ljava/util/Stack;

    move-result-object v2

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$100(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v4}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$200(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$300(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$102(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->readWebpage(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$000(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v2

    const-string v3, "smsWasSent"

    invoke-virtual {v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->existsRuntimeValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$200(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$300(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&o=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-virtual {v2, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$200(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;->this$0:Lcom/adc58a797/ac31b3236/a740675ee/a56246149;

    invoke-static {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->access$300(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method
