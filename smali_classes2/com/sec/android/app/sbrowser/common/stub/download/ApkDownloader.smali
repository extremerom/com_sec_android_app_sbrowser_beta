.class public Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;
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
.field private mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

.field private mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    return-void
.end method

.method private isDownloadStorageFull(J)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object p0

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

    move-object/from16 v0, p0

    const-string v1, " sizeDownload : 0"

    const-string v2, "sizeTotal : "

    const-string v3, "HTTP response code : "

    const-string v4, "download apk"

    const-string v5, "Stub.ApkDownloader"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    if-nez v7, :cond_0

    goto/16 :goto_9

    :cond_0
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getDownloadUrl()Ljava/lang/String;

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

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

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

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {v0, v12, v13}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->isDownloadStorageFull(J)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_2

    const-wide/16 v0, -0x1

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

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

    invoke-virtual {v0, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

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

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

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

    add-int/2addr v1, v2

    rem-int/lit16 v8, v1, 0x12c

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

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

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

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSignatureChecker;->validate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "failed to validate signature"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    return-object v1

    :cond_7
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    const/4 v1, 0x0

    return-object v1

    :goto_8
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

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

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "Stub.ApkDownloader"

    const-string v1, "ApkDownloader has been canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;->onDownloadCancelled()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mRequestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    return-void
.end method

.method public onPostExecute(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;->onDownloadApkFailure()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;->onDownloadInterrupted()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;->onDownloadApkSuccess(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 p0, 0x2

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;->onDownloadApkProgressUpdate(JJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
