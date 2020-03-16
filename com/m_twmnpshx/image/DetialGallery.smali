.class public Lcom/m_twmnpshx/image/DetialGallery;
.super Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Item ID"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/m_twmnpshx/image/DetialGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/DetialGallery;->getSelectedItemPosition()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/DetialGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u7b2c\u4e00\u5f20\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/m_twmnpshx/image/DetialGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v4

    :cond_1
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/DetialGallery;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/DetialGallery;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/m_twmnpshx/image/DetialGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6700\u540e\u4e00\u5f20\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
