.class Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sdp/SdpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataMigrationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mCount:I

.field private final mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIndex:I

.field private final mListener:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mFileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mIndex:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mListener:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    return-void
.end method

.method private loadFileList()V
    .locals 7

    const-string v0, "dir_path"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_INTERNAL_URL:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "_id >= 0 AND is_deleted = 0"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mIndex:I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mCount:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mCount:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mIndex:I

    if-ltz v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string v2, "SdpController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secret reading list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mIndex:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mFileList:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "/data/readinglist"

    const-string v0, "migrationToSdp::doInBackground"

    const-string v3, "SdpController"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/knox/sdp/SdpFileSystem;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "moveFileToSdp error : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v6, v0

    move v0, v5

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "SdpFileSystem exception"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[doInBackground] : /data directory create failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[doInBackground] : READING_LIST_PATH directory create failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "makeDirectory - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_3
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/2addr v5, v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    const-wide/16 v13, 0x0

    move-object/from16 v12, v18

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isSensitive(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->setSensitive(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "failed to set sensitive copied file"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v19, :cond_3

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_8

    :cond_3
    :goto_5
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v8, v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v8, v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v8, v0

    goto :goto_6

    :cond_4
    :try_start_b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_5
    if-eqz v19, :cond_6

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_6
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_f

    :goto_6
    if-eqz v19, :cond_7

    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v9, v0

    :try_start_11
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    throw v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_8
    if-eqz v18, :cond_8

    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v9, v0

    :try_start_13
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_9
    throw v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_a
    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v9, v0

    :try_start_15
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :goto_c
    :try_start_16
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v9, v0

    :try_start_17
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v8
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    const-string v0, "migrationToSdp result : true"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaPassword(Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    const-string p1, "SdpController"

    const-string v0, "migrationToSdp::onPostExecute start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/sdp/SdpDatabase;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->g(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->e()V

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->lock(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->g(Lcom/samsung/android/knox/sdp/SdpDatabase;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSensitive error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPreviousStatus(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setShouldMigrateSdpData(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mListener:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;->onResult(Z)V

    :cond_1
    const-string p0, "migrationToSdp::onPostExecute end"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 6

    const-string v0, "isEngineAlreadyAdded : "

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->loadFileList()V

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140e18

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mCount:I

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string v1, "Start addEngine."

    const-string v3, "SdpController"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.sbrowser.beta"

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->isEngineAlreadyAdded()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->getParam()Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDelegate:Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpEngineDelegate;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "addEngine succeed"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addEngine error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController$DataMigrationTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
