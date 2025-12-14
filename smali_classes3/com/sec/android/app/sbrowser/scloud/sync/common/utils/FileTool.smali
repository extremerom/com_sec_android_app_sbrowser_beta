.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileTool"


# direct methods
.method public static writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, "writeToFile - start Write with stream : "

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    int-to-long v10, v9

    add-long v13, v5, v10

    add-long/2addr v7, v10

    if-eqz p4, :cond_1

    const-wide/32 v5, 0x20000

    cmp-long v5, v13, v5

    if-lez v5, :cond_1

    move-object/from16 v12, p4

    move-wide v15, v7

    move-wide/from16 v17, p1

    invoke-interface/range {v12 .. v18}, Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;->transferred(JJJ)V

    move-wide v5, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-wide v5, v13

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    return-void

    :goto_2
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    :goto_4
    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Z)V

    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Z)V
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeToFile - start Write with stream : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating folder : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    const-string p0, "ORSMetaResponse.fromBinaryFile(): Can not create directory. "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/IOException;

    const-string p1, "There is an error on writeToFile with inputStream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2, v0, p4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V

    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V

    return-void
.end method
