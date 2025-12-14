.class Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;,
        Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private final mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

.field private final mWebApkDownloadInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mWebApkDownloadInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    invoke-interface {p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->createApkFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mApkFile:Ljava/io/File;

    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IOException when closing closeable "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "TinApkDownloader"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createApkFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Directory has already been created : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TinApkDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, ".apk"

    invoke-static {p2, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private isDownloadStorageFull(J)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mApkFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    cmp-long p0, p1, v3

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, " sizeDownload : 0"

    const-string v2, "sizeTotal : "

    const-string v3, "HTTP response code : "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download apk : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mWebApkDownloadInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;

    invoke-interface {v5}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;->getApkDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinApkDownloader"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    iget-object v7, v1, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mWebApkDownloadInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;

    invoke-interface {v7}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;->getApkDownloadUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v7, v1, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    invoke-interface {v7}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;->onDownloadStarted()V

    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, v1, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mWebApkDownloadInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;

    invoke-interface {v8}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;->getApkDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v8, 0x1388

    :try_start_1
    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v9, "GET"

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v3, 0xc8

    if-eq v10, v3, :cond_1

    invoke-direct {v1, v6}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v6}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v6

    :cond_1
    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, v1, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mApkFile:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {v1, v12, v13}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->isDownloadStorageFull(J)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_2

    const-wide/16 v2, -0x1

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {v1, v10}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v11}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v7

    :goto_0
    move-object v6, v10

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    const-wide/16 v14, 0x0

    :try_start_6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v9, v8, v6}, [Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_3

    :try_start_7
    const-string v0, "cancel download!"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct {v1, v10}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v11}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    return-object v1

    :cond_3
    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v11, v3, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v2

    add-long/2addr v14, v8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    rem-int/lit16 v8, v0, 0x12c

    if-eqz v8, :cond_5

    cmp-long v8, v14, v12

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v17, v7

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v16, v3

    long-to-double v2, v14

    move-object/from16 v17, v7

    long-to-double v6, v12

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v8, v9, v2}, [Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v3, v16

    move-object/from16 v7, v17

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_7

    :cond_6
    move-object/from16 v17, v7

    iget-object v0, v1, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkSignatureChecker;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "failed to validate signature"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-direct {v1, v10}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v11}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    return-object v1

    :cond_7
    invoke-direct {v1, v10}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v11}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v0, "download complete"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v17, v7

    move-object v6, v10

    :goto_4
    const/4 v11, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v17, v7

    :goto_5
    const/4 v11, 0x0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v17, v7

    const/4 v6, 0x0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v17, v7

    :goto_6
    const/4 v10, 0x0

    goto :goto_5

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    goto :goto_8

    :catch_5
    move-exception v0

    const/4 v7, 0x0

    goto :goto_6

    :goto_7
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download failure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-direct {v1, v10}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v11}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    const/4 v1, 0x0

    return-object v1

    :goto_8
    invoke-direct {v1, v6}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    invoke-direct {v1, v11}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->closeStream(Ljava/io/Closeable;)V

    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v0

    :cond_a
    :goto_9
    const-string v0, "context or request info is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "TinApkDownloader"

    const-string v1, "ApkDownloader has been canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    invoke-interface {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;->onDownloadCanceled()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;->onDownloadApkFailure()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    invoke-interface {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;->onDownloadInterrupted()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mApkFile:Ljava/io/File;

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;->onDownloadApkSuccess(Ljava/io/File;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;->onDownloadApkProgressUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
