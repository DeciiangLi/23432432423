.class Lcom/millennialmedia/android/VideoAd;
.super Lcom/millennialmedia/android/BasicCachedAd;
.source "VideoAd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field duration:J

.field endActivity:[Ljava/lang/String;

.field onCompletionUrl:Ljava/lang/String;

.field showControls:Z

.field showCountdown:Z

.field startActivity:[Ljava/lang/String;

.field stayInPlayer:Z

.field storedOnSdCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/millennialmedia/android/VideoAd$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoAd$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/millennialmedia/android/BasicCachedAd;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/millennialmedia/android/BasicCachedAd;-><init>()V

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, "len":I
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 54
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 58
    const/4 v5, 0x4

    new-array v4, v5, [Z

    .line 59
    .local v4, "yo":[Z
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 60
    const/4 v5, 0x0

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 61
    const/4 v5, 0x1

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 62
    const/4 v5, 0x2

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 63
    const/4 v5, 0x3

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "exp":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 73
    const-class v5, Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 74
    const-class v5, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    .line 78
    .end local v1    # "exp":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "len":I
    .end local v4    # "yo":[Z
    :goto_1
    return-void

    .line 68
    .restart local v1    # "exp":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "len":I
    .restart local v4    # "yo":[Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "exp":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "len":I
    .end local v4    # "yo":[Z
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/millennialmedia/android/BasicCachedAd;-><init>()V

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 99
    if-eqz p1, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 106
    .local v1, "jsonAdObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonAdObject":Lorg/json/JSONObject;
    .local v2, "jsonAdObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 110
    .end local v2    # "jsonAdObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonAdObject":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "videoObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "video"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoAd;->deserializeFromObj(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v1    # "jsonAdObject":Lorg/json/JSONObject;
    .end local v3    # "videoObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 108
    .restart local v1    # "jsonAdObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "videoObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "videoObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    const-string v10, "id"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 135
    const-string v10, "id"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    .line 136
    :cond_0
    const-string v10, "content-url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 137
    const-string v10, "content-url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    .line 138
    :cond_1
    const-string v10, "startActivity"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    const-string v10, "startActivity"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 141
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 142
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 143
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 149
    :cond_3
    const-string v10, "endActivity"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 151
    const-string v10, "endActivity"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 152
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 153
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 154
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 160
    :cond_5
    const-string v10, "showVideoPlayerControls"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 161
    const-string v10, "showVideoPlayerControls"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 162
    :cond_6
    const-string v10, "showCountdownHUD"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 163
    const-string v10, "showCountdownHUD"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 164
    :cond_7
    const-string v10, "expiration"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 166
    const-string v10, "expiration"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "exp":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss ZZZZ"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .end local v1    # "exp":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    :cond_8
    :goto_2
    :try_start_2
    const-string v10, "onCompletion"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 176
    const-string v10, "onCompletion"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 177
    .local v7, "onCompletionObject":Lorg/json/JSONObject;
    const-string v10, "url"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 178
    const-string v10, "url"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 179
    :cond_9
    const-string v10, "stayInPlayer"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 180
    const-string v10, "stayInPlayer"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 182
    .end local v7    # "onCompletionObject":Lorg/json/JSONObject;
    :cond_a
    const-string v10, "duration"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 183
    const-string v10, "duration"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    iput-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 184
    :cond_b
    const-string v10, "buttons"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 186
    const-string v10, "buttons"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 187
    .local v5, "jsonButtons":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_c

    .line 189
    new-instance v8, Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/millennialmedia/android/VideoImage;-><init>(Lorg/json/JSONObject;)V

    .line 190
    .local v8, "vb":Lcom/millennialmedia/android/VideoImage;
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 170
    .end local v3    # "i":I
    .end local v5    # "jsonButtons":Lorg/json/JSONArray;
    .end local v8    # "vb":Lcom/millennialmedia/android/VideoImage;
    .restart local v1    # "exp":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 206
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "exp":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 193
    :cond_c
    :try_start_3
    const-string v10, "log"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 195
    const-string v10, "log"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 196
    .local v6, "jsonLogs":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_d

    .line 198
    new-instance v9, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/millennialmedia/android/VideoLogEvent;-><init>(Lorg/json/JSONObject;)V

    .line 199
    .local v9, "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 204
    .end local v3    # "i":I
    .end local v6    # "jsonLogs":Lorg/json/JSONArray;
    .end local v9    # "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x4

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 231
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 237
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    return-void
.end method