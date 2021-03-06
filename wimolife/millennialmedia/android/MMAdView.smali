.class public Lcom/millennialmedia/android/MMAdView;
.super Landroid/widget/FrameLayout;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$MMAdListener;
    }
.end annotation


# static fields
.field public static final BANNER_AD_BOTTOM:Ljava/lang/String; = "MMBannerAdBottom"

.field public static final BANNER_AD_RECTANGLE:Ljava/lang/String; = "MMBannerAdRectangle"

.field public static final BANNER_AD_TOP:Ljava/lang/String; = "MMBannerAdTop"

.field public static final FULLSCREEN_AD_LAUNCH:Ljava/lang/String; = "MMFullScreenAdLaunch"

.field public static final FULLSCREEN_AD_TRANSITION:Ljava/lang/String; = "MMFullScreenAdTransition"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final REFRESH_INTERVAL_OFF:I = -0x1

.field private static nextAdViewId:J


# instance fields
.field _goalId:Ljava/lang/String;

.field accelerate:Z

.field acid:Ljava/lang/String;

.field adType:Ljava/lang/String;

.field adViewId:Ljava/lang/Long;

.field age:Ljava/lang/String;

.field apid:Ljava/lang/String;

.field auid:Ljava/lang/String;

.field children:Ljava/lang/String;

.field controller:Lcom/millennialmedia/android/MMAdViewController;

.field deferedCallForAd:Z

.field education:Ljava/lang/String;

.field ethnicity:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field height:Ljava/lang/String;

.field ignoreDensityScaling:Z

.field income:Ljava/lang/String;

.field keywords:Ljava/lang/String;

.field latitude:Ljava/lang/String;

.field listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

.field longitude:Ljava/lang/String;

.field marital:Ljava/lang/String;

.field mxsdk:Ljava/lang/String;

.field orientation:Ljava/lang/String;

.field politics:Ljava/lang/String;

.field refreshInterval:I

.field testMode:Z

.field vibrate:Z

.field width:Ljava/lang/String;

.field xmlLayout:Z

.field zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 167
    const-string v0, "Creating new MMAdView for conversion tracking."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/app/Activity;)V

    .line 170
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->getAuid(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0x3c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput v5, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v1, "28911"

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 194
    const-string v1, "Creating MMAdView from XML layout."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 196
    if-eqz p2, :cond_0

    .line 198
    const-string v0, "http://millennialmedia.com/android/schema"

    .line 199
    .local v0, "namespace":Ljava/lang/String;
    const-string v1, "apid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 200
    const-string v1, "acid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 201
    const-string v1, "adType"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 202
    const-string v1, "refreshInterval"

    invoke-interface {p2, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 203
    const-string v1, "accelerate"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 204
    const-string v1, "ignoreDensityScaling"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 205
    const-string v1, "height"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 206
    const-string v1, "width"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 207
    const-string v1, "age"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 208
    const-string v1, "gender"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 209
    const-string v1, "zip"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 210
    const-string v1, "income"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 211
    const-string v1, "keywords"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 212
    const-string v1, "ethnicity"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 213
    const-string v1, "orientation"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 214
    const-string v1, "marital"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 215
    const-string v1, "children"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 216
    const-string v1, "education"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 217
    const-string v1, "politics"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 218
    const-string v1, "goalId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->_goalId:Ljava/lang/String;

    .line 220
    .end local v0    # "namespace":Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 221
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 235
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 236
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 238
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 239
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 285
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 286
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 287
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 288
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 289
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Z)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p6, "accelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 306
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 307
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 308
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 309
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 310
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 311
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 312
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 249
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 250
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 252
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 253
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 254
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 322
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 323
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 325
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 326
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 327
    invoke-virtual {p0, p6}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z
    .param p6, "accelerate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 264
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 265
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 267
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 268
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 269
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 270
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZLjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z
    .param p6, "accelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 337
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 338
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 339
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 340
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 341
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 342
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 343
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 344
    invoke-virtual {p0, p7}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 345
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "accelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 359
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 107
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 360
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 361
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 362
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 364
    iput-boolean p4, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 365
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method private static checkPermissions(Landroid/app/Activity;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x3

    .line 1040
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1042
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1043
    .local v3, "phoneStateDialog":Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1044
    const-string v6, "Looks like you forgot to declare the READ_PHONE_STATE in your manifest file."

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1045
    const-string v6, "OK"

    new-instance v7, Lcom/millennialmedia/android/MMAdView$3;

    invoke-direct {v7, v3}, Lcom/millennialmedia/android/MMAdView$3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v8, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1049
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1052
    .end local v3    # "phoneStateDialog":Landroid/app/AlertDialog;
    :cond_0
    const-string v6, "android.permission.INTERNET"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1054
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1055
    .local v1, "internetDialog":Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1056
    const-string v6, "Looks like you forgot to declare the INTERNET in your manifest file."

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1057
    const-string v6, "OK"

    new-instance v7, Lcom/millennialmedia/android/MMAdView$4;

    invoke-direct {v7, v1}, Lcom/millennialmedia/android/MMAdView$4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v8, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1061
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1064
    .end local v1    # "internetDialog":Landroid/app/AlertDialog;
    :cond_1
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1066
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1067
    .local v2, "networkStateDialog":Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1068
    const-string v6, "Looks like you forgot to declare the ACCESS_NETWORK_STATE in your manifest file."

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1069
    const-string v6, "OK"

    new-instance v7, Lcom/millennialmedia/android/MMAdView$5;

    invoke-direct {v7, v2}, Lcom/millennialmedia/android/MMAdView$5;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v8, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1073
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1076
    .end local v2    # "networkStateDialog":Landroid/app/AlertDialog;
    :cond_2
    const/4 v5, 0x3

    .line 1079
    .local v5, "version":I
    :try_start_0
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1082
    :goto_0
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_3

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    .line 1084
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1085
    .local v4, "storageDialog":Landroid/app/AlertDialog;
    const-string v6, "Sorry!"

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1086
    const-string v6, "Looks like you forgot to declare the WRITE_EXTERNAL_STORAGE in your manifest file."

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1087
    const-string v6, "OK"

    new-instance v7, Lcom/millennialmedia/android/MMAdView$6;

    invoke-direct {v7, v4}, Lcom/millennialmedia/android/MMAdView$6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v8, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1091
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1093
    .end local v4    # "storageDialog":Landroid/app/AlertDialog;
    :cond_3
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method static getAdTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MMBannerAdTop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MMBannerAdBottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MMBannerAdRectangle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MMFullScreenAdLaunch"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MMFullScreenAdTransition"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAuid(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1017
    const/4 v0, 0x0

    .line 1019
    .local v0, "auid":Ljava/lang/String;
    const-string v0, "android_idandroid_id"

    .line 1020
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1021
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1024
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1029
    :goto_0
    const/4 v2, 0x0

    .line 1031
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1032
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1034
    :cond_3
    const-string v0, "UNKNOWN"

    .line 1035
    :cond_4
    return-object v0

    .line 1026
    :catch_0
    move-exception v1

    .line 1027
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 376
    const-string v6, "Initializing MMAdView."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 379
    const-class v7, Lcom/millennialmedia/android/MMAdView;

    monitor-enter v7

    .line 381
    :try_start_0
    new-instance v6, Ljava/lang/Long;

    sget-wide v8, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    iput-object v6, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    .line 382
    sget-wide v8, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    sput-wide v8, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Assigning MMAdView internal id: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 384
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/app/Activity;)V

    .line 390
    const-string v6, "android.permission.VIBRATE"

    invoke-virtual {p1, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 393
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 401
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.millennialmedia.android.VideoPlayer"

    invoke-direct {v1, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    .local v1, "cn":Landroid/content/ComponentName;
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 417
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.millennialmedia.android.MMAdViewOverlayActivity"

    invoke-direct {v1, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    .restart local v1    # "cn":Landroid/content/ComponentName;
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 433
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 436
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->getAuid(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 439
    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_1

    .line 440
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    sput-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 443
    :cond_1
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 445
    const-string v6, "MillennialMediaAdSDK"

    const-string v7, "MMAdView initialized without an apid. New ad requests will be disabled."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v6, "28911"

    sput-object v6, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    .line 452
    :goto_2
    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/millennialmedia/android/HandShake;->overrideAdRefresh(Lcom/millennialmedia/android/MMAdView;)V

    .line 455
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v7, "MMFullScreenAdTransition"

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v7, "MMFullScreenAdLaunch"

    if-ne v6, v7, :cond_3

    .line 457
    :cond_2
    iget v6, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 459
    const-string v6, "MillennialMediaAdSDK"

    const-string v7, "Turning off interstitial refresh interval."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v6, -0x1

    iput v6, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 463
    :cond_3
    return-void

    .line 384
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 403
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "MillennialMediaAdSDK"

    const-string v7, "Activity VideoPlayer not declared in AndroidManifest.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 406
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 407
    .local v5, "videoDialog":Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    const-string v6, "Looks like you forgot to declare the Millennial Media Video Player in your manifest file."

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 409
    const/4 v6, -0x3

    const-string v7, "OK"

    new-instance v8, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v8, p0, v5}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 413
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 419
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "videoDialog":Landroid/app/AlertDialog;
    :catch_1
    move-exception v2

    .line 420
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "MillennialMediaAdSDK"

    const-string v7, "Activity MMAdViewOverlayActivity not declared in AndroidManifest.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 422
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 423
    .local v3, "overlayDialog":Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    const-string v6, "Looks like you forgot to declare the Millennial Media MMAdViewOverlayActivity in your manifest file."

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 425
    const/4 v6, -0x3

    const-string v7, "OK"

    new-instance v8, Lcom/millennialmedia/android/MMAdView$2;

    invoke-direct {v8, p0, v3}, Lcom/millennialmedia/android/MMAdView$2;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 429
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 450
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "overlayDialog":Landroid/app/AlertDialog;
    :cond_4
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    sput-object v6, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public static startConversionTrackerWithGoalId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1203
    monitor-enter p0

    .line 1205
    :try_start_0
    const-string v6, "MillennialMediaSettings"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1206
    .local v4, "settings":Landroid/content/SharedPreferences;
    const-string v6, "firstLaunch"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1207
    .local v3, "isFirstLaunch":Z
    if-eqz v3, :cond_0

    .line 1209
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1210
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "firstLaunch"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1211
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1213
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v6, v0

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/app/Activity;)V

    .line 1216
    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_1

    .line 1217
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    sput-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 1219
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v6, v0

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdView;->getAuid(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "auid":Ljava/lang/String;
    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1223
    new-instance v5, Lcom/millennialmedia/android/MMAdView$8;

    invoke-direct {v5, p1, v1, v3}, Lcom/millennialmedia/android/MMAdView$8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1234
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1240
    .end local v5    # "thread":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    .line 1241
    return-void

    .line 1238
    :cond_2
    const-string v6, "MillennialMediaAdSDK"

    const-string v7, "No network available for conversion tracking."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1240
    .end local v1    # "auid":Ljava/lang/String;
    .end local v3    # "isFirstLaunch":Z
    .end local v4    # "settings":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method public callForAd()V
    .locals 1

    .prologue
    .line 684
    const-string v0, "callForAd"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedCallForAd:Z

    .line 701
    :goto_0
    return-void

    .line 693
    :cond_0
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-gez v0, :cond_1

    .line 696
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 697
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdViewController;->chooseCachedAdOrAdCall()V

    .line 700
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedCallForAd:Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 595
    .local v0, "action":I
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-nez v5, :cond_0

    .line 596
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 649
    :goto_0
    return v4

    .line 598
    :cond_0
    if-ne v0, v4, :cond_2

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad clicked: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 601
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v5, v5, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    if-ne v5, v4, :cond_4

    .line 604
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v4, :cond_1

    .line 608
    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v4, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V

    .line 649
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 610
    :catch_0
    move-exception v2

    .local v2, "exception":Ljava/lang/Exception;
    const-string v4, "MillennialMediaAdSDK"

    const-string v5, "Exception raised in your MMAdListener: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 616
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_3
    const-string v4, "MillennialMediaAdSDK"

    const-string v5, "No ad returned, no overlay launched"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 620
    :cond_4
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 623
    const-string v5, "Ad clicked, launching new browser"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 626
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_5

    .line 628
    const-string v5, "MillennialMediaAdSDK"

    const-string v6, "The reference to the ad view was broken."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 631
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 632
    .local v3, "myIntent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 634
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v4, :cond_2

    .line 638
    :try_start_1
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v4, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 640
    :catch_1
    move-exception v2

    .restart local v2    # "exception":Ljava/lang/Exception;
    const-string v4, "MillennialMediaAdSDK"

    const-string v5, "Exception raised in your MMAdListener: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 645
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v3    # "myIntent":Landroid/content/Intent;
    :cond_6
    const-string v4, "MillennialMediaAdSDK"

    const-string v5, "No ad returned, no new browser launched"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public halt()V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 539
    const-string v0, "onAttachedToWindow"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 540
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 541
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedCallForAd:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    .line 543
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 551
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 553
    const-string v0, "onDetachedFromWindow"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 555
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 576
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 579
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "onRestoreInstanceState"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 581
    const-string v3, "MMAdView"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 582
    .local v1, "id":J
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    .line 583
    const-string v3, "super"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 584
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 563
    const-string v1, "onSaveInstanceState"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 564
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 566
    const-string v1, "MMAdView"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 567
    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 511
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_0

    .line 513
    if-nez p2, :cond_2

    .line 514
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 518
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window Visibility Changed. Window is visible?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 519
    return-void

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "windowInFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 482
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_0

    .line 484
    if-eqz p1, :cond_3

    .line 485
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 490
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window Focus Changed. Window in focus?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 492
    if-nez p1, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 495
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 501
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 731
    :cond_0
    return-void
.end method

.method public setAcid(Ljava/lang/String;)V
    .locals 0
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 768
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 0
    .param p1, "apid"    # Ljava/lang/String;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 877
    return-void
.end method

.method public setEducation(Ljava/lang/String;)V
    .locals 0
    .param p1, "education"    # Ljava/lang/String;

    .prologue
    .line 857
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 858
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 0
    .param p1, "ethnicity"    # Ljava/lang/String;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 838
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 778
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 887
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .param p1, "ignoresDensityScaling"    # Z

    .prologue
    .line 1005
    monitor-enter p0

    .line 1007
    :try_start_0
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 1008
    monitor-exit p0

    .line 1009
    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIncome(Ljava/lang/String;)V
    .locals 0
    .param p1, "income"    # Ljava/lang/String;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 808
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 818
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .prologue
    .line 991
    monitor-enter p0

    .line 993
    :try_start_0
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .line 994
    monitor-exit p0

    .line 995
    return-void

    .line 994
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 828
    return-void
.end method

.method public setMarital(Ljava/lang/String;)V
    .locals 0
    .param p1, "marital"    # Ljava/lang/String;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 798
    return-void
.end method

.method public setMetaValues(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, "metaHash":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 940
    :cond_0
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 943
    :cond_1
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 946
    :cond_2
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 949
    :cond_3
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 950
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 952
    :cond_4
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 953
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 955
    :cond_5
    const-string v0, "mmacid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 956
    const-string v0, "mmacid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 958
    :cond_6
    const-string v0, "mxsdk"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 959
    const-string v0, "mxsdk"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 961
    :cond_7
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 962
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 964
    :cond_8
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 965
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 967
    :cond_9
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 968
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 970
    :cond_a
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 971
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 973
    :cond_b
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 974
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 976
    :cond_c
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 977
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 979
    :cond_d
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 980
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 982
    :cond_e
    return-void
.end method

.method public setMxsdk(Ljava/lang/String;)V
    .locals 0
    .param p1, "mxsdk"    # Ljava/lang/String;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 915
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 848
    return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
    .locals 0
    .param p1, "politics"    # Ljava/lang/String;

    .prologue
    .line 867
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 868
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 788
    return-void
.end method

.method public startConversionTrackerWithGoalId(Ljava/lang/String;)V
    .locals 8
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1164
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->_goalId:Ljava/lang/String;

    .line 1165
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "MillennialMediaSettings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1166
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v4, "firstLaunch"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1167
    .local v1, "isFirstLaunch":Z
    if-eqz v1, :cond_0

    .line 1169
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "firstLaunch"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1173
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1176
    new-instance v3, Lcom/millennialmedia/android/MMAdView$7;

    invoke-direct {v3, p0, v1}, Lcom/millennialmedia/android/MMAdView$7;-><init>(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 1187
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1193
    .end local v3    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1191
    :cond_1
    const-string v4, "MillennialMediaAdSDK"

    const-string v5, "No network available for conversion tracking."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUserLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "userLocation"    # Landroid/location/Location;

    .prologue
    .line 739
    if-nez p1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 742
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 743
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 744
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    goto :goto_0
.end method
