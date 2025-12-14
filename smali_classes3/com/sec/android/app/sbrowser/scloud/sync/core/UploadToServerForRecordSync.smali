.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/UploadToServerForRecordSync;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/common/Strategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/scloud/sync/common/Strategy<",
        "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 10

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "["

    const-string v5, "]("

    const-string v6, ") : Upload to server start !!"

    invoke-static {v4, v0, v5, v1, v6}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SyncTask-UploadToServerForRecordSync"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getUploadListSize()I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getUploadItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getUploadItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteLocalListSize()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteLocalItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getRecordOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;

    move-result-object v8

    invoke-interface {v8, v3, p0, v5, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;->getLocalFilePaths(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v8

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceContract;->getUploadFilePath(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->setUploadPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v8

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceContract;->getDownloadFilePath(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->setDownloadPath(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getUploadPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "sync"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_8

    if-eqz v5, :cond_7

    if-lez v2, :cond_6

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getDataServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v9, v2, :cond_2

    move v7, v9

    :cond_2
    invoke-interface {v8, v0, v5, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;->uploadItem(Ljava/util/List;Landroid/os/ParcelFileDescriptor;Z)Z

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upsync complete !!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in uploading - ctid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v7

    if-eq v1, v7, :cond_5

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NETWORK_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v7

    if-eq v1, v7, :cond_5

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TOO_OLD_TIMESTAMP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v7

    if-ne v1, v7, :cond_3

    const-wide v0, 0xe8d4a51000L

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setResult(J)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultIoExceptions()V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_STORAGE_FULL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v7

    if-ne v1, v7, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setResultCode(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    const-string v0, "upsync failed and skip next upsync - server storage full "

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V

    throw v0

    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getRecordOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getResultCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object p1

    invoke-interface {v0, v3, p0, v6, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;->completeUpload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_7
    :try_start_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_LOCAL_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-eqz v5, :cond_9

    :try_start_6
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :goto_7
    const-string p0, "Upload finished !! cnt : "

    invoke-static {v2, p0, v4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_8
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no upload file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_LOCAL_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_9
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getRecordOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getResultCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object p1

    invoke-interface {v1, v3, p0, v6, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;->completeUpload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0
.end method
