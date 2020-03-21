.class Lcom/millennialmedia/android/p53ee8cb625$VideoServer;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/p53ee8cb625;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoServer"
.end annotation


# instance fields
.field private cacheDir:Ljava/lang/String;

.field done:Z

.field private final filePath:Ljava/lang/String;

.field port:Ljava/lang/Integer;

.field private serverSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/millennialmedia/android/p53ee8cb625;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "isSDCard"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1326
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    iput-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    .line 1322
    iput-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->done:Z

    .line 1327
    iput-object p2, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->filePath:Ljava/lang/String;

    .line 1328
    if-eqz p3, :cond_0

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/millennialmedia/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->cacheDir:Ljava/lang/String;

    .line 1336
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    .line 1337
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 1339
    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 1340
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->port:Ljava/lang/Integer;

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Server Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->port:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_1
    return-void

    .line 1332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/p53ee8cb625;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->cacheDir:Ljava/lang/String;

    goto :goto_0

    .line 1343
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized requestStop()V
    .locals 2

    .prologue
    .line 1549
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->done:Z

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested video server stop. Done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->done:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    monitor-exit p0

    return-void

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 33

    .prologue
    .line 1352
    const/4 v10, 0x0

    .line 1354
    .local v10, "clientSocket":Ljava/net/Socket;
    const/16 v22, 0x0

    .line 1358
    .local v22, "outputStream":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 1359
    .local v14, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v29, 0x400

    move/from16 v0, v29

    new-array v3, v0, [B

    .line 1361
    .local v3, "buffer":[B
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->done:Z

    move/from16 v29, v0

    if-nez v29, :cond_7

    .line 1365
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v10

    .line 1366
    const-string v29, "Accepted new incoming connection"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 1368
    .local v16, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    .line 1371
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    .local v28, "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 1375
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1377
    .local v25, "requestString":Ljava/lang/String;
    const-string v29, "\r\n\r\n"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1378
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Request string: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1379
    const-string v29, "******************"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1381
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "HEAD /"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/video.dat"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1383
    new-instance v13, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->cacheDir:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/video.dat"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v13, "file":Ljava/io/File;
    const-string v29, "HTTP/1.1 200 OK\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1385
    const-string v29, "Content-Type: video/mp4\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1386
    new-instance v29, Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Length: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1387
    const-string v29, "Cache-Control: no-cache\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1388
    const-string v29, "Connection: close\r\n\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    .end local v13    # "file":Ljava/io/File;
    :goto_1
    const-string v29, "Closing video server socket"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1523
    if-eqz v10, :cond_2

    .line 1524
    :try_start_1
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1525
    :cond_2
    if-eqz v14, :cond_3

    .line 1526
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1527
    :cond_3
    if-eqz v22, :cond_0

    .line 1528
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1530
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1390
    .end local v11    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "GET /"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/video.dat"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 1393
    new-instance v13, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->cacheDir:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->filePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/video.dat"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1394
    .restart local v13    # "file":Ljava/io/File;
    if-nez v13, :cond_a

    .line 1520
    const-string v29, "Closing video server socket"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1523
    if-eqz v10, :cond_5

    .line 1524
    :try_start_3
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1525
    :cond_5
    if-eqz v14, :cond_6

    .line 1526
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1527
    :cond_6
    if-eqz v22, :cond_7

    .line 1528
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1534
    .end local v13    # "file":Ljava/io/File;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "requestString":Ljava/lang/String;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->done:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 1535
    const-string v29, "Detected stop"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1538
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/ServerSocket;->isBound()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1540
    const-string v29, "Closing server socket connection"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->serverSocket:Ljava/net/ServerSocket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 1545
    :cond_9
    :goto_3
    return-void

    .line 1530
    .restart local v13    # "file":Ljava/io/File;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "requestString":Ljava/lang/String;
    .restart local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1396
    .end local v11    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_5
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    .line 1398
    const-string v29, "Range:"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 1401
    const-string v29, "Range found in request string "

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1402
    const-string v29, "Range: bytes=([0-9]+)-\\s"

    invoke-static/range {v29 .. v29}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 1403
    .local v24, "p2":Ljava/util/regex/Pattern;
    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 1404
    .local v20, "m2":Ljava/util/regex/Matcher;
    const-wide/16 v7, 0x1

    .line 1405
    .local v7, "bytesStartLong":J
    const-wide/16 v4, 0x1

    .line 1406
    .local v4, "bytesEndLong":J
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1408
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 1409
    .local v9, "bytesStartString":Ljava/lang/String;
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v7, v0

    .line 1410
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1411
    goto :goto_4

    .line 1413
    .end local v9    # "bytesStartString":Ljava/lang/String;
    :cond_b
    const-string v29, "Range: bytes=([0-9]+)-([0-9]+)"

    invoke-static/range {v29 .. v29}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 1414
    .local v23, "p1":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 1415
    .local v19, "m1":Ljava/util/regex/Matcher;
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1417
    const/16 v29, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 1418
    .restart local v9    # "bytesStartString":Ljava/lang/String;
    const/16 v29, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1419
    .local v6, "bytesEndString":Ljava/lang/String;
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v7, v0

    .line 1420
    if-eqz v6, :cond_c

    .line 1422
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v4, v0

    goto :goto_5

    .line 1426
    :cond_c
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v29

    const-wide/16 v31, 0x1

    sub-long v4, v29, v31

    goto :goto_5

    .line 1430
    .end local v6    # "bytesEndString":Ljava/lang/String;
    .end local v9    # "bytesStartString":Ljava/lang/String;
    :cond_d
    const-string v29, "MillennialMediaAdSDK"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Bytes: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1434
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .local v15, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v15, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v26

    .line 1435
    .local v26, "skippedBytes":J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Bytes skipped: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1436
    sub-long v29, v4, v26

    const-wide/16 v31, 0x1

    add-long v17, v29, v31

    .line 1438
    .local v17, "length":J
    const-string v29, "HTTP/1.1 206 Partial Content\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1439
    const-string v29, "Date: Thu, 17 Feb 2011 01:27:03 GMT\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1440
    const-string v29, "Etag: \"320581-329f19-235b0a40\"\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1441
    const-wide/16 v29, 0x1

    cmp-long v29, v4, v29

    if-lez v29, :cond_12

    .line 1442
    new-instance v29, Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Range: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1445
    :goto_6
    const-string v29, "Content-Type: video/mp4\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1446
    new-instance v29, Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Length: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1447
    const-string v29, "Connection: close\r\n\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1450
    :cond_e
    invoke-virtual {v15, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    .line 1451
    .local v21, "numread":I
    if-gtz v21, :cond_13

    .line 1453
    const-string v29, "Video Did Finish"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_7
    move-object v14, v15

    .line 1492
    .end local v4    # "bytesEndLong":J
    .end local v7    # "bytesStartLong":J
    .end local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v17    # "length":J
    .end local v19    # "m1":Ljava/util/regex/Matcher;
    .end local v20    # "m2":Ljava/util/regex/Matcher;
    .end local v23    # "p1":Ljava/util/regex/Pattern;
    .end local v24    # "p2":Ljava/util/regex/Pattern;
    .end local v26    # "skippedBytes":J
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_8
    :try_start_7
    const-string v29, "\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1493
    const-string v29, "200 OK"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1494
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/p53ee8cb625$VideoServer;->done:Z
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1503
    .end local v13    # "file":Ljava/io/File;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "numread":I
    .end local v25    # "requestString":Ljava/lang/String;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v11

    .line 1504
    .local v11, "e":Ljava/net/SocketTimeoutException;
    :goto_9
    :try_start_8
    invoke-virtual {v11}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1505
    if-eqz v10, :cond_f

    .line 1507
    :try_start_9
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1520
    :cond_f
    :goto_a
    const-string v29, "Closing video server socket"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1523
    if-eqz v10, :cond_10

    .line 1524
    :try_start_a
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1525
    :cond_10
    if-eqz v14, :cond_11

    .line 1526
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1527
    :cond_11
    if-eqz v22, :cond_0

    .line 1528
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 1530
    :catch_3
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1444
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bytesEndLong":J
    .restart local v7    # "bytesStartLong":J
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "length":J
    .restart local v19    # "m1":Ljava/util/regex/Matcher;
    .restart local v20    # "m2":Ljava/util/regex/Matcher;
    .restart local v23    # "p1":Ljava/util/regex/Pattern;
    .restart local v24    # "p2":Ljava/util/regex/Pattern;
    .restart local v25    # "requestString":Ljava/lang/String;
    .restart local v26    # "skippedBytes":J
    .restart local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_12
    :try_start_b
    new-instance v29, Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Range: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_6

    .line 1503
    .end local v4    # "bytesEndLong":J
    .end local v7    # "bytesStartLong":J
    .end local v17    # "length":J
    .end local v19    # "m1":Ljava/util/regex/Matcher;
    .end local v20    # "m2":Ljava/util/regex/Matcher;
    .end local v23    # "p1":Ljava/util/regex/Pattern;
    .end local v24    # "p2":Ljava/util/regex/Pattern;
    .end local v26    # "skippedBytes":J
    :catch_4
    move-exception v11

    move-object v14, v15

    .end local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 1457
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bytesEndLong":J
    .restart local v7    # "bytesStartLong":J
    .restart local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v17    # "length":J
    .restart local v19    # "m1":Ljava/util/regex/Matcher;
    .restart local v20    # "m2":Ljava/util/regex/Matcher;
    .restart local v21    # "numread":I
    .restart local v23    # "p1":Ljava/util/regex/Pattern;
    .restart local v24    # "p2":Ljava/util/regex/Pattern;
    .restart local v26    # "skippedBytes":J
    :cond_13
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v29, v0

    cmp-long v29, v17, v29

    if-ltz v29, :cond_14

    .line 1459
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1465
    :goto_b
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v29, v0

    sub-long v17, v17, v29

    .line 1466
    const-wide/16 v29, 0x0

    cmp-long v29, v17, v29

    if-gtz v29, :cond_e

    goto/16 :goto_7

    .line 1463
    :cond_14
    const/16 v29, 0x0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_b

    .line 1512
    .end local v4    # "bytesEndLong":J
    .end local v7    # "bytesStartLong":J
    .end local v17    # "length":J
    .end local v19    # "m1":Ljava/util/regex/Matcher;
    .end local v20    # "m2":Ljava/util/regex/Matcher;
    .end local v21    # "numread":I
    .end local v23    # "p1":Ljava/util/regex/Pattern;
    .end local v24    # "p2":Ljava/util/regex/Pattern;
    .end local v26    # "skippedBytes":J
    :catch_5
    move-exception v11

    move-object v14, v15

    .line 1514
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "requestString":Ljava/lang/String;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v11, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_c
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1520
    const-string v29, "Closing video server socket"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1523
    if-eqz v10, :cond_15

    .line 1524
    :try_start_d
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1525
    :cond_15
    if-eqz v14, :cond_16

    .line 1526
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1527
    :cond_16
    if-eqz v22, :cond_7

    .line 1528
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    .line 1530
    :catch_6
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1470
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "requestString":Ljava/lang/String;
    .restart local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_17
    :try_start_e
    const-string v29, "HTTP/1.1 200 OK\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1471
    const-string v29, "Content-Type: video/mp4\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1472
    new-instance v29, Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Length: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1473
    const-string v29, "Cache-Control: no-cache\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1474
    const-string v29, "Connection: close\r\n\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1477
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1481
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_d
    :try_start_f
    invoke-virtual {v15, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    .line 1482
    .restart local v21    # "numread":I
    if-gtz v21, :cond_18

    .line 1484
    const-string v29, "MillennialMediaAdSDK"

    const-string v30, "Video Did Finish"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v15

    .line 1485
    .end local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 1489
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_18
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_d

    .line 1517
    .end local v21    # "numread":I
    :catch_7
    move-exception v11

    move-object v14, v15

    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "requestString":Ljava/lang/String;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "e":Ljava/io/IOException;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_e
    :try_start_10
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1520
    const-string v29, "Closing video server socket"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1523
    if-eqz v10, :cond_19

    .line 1524
    :try_start_11
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1525
    :cond_19
    if-eqz v14, :cond_1a

    .line 1526
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1527
    :cond_1a
    if-eqz v22, :cond_0

    .line 1528
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 1530
    :catch_8
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1498
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "requestString":Ljava/lang/String;
    .restart local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1b
    :try_start_12
    const-string v29, "HTTP/1.1 400 Bad Request\r\n\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1499
    const-string v29, "400 Bad Request"

    invoke-static/range {v29 .. v29}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 1512
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "requestString":Ljava/lang/String;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_9
    move-exception v11

    goto/16 :goto_c

    .line 1508
    .local v11, "e":Ljava/net/SocketTimeoutException;
    :catch_a
    move-exception v12

    .line 1509
    .local v12, "e1":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_a

    .line 1520
    .end local v11    # "e":Ljava/net/SocketTimeoutException;
    .end local v12    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    :goto_f
    const-string v30, "Closing video server socket"

    invoke-static/range {v30 .. v30}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1523
    if-eqz v10, :cond_1c

    .line 1524
    :try_start_14
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1525
    :cond_1c
    if-eqz v14, :cond_1d

    .line 1526
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1527
    :cond_1d
    if-eqz v22, :cond_1e

    .line 1528
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 1530
    :cond_1e
    :goto_10
    throw v29

    :catch_b
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 1544
    .end local v11    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1520
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "requestString":Ljava/lang/String;
    .restart local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v29

    move-object v14, v15

    .end local v15    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_f

    .line 1517
    .end local v13    # "file":Ljava/io/File;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "requestString":Ljava/lang/String;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_d
    move-exception v11

    goto :goto_e
.end method
