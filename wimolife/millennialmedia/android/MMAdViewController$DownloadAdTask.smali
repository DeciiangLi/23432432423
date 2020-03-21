.class Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;
.super Landroid/os/AsyncTask;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/millennialmedia/android/VideoAd;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 3

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1204
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1205
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1206
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "The reference to the ad view was broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :goto_0
    return-void

    .line 1208
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HandShake;->lockAdTypeDownload(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1200
    check-cast p1, [Lcom/millennialmedia/android/VideoAd;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->doInBackground([Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
    .locals 22
    .param p1, "ad"    # [Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMAdView;

    .line 1235
    .local v3, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v3, :cond_0

    .line 1237
    const-string v19, "MillennialMediaAdSDK"

    const-string v20, "The reference to the ad view was broken."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/16 v19, 0x0

    .line 1322
    :goto_0
    return-object v19

    .line 1240
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 1241
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 1243
    :cond_2
    const/4 v5, 0x0

    .line 1244
    .local v5, "cacheDir":Ljava/io/File;
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1246
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    const-string v20, "mounted"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1248
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 1249
    .local v15, "sdCard":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    const-string v19, "millennialmedia"

    move-object/from16 v0, v19

    invoke-direct {v13, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1250
    .local v13, "millennialMediaDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_4

    .line 1252
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1254
    move-object v5, v13

    .line 1284
    .end local v13    # "millennialMediaDir":Ljava/io/File;
    .end local v15    # "sdCard":Ljava/io/File;
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1285
    .local v14, "newAdDirPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 1288
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Downloading content to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "video.dat"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v14}, Lcom/millennialmedia/android/MMAdViewController;->access$800(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 1292
    .local v18, "success":Z
    if-nez v18, :cond_7

    .line 1294
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "MillennialMediaSettings"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1295
    .local v16, "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1296
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v19, "pendingDownload"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1297
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1298
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 1259
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "file":Ljava/io/File;
    .end local v14    # "newAdDirPath":Ljava/lang/String;
    .end local v16    # "settings":Landroid/content/SharedPreferences;
    .end local v18    # "success":Z
    .restart local v13    # "millennialMediaDir":Ljava/io/File;
    .restart local v15    # "sdCard":Ljava/io/File;
    :cond_3
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 1260
    new-instance v6, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1261
    .local v6, "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdOnSDCard(Ljava/lang/String;I)V

    .line 1262
    invoke-virtual {v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto/16 :goto_1

    .line 1267
    .end local v6    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_4
    move-object v5, v13

    goto/16 :goto_1

    .line 1273
    .end local v13    # "millennialMediaDir":Ljava/io/File;
    .end local v15    # "sdCard":Ljava/io/File;
    :cond_5
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 1274
    new-instance v6, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 1275
    .restart local v6    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdOnSDCard(Ljava/lang/String;I)V

    .line 1276
    invoke-virtual {v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto/16 :goto_1

    .line 1281
    .end local v6    # "db":Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_6
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    goto/16 :goto_1

    .line 1302
    .restart local v9    # "file":Ljava/io/File;
    .restart local v14    # "newAdDirPath":Ljava/lang/String;
    .restart local v18    # "success":Z
    :cond_7
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_9

    .line 1304
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/VideoImage;

    .line 1305
    .local v4, "button":Lcom/millennialmedia/android/VideoImage;
    iget-object v12, v4, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 1306
    .local v12, "imageUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 1307
    .local v11, "imageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12, v11, v14}, Lcom/millennialmedia/android/MMAdViewController;->access$800(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 1308
    if-nez v18, :cond_8

    .line 1310
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "MillennialMediaSettings"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1311
    .restart local v16    # "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1312
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v19, "pendingDownload"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1313
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1314
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 1302
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "settings":Landroid/content/SharedPreferences;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1318
    .end local v4    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v11    # "imageName":Ljava/lang/String;
    .end local v12    # "imageUrl":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "MillennialMediaSettings"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1319
    .local v17, "settings2":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1320
    .local v8, "editor2":Landroid/content/SharedPreferences$Editor;
    const-string v19, "pendingDownload"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1321
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1322
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1200
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1338
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1339
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 1341
    const-string v5, "MillennialMediaAdSDK"

    const-string v6, "The reference to the ad view was broken."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "MillennialMediaSettings"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1345
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1346
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    .line 1348
    const-string v5, "lastDownloadedAdName"

    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download complete. LastDownloadedAdName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1350
    const-string v5, "pendingDownload"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1351
    const/4 v4, 0x0

    .line 1360
    .local v4, "success":Z
    :goto_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v5

    iget-object v6, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/HandShake;->unlockAdTypeDownload(Ljava/lang/String;)V

    .line 1361
    if-eqz v4, :cond_4

    .line 1363
    const-string v5, "downloadAttempts"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1364
    const-string v5, "Ad download completed successfully: TRUE"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1366
    const-string v5, "lastAdViewed"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1367
    const-string v5, "Last ad viewed: FALSE"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1375
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1376
    iget-object v5, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1353
    .end local v4    # "success":Z
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "success":Z
    goto :goto_1

    .line 1357
    .end local v4    # "success":Z
    :cond_3
    const-string v5, "lastDownloadedAdName"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1358
    const/4 v4, 0x0

    .restart local v4    # "success":Z
    goto :goto_1

    .line 1371
    :cond_4
    const-string v5, "downloadAttempts"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 1372
    .local v1, "attempts":I
    const-string v5, "downloadAttempts"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1373
    const-string v5, "Ad download completed successfully: FALSE"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 1215
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1216
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1218
    const-string v3, "MillennialMediaAdSDK"

    const-string v4, "The reference to the ad view was broken."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :goto_0
    return-void

    .line 1221
    :cond_0
    const-string v3, "DownloadAdTask onPreExecute"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "MillennialMediaSettings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1223
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1224
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pendingDownload"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1226
    const-string v3, "Setting pendingDownload to TRUE"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onProgressUpdate()V
    .locals 0

    .prologue
    .line 1330
    return-void
.end method
