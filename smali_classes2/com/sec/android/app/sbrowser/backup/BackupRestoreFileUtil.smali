.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sMode:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

.field private static sProgressCount:I

.field private static sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field private static sTotalCount:I


# direct methods
.method public static backupUnzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    move v5, v2

    move v6, v5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bookMarkWhiteList.json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, v9}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->pathUnzip(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_0

    rem-int/lit8 v7, v6, 0x32

    if-nez v7, :cond_0

    sget-object v7, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getNextStepProgress()I

    move-result v10

    sget-object v11, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-long v10, v10

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v12

    mul-long/2addr v10, v12

    div-long/2addr v10, v0

    add-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreProgress(I)V

    goto/16 :goto_0

    :cond_5
    :goto_1
    const-string p1, "BackupRestoreFileUtil"

    const-string v0, "backupUnzip Security Exception"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_7
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move v2, v5

    goto :goto_b

    :catch_0
    move-exception p0

    goto :goto_a

    :catchall_2
    move-exception p0

    goto :goto_8

    :goto_4
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    :try_start_9
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return v2
.end method

.method public static backupZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "BackupRestoreFileUtil"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not file or directory"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    sput v3, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sProgressCount:I

    sput v3, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sTotalCount:I

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getTotalFileCount(Ljava/io/File;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sTotalCount:I

    const-string v1, "."

    invoke-static {p1, v1, p2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v6, 0x8

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    invoke-static {v0, p0, v5}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->pathZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "renameTo fail"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)I
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sProgressCount:I

    sput v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sTotalCount:I

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getTotalFileCount(Ljava/io/File;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sTotalCount:I

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_2

    array-length p3, v1

    move v2, v0

    :goto_0
    if-ge v2, p3, :cond_5

    aget-object v3, v1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length p3, v1

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_5

    aget-object v3, v1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_3

    if-eqz v5, :cond_4

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public static copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "copyDatabaseFile "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreFileUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-string v2, "copyDatabaseFile database copy failed!"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->backupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->restoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    if-eqz p0, :cond_5

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "copyDatabaseFile database copy exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3

    :cond_3
    :goto_2
    const-string p0, "copyDatabaseFile make dir failed!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sendProgress()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "Skip to copy file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupRestoreFileUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)I
    .locals 11

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BackupRestoreFileUtil"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Source file "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RobotiumTestLog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "bookMarkWhiteList.json"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error during creation of ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] directory"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v8}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->isStorageFull(Ljava/lang/String;J)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_4

    if-eqz v10, :cond_3

    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    const/4 p0, 0x2

    return p0

    :catch_0
    move-exception p0

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_4
    const-wide/16 v5, 0x0

    move-object v4, v2

    move-object v9, v10

    :try_start_9
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v10, :cond_5

    :try_start_a
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    return v3

    :catchall_3
    move-exception p1

    if-eqz v10, :cond_6

    :try_start_e
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v3

    :try_start_f
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_2
    if-eqz v2, :cond_7

    :try_start_10
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v2

    :try_start_11
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_4
    :try_start_12
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception p0

    :try_start_13
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :goto_6
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    :try_start_15
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_8
    :goto_9
    const-string p0, "Skip copyFile"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static deletePath(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Directory or file does NOT exist: "

    const-string v1, "BackupRestoreFileUtil"

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static getEstimatedCopyTime()J
    .locals 2

    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method public static getEstimatedSerializeTime(I)J
    .locals 4

    add-int/lit8 v0, p0, -0x28

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Estimated Serialize Time(count=%d): %dms"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "BackupRestoreFileUtil"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getEstimatedZipTime()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method private static getTotalFileCount(Ljava/io/File;I)I
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->getTotalFileCount(Ljava/io/File;I)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method

.method public static initDstPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "BackupRestoreFileUtil"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p1, "Directory or file does NOT exist: "

    invoke-static {p1, p0, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->initDstPath(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "RobotiumTestLog"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const-string p1, "initDstPath skipped : "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static isStorageFull(Ljava/lang/String;J)Z
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    cmp-long p0, v3, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "BackupRestoreFileUtil"

    const-string v1, "makeDirectory failed!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static moveDirectory(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "BackupRestoreFileUtil"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "move mkdir error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->moveDirectory(Ljava/io/File;Ljava/io/File;)Z

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v4, v2, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v3

    invoke-static {v0, p1, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "move error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3
.end method

.method private static pathUnzip(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    const/high16 v2, 0x10000

    invoke-direct {p1, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-nez v5, :cond_0

    add-int/2addr v4, v0

    const/16 v6, 0x32

    if-ne v4, v6, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v3

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move v4, v3

    :cond_1
    :try_start_5
    invoke-virtual {p1, v2, v3, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :goto_1
    :try_start_8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return v0
.end method

.method private static pathZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".metadata"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-static {v2, p1, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->pathZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/high16 v3, 0x10000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-virtual {v4, p0, p1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-array p0, v3, [B

    :goto_1
    invoke-virtual {v2, p0, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    invoke-virtual {p2, p0, v1, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sendProgress()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_7
    return-void
.end method

.method private static sendProgress()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sProgressCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sProgressCount:I

    sget v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sTotalCount:I

    if-lez v2, :cond_2

    rem-int/lit8 v1, v1, 0x32

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getNextStepProgress()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sProgressCount:I

    mul-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sTotalCount:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sMode:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupProgress(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setMode(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sMode:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    return-void
.end method

.method public static setProgressStep(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;)V
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sMode:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupProgress(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->sStartStep:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreProgress(I)V

    :goto_0
    return-void
.end method
