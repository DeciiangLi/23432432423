.class Lcom/millennialmedia/android/VideoImage;
.super Ljava/lang/Object;
.source "VideoImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activity:[Ljava/lang/String;

.field anchor:I

.field anchor2:I

.field appearanceDelay:J

.field button:Landroid/widget/ImageButton;

.field fadeDuration:J

.field fromAlpha:F

.field imageUrl:Ljava/lang/String;

.field inactivityTimeout:J

.field layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field linkUrl:Ljava/lang/String;

.field name:Ljava/lang/String;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field position:I

.field position2:I

.field toAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/millennialmedia/android/VideoImage$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 29
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 30
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 31
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 41
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 43
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 45
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 29
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 30
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 31
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 41
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 43
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 45
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->name:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "len":I
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "imageObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 29
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 30
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 31
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 41
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 43
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 45
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 62
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoImage;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "imageObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 104
    :try_start_0
    const-string v4, "image"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const-string v4, "image"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 106
    :cond_0
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 109
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 111
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 117
    :cond_2
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 119
    :cond_3
    const-string v4, "android-layout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    const-string v4, "android-layout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 121
    :cond_4
    const-string v4, "android-layoutAnchor"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    const-string v4, "android-layoutAnchor"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 123
    :cond_5
    const-string v4, "android-layout2"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 124
    const-string v4, "android-layout2"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 125
    :cond_6
    const-string v4, "android-layoutAnchor2"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 126
    const-string v4, "android-layoutAnchor2"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 127
    :cond_7
    const-string v4, "android-paddingTop"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 128
    const-string v4, "android-paddingTop"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 129
    :cond_8
    const-string v4, "android-paddingLeft"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 130
    const-string v4, "android-paddingLeft"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 131
    :cond_9
    const-string v4, "android-paddingRight"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 132
    const-string v4, "android-paddingRight"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 133
    :cond_a
    const-string v4, "android-paddingBottom"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 134
    const-string v4, "android-paddingBottom"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 135
    :cond_b
    const-string v4, "appearanceDelay"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 136
    const-string v4, "appearanceDelay"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 137
    :cond_c
    const-string v4, "inactivityTimeout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 138
    const-string v4, "inactivityTimeout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 139
    :cond_d
    const-string v4, "opacity"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 141
    const-string v4, "opacity"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 142
    .local v3, "opacityObject":Lorg/json/JSONObject;
    const-string v4, "start"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 143
    const-string v4, "start"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 144
    :cond_e
    const-string v4, "end"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 145
    const-string v4, "end"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 146
    :cond_f
    const-string v4, "fadeDuration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 147
    const-string v4, "fadeDuration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3    # "opacityObject":Lorg/json/JSONObject;
    :cond_10
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    return-void
.end method
