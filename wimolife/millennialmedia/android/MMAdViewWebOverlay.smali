.class Lcom/millennialmedia/android/MMAdViewWebOverlay;
.super Landroid/widget/FrameLayout;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;,
        Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;
    }
.end annotation


# static fields
.field private static final kPadding:I = 0x0

.field private static final kTitleMarginX:I = 0x8

.field private static final kTitleMarginY:I = 0x9

.field private static final kTransitionDuration:I = 0xc8


# instance fields
.field private backButton:Landroid/widget/Button;

.field private close:Landroid/graphics/drawable/Drawable;

.field private closeDisabled:Landroid/graphics/drawable/Drawable;

.field private cm:Landroid/net/ConnectivityManager;

.field private content:Landroid/widget/RelativeLayout;

.field private forwardButton:Landroid/widget/Button;

.field private leftArrow:Landroid/graphics/drawable/Drawable;

.field private leftArrowDisabled:Landroid/graphics/drawable/Drawable;

.field private navBar:Landroid/widget/RelativeLayout;

.field private navCloseButton:Landroid/widget/Button;

.field overlayActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private overlayUrl:Ljava/lang/String;

.field private rightArrow:Landroid/graphics/drawable/Drawable;

.field private rightArrowDisabled:Landroid/graphics/drawable/Drawable;

.field private title:Landroid/widget/TextView;

.field viewHandler:Landroid/os/Handler;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 26
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "padding"    # I
    .param p3, "time"    # J
    .param p5, "transition"    # Ljava/lang/String;
    .param p6, "titlebar"    # Z
    .param p7, "titleText"    # Ljava/lang/String;
    .param p8, "navbar"    # Z
    .param p9, "bottombarEnabled"    # Z
    .param p10, "isTransparent"    # Z

    .prologue
    .line 88
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 549
    new-instance v21, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->viewHandler:Landroid/os/Handler;

    .line 90
    new-instance v21, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 91
    const/16 v21, 0x3ad6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setId(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 93
    .local v5, "activity":Landroid/app/Activity;
    if-nez v5, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const v21, 0x1030010

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 99
    const-string v21, "connectivity"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->cm:Landroid/net/ConnectivityManager;

    .line 102
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setWillNotDraw(Z)V

    .line 105
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    .line 106
    .local v16, "scale":F
    const/high16 v21, 0x3d800000    # 0.0625f

    mul-float v21, v21, v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 107
    .local v17, "scaledPadding":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setPadding(IIII)V

    .line 110
    new-instance v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    if-eqz p6, :cond_2

    .line 116
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v18, "titleBar":Landroid/widget/RelativeLayout;
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/high16 v21, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 119
    const/16 v21, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 120
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, -0x1000000

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    const/16 v23, 0x9

    const/16 v24, 0x8

    const/16 v25, 0x9

    invoke-virtual/range {v21 .. v25}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 133
    .local v8, "closeButton":Landroid/widget/Button;
    const/high16 v21, -0x1000000

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 134
    const-string v21, "Close"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 136
    new-instance v21, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v12, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 161
    .end local v8    # "closeButton":Landroid/widget/Button;
    .end local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "titleBar":Landroid/widget/RelativeLayout;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "activity":Landroid/app/Activity;
    check-cast v5, Landroid/app/Activity;

    .line 162
    .restart local v5    # "activity":Landroid/app/Activity;
    if-eqz v5, :cond_0

    .line 167
    new-instance v21, Landroid/webkit/WebView;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    const/16 v22, 0xc8

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->setId(I)V

    .line 170
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v20, "webviewLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    const-string v23, "interface"

    invoke-virtual/range {v21 .. v23}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v19

    .line 175
    .local v19, "webSettings":Landroid/webkit/WebSettings;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 176
    const-string v21, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 177
    if-eqz p6, :cond_3

    .line 178
    const/16 v21, 0x3

    const/16 v22, 0x64

    invoke-virtual/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 179
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    if-eqz p10, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 195
    :goto_1
    const/high16 v21, 0x42480000    # 50.0f

    mul-float v21, v21, v16

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v13, v0

    .line 196
    .local v13, "navHeight":I
    new-instance v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    .line 197
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-direct {v14, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v14, "navLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const v22, -0x333334

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x12c

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 201
    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/high16 v22, -0x1000000

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 204
    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 208
    .local v6, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v21, "millennial_close.png"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 209
    .local v11, "is":Ljava/io/InputStream;
    const-string v21, "millennial_close.png"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->close:Landroid/graphics/drawable/Drawable;

    .line 210
    const-string v21, "millennial_close_disabled.png"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 211
    const-string v21, "millennial_close_disabled.png"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->closeDisabled:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v11    # "is":Ljava/io/InputStream;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setCloseButtonListener(Z)V

    .line 218
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    .restart local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    .line 227
    :try_start_1
    const-string v21, "millennial_right_arrow.png"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 228
    .restart local v11    # "is":Ljava/io/InputStream;
    const-string v21, "millennial_right_arrow.png"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrow:Landroid/graphics/drawable/Drawable;

    .line 229
    const-string v21, "millennial_right_arrow_disabled.png"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 230
    const-string v21, "millennial_right_arrow_disabled.png"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrowDisabled:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    .end local v11    # "is":Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setForwardButtonListener(Z)V

    .line 242
    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    .line 244
    :try_start_2
    const-string v21, "millennial_left_arrow.png"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 245
    .restart local v11    # "is":Ljava/io/InputStream;
    const-string v21, "millennial_left_arrow.png"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrow:Landroid/graphics/drawable/Drawable;

    .line 247
    const-string v21, "millennial_left_arrow_disabled.png"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 248
    const-string v21, "millennial_left_arrow_disabled.png"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrowDisabled:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    .end local v11    # "is":Ljava/io/InputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x12d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setId(I)V

    .line 257
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setBackButtonListener(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x12e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setId(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v15, v21, v22

    .line 279
    .local v15, "ratio":F
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v13

    move/from16 v21, v0

    mul-float v21, v21, v15

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v7, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v7, "backLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x12f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setId(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v15, v21, v22

    .line 285
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v13

    move/from16 v21, v0

    mul-float v21, v21, v15

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v10, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 286
    .local v10, "forwardLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Button;->getId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 287
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    if-eqz p8, :cond_5

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->addView(Landroid/view/View;)V

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->animateView(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 188
    .end local v6    # "am":Landroid/content/res/AssetManager;
    .end local v7    # "backLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "forwardLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "navHeight":I
    .end local v14    # "navLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "ratio":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 213
    .restart local v6    # "am":Landroid/content/res/AssetManager;
    .restart local v13    # "navHeight":I
    .restart local v14    # "navLp":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v9

    .line 214
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 232
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v9

    .line 233
    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0x333334

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const-string v22, ">>"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/high16 v22, -0x1000000

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 236
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 250
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 251
    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0x333334

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const-string v22, "<<"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/high16 v22, -0x1000000

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 254
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 294
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "backLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10    # "forwardLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15    # "ratio":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewWebOverlay;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private animateView(Ljava/lang/String;J)V
    .locals 12
    .param p1, "animation"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    const v4, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string p1, "bottomtotop"

    .line 339
    :cond_0
    const-string v5, "toptobottom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 346
    .local v0, "translateDown":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 347
    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 358
    const-string v1, "Translate down"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    .end local v0    # "translateDown":Landroid/view/animation/TranslateAnimation;
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v5, "explode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd    # 1.1f

    const v5, 0x3dcccccd    # 0.1f

    move v6, v4

    move v7, v1

    move v9, v1

    move v10, v8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 369
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 370
    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 380
    const-string v1, "Explode"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 388
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v10, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 393
    .local v3, "translateUp":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$4;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$4;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 404
    const-string v1, "Translate up"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dismiss(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 527
    const-string v2, "Ad overlay closed"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 529
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 535
    :cond_0
    if-eqz p1, :cond_1

    .line 537
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 538
    .local v1, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 539
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 540
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 544
    .end local v1    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 325
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 326
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    return-void
.end method


# virtual methods
.method getOverlayActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method injectJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsString"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method loadWebContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v0, "MillennialMediaAdSDK"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 311
    .local v0, "canvasClipBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 313
    .local v1, "grayRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 314
    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 315
    return-void
.end method

.method protected setBackButtonListener(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 473
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 475
    if-eqz p1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrowDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected setCloseButtonListener(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 502
    if-eqz p1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->close:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$8;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$8;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->closeDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected setForwardButtonListener(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 446
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 448
    if-eqz p1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$6;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$6;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrowDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
