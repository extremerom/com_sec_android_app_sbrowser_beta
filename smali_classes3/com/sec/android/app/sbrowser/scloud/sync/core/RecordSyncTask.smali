.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/RecordSyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static performSync(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)J
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getTables()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getLastSyncTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getOption()Ljava/lang/String;

    move-result-object v1

    const-string v8, "upload"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v4, :cond_a

    const-string v4, "["

    const-string v8, "]("

    const-string v9, ") : PERFORM SYNC !!, LastSyncTime : "

    invoke-static {v4, v5, v8, v2, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RecordSyncTask"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->initRecordSync()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/CollectChangesForRecordSync;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/CollectChangesForRecordSync;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/CollectChangesForRecordSync;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/ReconcileForRecordSync;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/ReconcileForRecordSync;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/ReconcileForRecordSync;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/DeleteToServerForRecordSync;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/DeleteToServerForRecordSync;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/DeleteToServerForRecordSync;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/UploadToServerForRecordSync;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/UploadToServerForRecordSync;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/UploadToServerForRecordSync;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/DownloadFromServerForRecordSync;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/DownloadFromServerForRecordSync;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/DownloadFromServerForRecordSync;->execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getResultCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getResult()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getSyncResult()Landroid/content/SyncResult;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v2, v11, :cond_6

    invoke-virtual {v10}, Landroid/content/SyncResult;->hasError()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v12, Landroid/content/SyncStats;->numAuthExceptions:J

    move-object/from16 v16, v2

    move-object v15, v3

    iget-wide v2, v12, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v13, v2

    iget-wide v2, v12, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v13, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-lez v2, :cond_7

    goto :goto_0

    :cond_5
    move-object v15, v3

    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    move-object v15, v3

    :cond_7
    move-object/from16 v2, v16

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "sync process finished !! syncResult.stats.numAuthExceptions : "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v12, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", syncResult.stats.numIoExceptions : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v12, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", syncResult.stats.numParseExceptions : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v10, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Sync success - lastSyncTime : "

    if-eqz v1, :cond_8

    invoke-static {v6, v7, v3, v4}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-wide v9, v6

    goto :goto_3

    :cond_8
    if-ne v2, v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getNextLastSyncTime()J

    move-result-wide v6

    invoke-static {v6, v7, v3, v4}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sync failed - lastSyncTime : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v9, v8

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v8, 0x0

    move-object v3, v15

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->onFinished(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Object;)V

    return-wide v9

    :cond_a
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0
.end method
