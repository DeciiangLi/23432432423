.class Lcom/millennialmedia/android/AdDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AdDatabaseHelper.java"


# static fields
.field private static final ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ADS_TABLE_NAME:Ljava/lang/String; = "ads"

.field private static final AD_ID:Ljava/lang/String; = "adid"

.field private static final ANDROID_ANCHOR:Ljava/lang/String; = "anchor"

.field private static final ANDROID_ANCHOR_2:Ljava/lang/String; = "anchor2"

.field private static final ANDROID_POSITION:Ljava/lang/String; = "position"

.field private static final ANDROID_POSITION_2:Ljava/lang/String; = "position2"

.field private static final APPEARANCE_DELAY:Ljava/lang/String; = "appearancedelay"

.field private static final BUTTONS_TABLE_NAME:Ljava/lang/String; = "buttons"

.field private static final CONTENT_URL:Ljava/lang/String; = "contenturl"

.field private static final DB_NAME:Ljava/lang/String; = "millennialmedia.db"

.field private static final DB_VERSION:I = 0x1f

.field private static final DEFERRED_VIEW_START:Ljava/lang/String; = "deferredviewstart"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final END_ACTIVITY:Ljava/lang/String; = "endactivity"

.field private static final END_OPACITY:Ljava/lang/String; = "endopacity"

.field private static final EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final FADE_DURATION:Ljava/lang/String; = "fadeduration"

.field private static final IMAGE_URL:Ljava/lang/String; = "imageurl"

.field private static final INACTIVITY_TIMEOUT:Ljava/lang/String; = "inactivitytimeout"

.field private static final LINK_URL:Ljava/lang/String; = "linkurl"

.field private static final LOG:Ljava/lang/String; = "log"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final ON_COMPLETION:Ljava/lang/String; = "oncompletion"

.field private static final PADDING_BOTTOM:Ljava/lang/String; = "paddingbottom"

.field private static final PADDING_LEFT:Ljava/lang/String; = "paddingleft"

.field private static final PADDING_RIGHT:Ljava/lang/String; = "paddingright"

.field private static final PADDING_TOP:Ljava/lang/String; = "paddingtop"

.field private static final SD_CARD:Ljava/lang/String; = "sdcard"

.field private static final SHOW_CONTROLS:Ljava/lang/String; = "showcontrols"

.field private static final SHOW_COUNTDOWN:Ljava/lang/String; = "showcountdown"

.field private static final START_ACTIVITY:Ljava/lang/String; = "startactivity"

.field private static final START_OPACITY:Ljava/lang/String; = "startopacity"

.field private static final STAY_IN_PLAYER:Ljava/lang/String; = "stayInPlayer"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final _ID:Ljava/lang/String; = "id"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string v0, "millennialmedia.db"

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    return-void
.end method

.method private getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "I[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 754
    .local p3, "emptyArray":[Ljava/lang/Object;, "[TT;"
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 755
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 756
    .local v0, "byteIn":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 757
    .local v4, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 758
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 759
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 761
    if-eqz v5, :cond_0

    .line 762
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 770
    .end local v0    # "byteIn":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v6

    .line 765
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/StreamCorruptedException;
    invoke-virtual {v2}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .line 770
    .end local v2    # "e":Ljava/io/StreamCorruptedException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 766
    :catch_1
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 767
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "col"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p3, :cond_0

    .line 806
    :goto_0
    return-void

    .line 789
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p3

    if-ge v3, v6, :cond_1

    .line 792
    aget-object v6, p3, v3

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 795
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 796
    .local v1, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 797
    .local v5, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 798
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 799
    .local v0, "byteArray":[B
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 800
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 803
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    .end local v0    # "byteArray":[B
    .end local v1    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method checkIfAdExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v2, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM ads WHERE ads.name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 380
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 382
    .local v1, "row":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 383
    if-lez v1, :cond_0

    .line 385
    const/4 v2, 0x1

    .line 389
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 164
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAllExpiredAds()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 566
    iget-object v10, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT ads.expiration,ads.name FROM ads"

    invoke-virtual {v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 569
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 570
    .local v8, "row":I
    const/4 v4, 0x0

    .line 571
    .local v4, "expiredAds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez v8, :cond_3

    .line 573
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "expiredAds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .restart local v4    # "expiredAds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 575
    .local v3, "expiration":Ljava/util/Date;
    const/4 v2, 0x0

    .line 576
    .local v2, "exp":Ljava/lang/String;
    const/4 v7, 0x0

    .line 577
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 578
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 580
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 581
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 582
    if-eqz v2, :cond_2

    .line 586
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 587
    .local v5, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 588
    if-eqz v3, :cond_0

    .line 590
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    .line 592
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is expired"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 594
    if-eqz v7, :cond_0

    .line 595
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-nez v9, :cond_1

    .line 612
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 578
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 598
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 607
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_2
    if-eqz v7, :cond_0

    .line 608
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 618
    .end local v2    # "exp":Ljava/lang/String;
    .end local v3    # "expiration":Ljava/util/Date;
    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 623
    :goto_2
    return-object v9

    .line 622
    .restart local v2    # "exp":Ljava/lang/String;
    .restart local v3    # "expiration":Ljava/util/Date;
    .restart local v6    # "i":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v9, v4

    .line 623
    goto :goto_2
.end method

.method getButtonCountForAd(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v2, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*)  FROM ads,buttons WHERE ads.name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "buttons"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 523
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 524
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 525
    return v0
.end method

.method getButtonsForAd(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 448
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT DISTINCT buttons.imageurl,buttons.linkurl,buttons.activity,buttons.position,buttons.anchor,buttons.position2,buttons.anchor2,buttons.paddingleft,buttons.paddingtop,buttons.paddingright,buttons.paddingbottom,buttons.appearancedelay,buttons.inactivitytimeout,buttons.startopacity,buttons.endopacity,buttons.fadeduration,buttons.id FROM ads,buttons WHERE ads.name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "adid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ads"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 471
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 473
    .local v4, "row":I
    const/4 v1, 0x0

    .line 474
    .local v1, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 475
    if-lez v4, :cond_2

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    .restart local v1    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 480
    new-instance v0, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage;-><init>()V

    .line 481
    .local v0, "button":Lcom/millennialmedia/android/VideoImage;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 482
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 483
    const/4 v5, 0x2

    new-array v6, v8, [Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 484
    iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 485
    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 486
    :cond_0
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 487
    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 488
    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 489
    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 490
    const/4 v5, 0x7

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 491
    const/16 v5, 0x8

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 492
    const/16 v5, 0x9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 493
    const/16 v5, 0xa

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 494
    const/16 v5, 0xb

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 495
    const/16 v5, 0xc

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 496
    const/16 v5, 0xd

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 497
    const/16 v5, 0xe

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 498
    const/16 v5, 0xf

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 500
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 503
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 478
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 507
    .end local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 508
    return-object v1
.end method

.method getDeferredViewStart(Ljava/lang/String;)J
    .locals 7
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v4, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT ads.deferredviewstart FROM ads WHERE ads.name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 676
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 677
    .local v3, "row":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 678
    .local v1, "deferredViewStart":J
    if-lez v3, :cond_0

    .line 680
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 681
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 683
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 684
    return-wide v1
.end method

.method getExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 10
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 634
    iget-object v7, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT ads.expiration FROM ads WHERE ads.name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 636
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 637
    .local v5, "row":I
    const/4 v3, 0x0

    .line 638
    .local v3, "expiration":Ljava/util/Date;
    if-lez v5, :cond_1

    .line 640
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 641
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "exp":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 648
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 649
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 662
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v6, v3

    .line 663
    .end local v2    # "exp":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 650
    .restart local v2    # "exp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 658
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "exp":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method getIdForAdName(Ljava/lang/String;)I
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 726
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ads"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v11

    const-string v3, "ads.name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 729
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 730
    .local v10, "row":I
    const/4 v9, 0x0

    .line 731
    .local v9, "id":I
    if-lez v10, :cond_0

    .line 733
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 734
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 736
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 737
    return v9
.end method

.method getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    .locals 22
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT DISTINCT ads.name,ads.contenturl,ads.expiration,ads.deferredviewstart,ads.oncompletion,ads.showcontrols,ads.startactivity,ads.endactivity,ads.duration,ads.stayInPlayer,ads.log,ads.id,ads.sdcard,ads.showcountdown FROM ads WHERE ads.name=\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 258
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 260
    .local v14, "row":I
    const/4 v3, 0x0

    .line 261
    .local v3, "ad":Lcom/millennialmedia/android/VideoAd;
    if-lez v14, :cond_b

    .line 263
    new-instance v3, Lcom/millennialmedia/android/VideoAd;

    .end local v3    # "ad":Lcom/millennialmedia/android/VideoAd;
    invoke-direct {v3}, Lcom/millennialmedia/android/VideoAd;-><init>()V

    .line 264
    .restart local v3    # "ad":Lcom/millennialmedia/android/VideoAd;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 265
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    .line 266
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    .line 267
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, "exp":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v19, "EEE MMM dd HH:mm:ss zzz yyyy"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .local v10, "formatter":Ljava/text/SimpleDateFormat;
    if-eqz v9, :cond_0

    .line 272
    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v10    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    .line 277
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 278
    const/16 v16, 0x1

    .line 279
    .local v16, "shouldShowControls":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 280
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 282
    const/16 v19, 0x6

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 283
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 284
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 285
    :cond_1
    const/16 v19, 0x7

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 286
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 287
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 288
    :cond_2
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 289
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 290
    .local v18, "stayInPlayer":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 292
    const/16 v19, 0xa

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Lcom/millennialmedia/android/VideoLogEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/millennialmedia/android/VideoLogEvent;

    .line 293
    .local v13, "logEvents":[Lcom/millennialmedia/android/VideoLogEvent;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 294
    if-eqz v13, :cond_5

    .line 296
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    .line 297
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget-object v20, v13, v11

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 273
    .end local v11    # "i":I
    .end local v13    # "logEvents":[Lcom/millennialmedia/android/VideoLogEvent;
    .end local v16    # "shouldShowControls":I
    .end local v18    # "stayInPlayer":I
    :catch_0
    move-exception v8

    .line 274
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    .end local v8    # "e":Ljava/text/ParseException;
    .restart local v16    # "shouldShowControls":I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 290
    .restart local v18    # "stayInPlayer":I
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 300
    .restart local v13    # "logEvents":[Lcom/millennialmedia/android/VideoLogEvent;
    :cond_5
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 302
    .local v12, "id":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 303
    .local v15, "sdCard":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_8

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    .line 305
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 306
    .local v17, "showCountdown":I
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT DISTINCT buttons.imageurl,buttons.linkurl,buttons.activity,buttons.position,buttons.anchor,buttons.position2,buttons.anchor2,buttons.paddingleft,buttons.paddingtop,buttons.paddingright,buttons.paddingbottom,buttons.appearancedelay,buttons.inactivitytimeout,buttons.startopacity,buttons.endopacity,buttons.fadeduration,buttons.id FROM ads,buttons WHERE buttons.adid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ORDER BY "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "buttons"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "id"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, "buttonsCursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 332
    .local v5, "buttonsCount":I
    if-lez v5, :cond_a

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 336
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    if-ge v11, v5, :cond_a

    .line 338
    new-instance v4, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v4}, Lcom/millennialmedia/android/VideoImage;-><init>()V

    .line 340
    .local v4, "button":Lcom/millennialmedia/android/VideoImage;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 341
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 342
    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 343
    iget-object v0, v4, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 344
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 345
    :cond_6
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 346
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 347
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 348
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 349
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 350
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 351
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 352
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 353
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 354
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 355
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 356
    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 357
    const/16 v19, 0xf

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 359
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v19

    if-nez v19, :cond_7

    .line 362
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 336
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 303
    .end local v4    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v5    # "buttonsCount":I
    .end local v6    # "buttonsCursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v17    # "showCountdown":I
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 306
    .restart local v17    # "showCountdown":I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 365
    .restart local v5    # "buttonsCount":I
    .restart local v6    # "buttonsCursor":Landroid/database/Cursor;
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 367
    .end local v5    # "buttonsCount":I
    .end local v6    # "buttonsCursor":Landroid/database/Cursor;
    .end local v9    # "exp":Ljava/lang/String;
    .end local v12    # "id":I
    .end local v13    # "logEvents":[Lcom/millennialmedia/android/VideoLogEvent;
    .end local v15    # "sdCard":I
    .end local v16    # "shouldShowControls":I
    .end local v17    # "showCountdown":I
    .end local v18    # "stayInPlayer":I
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    return-object v3
.end method

.method isAdOnSDCard(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "result":I
    iget-object v4, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT sdcard FROM ads WHERE ads.name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 538
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 540
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 541
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 543
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 544
    if-ne v1, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 93
    const-string v1, "Creating cached ad database"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 95
    const-string v1, "CREATE TABLE ads (id INTEGER NOT NULL PRIMARY KEY,name TEXT,type INTEGER,startactivity BLOB,endactivity BLOB,showcontrols INTEGER,contenturl TEXT,expiration TEXT,deferredviewstart BIGINT,oncompletion TEXT,duration BIGINT,stayInPlayer INTEGER,log BLOB,sdcard INTEGER,showcountdown INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v1, "CREATE TABLE buttons (id INTEGER NOT NULL PRIMARY KEY,imageurl TEXT,linkurl TEXT,activity BLOB,position INTEGER,anchor INTEGER,position2 INTEGER,anchor2 INTEGER,paddingtop INTEGER,paddingleft INTEGER,paddingbottom INTEGER,paddingright INTEGER,appearancedelay BIGINT,inactivitytimeout BIGINT,startopacity FLOAT,endopacity FLOAT,fadeduration BIGINT,adid INTEGER CONSTRAINT fk_buttons_ads_id REFERENCES ads(id) ON DELETE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string v0, "CREATE TRIGGER fk_buttons_ads_id BEFORE DELETE ON ads FOR EACH ROW BEGIN DELETE from buttons WHERE buttons.adid=OLD.id; END;"

    .line 141
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 150
    const-string v0, "DROP TABLE IF EXISTS ads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "DROP TABLE IF EXISTS buttons"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    return-void
.end method

.method purgeAdFromDb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v3, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ads"

    const-string v5, "ads.name=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, "row":I
    if-lez v0, :cond_0

    .line 438
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method shouldShowBottomBar(Ljava/lang/String;)Z
    .locals 8
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 402
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT DISTINCT showcontrols FROM ads WHERE ads.name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 407
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 409
    .local v1, "row":I
    const/4 v2, 0x1

    .line 411
    .local v2, "shouldShowControls":I
    if-lez v1, :cond_0

    .line 413
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 415
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 417
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    if-ne v2, v3, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method storeAd(Lcom/millennialmedia/android/VideoAd;)V
    .locals 13
    .param p1, "ad"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    const/4 v12, 0x0

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, "adValues":Landroid/content/ContentValues;
    const-string v9, "name"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v9, "type"

    iget v10, p1, Lcom/millennialmedia/android/VideoAd;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v9, "startactivity"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    const-string v9, "endactivity"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    const-string v9, "showcontrols"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    const-string v9, "contenturl"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    if-eqz v9, :cond_0

    .line 186
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "dateString":Ljava/lang/String;
    const-string v9, "expiration"

    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v5    # "dateString":Ljava/lang/String;
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const-string v9, "deferredviewstart"

    iget-wide v10, p1, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v9, "oncompletion"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v9, "duration"

    iget-wide v10, p1, Lcom/millennialmedia/android/VideoAd;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v9, "stayInPlayer"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    const-string v9, "sdcard"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    const-string v9, "showcountdown"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    const-string v9, "log"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v9, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "ads"

    invoke-virtual {v9, v10, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 204
    .local v1, "adid":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 206
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 207
    .local v3, "button":Lcom/millennialmedia/android/VideoImage;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v4, "buttonValues":Landroid/content/ContentValues;
    const-string v9, "imageurl"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v9, "linkurl"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v9, "activity"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-direct {p0, v4, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const-string v9, "position"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v9, "anchor"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v9, "position2"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v9, "anchor2"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v9, "paddingtop"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v9, "paddingleft"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v9, "paddingright"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v9, "paddingbottom"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v9, "appearancedelay"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    const-string v9, "inactivitytimeout"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v9, "startopacity"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 222
    const-string v9, "endopacity"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 223
    const-string v9, "fadeduration"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v9, "adid"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    iget-object v9, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "buttons"

    invoke-virtual {v9, v10, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 191
    .end local v1    # "adid":J
    .end local v3    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v4    # "buttonValues":Landroid/content/ContentValues;
    .end local v8    # "i":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 229
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "adid":J
    .restart local v8    # "i":I
    :cond_1
    return-void
.end method

.method updateAdData(Lcom/millennialmedia/android/VideoAd;)V
    .locals 12
    .param p1, "ad"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 697
    if-nez p1, :cond_1

    .line 722
    :cond_0
    return-void

    .line 700
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 701
    .local v1, "adValues":Landroid/content/ContentValues;
    const-string v5, "startactivity"

    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    const-string v5, "endactivity"

    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    const-string v5, "log"

    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ads"

    const-string v7, "ads.name=?"

    new-array v8, v11, [Ljava/lang/String;

    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    iget-object v5, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->getIdForAdName(Ljava/lang/String;)I

    move-result v0

    .line 709
    .local v0, "adIdNum":I
    if-lez v0, :cond_0

    .line 711
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 713
    iget-object v5, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 714
    .local v2, "button":Lcom/millennialmedia/android/VideoImage;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 716
    .local v3, "buttonValues":Landroid/content/ContentValues;
    const-string v5, "activity"

    iget-object v6, v2, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "buttons"

    const-string v7, "buttons.adid=? AND buttons.imageurl=? "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, v2, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 711
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method updateAdOnSDCard(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isOnSdCard"    # I

    .prologue
    .line 553
    iget-object v1, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE ads SET sdcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 556
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 557
    return-void
.end method

.method updateDeferredViewStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v1, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE ads SET deferredviewstart = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 692
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 693
    return-void
.end method
