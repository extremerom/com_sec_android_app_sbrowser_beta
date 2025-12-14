.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter$Key;,
        Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter$Method;
    }
.end annotation


# static fields
.field private static sQuickAccessKey:Ljava/lang/String; = null

.field private static sQuickAccessSyncClientProviderAuthority:Ljava/lang/String; = "content://com.sec.android.app.sbrowser.beta.scloud.quickaccess.sync2"

.field private static sTable:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SBROWSER_QUICKACCESS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessSyncClientProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessKey:Ljava/lang/String;

    const-string v0, "kmjqYba23r:com.samsung.sbrowser.quickaccess:1"

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sTable:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v9, p5

    const-string v0, "lastSyncTime"

    const-string v10, "last_sync_time"

    const-string v11, ", hasError : "

    const-string v12, "onPerformSync - finished.  cancel : "

    const-string v2, "call !!  REQUEST_SYNC : "

    const-string v3, "onPerformSync - started."

    const-string v13, "ExternalSyncAdapter"

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x1

    const/4 v8, 0x0

    :try_start_0
    iput-boolean v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v16

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->isSyncNetworkAvailable(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v3, :cond_0

    :try_start_1
    const-string v0, "Network is not available"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v14

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    return-void

    :catchall_0
    move-exception v0

    move v14, v8

    move-object v3, v9

    move-object v2, v11

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move v14, v8

    move-object v2, v11

    goto/16 :goto_a

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->isStorageFull()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v3, :cond_1

    :try_start_3
    const-string v0, "Not Enough Storage"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v14

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-nez v7, :cond_2

    :try_start_5
    const-string v0, "failed to get unstable content provider client~!! "

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const-wide/16 v17, 0x0

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v14, v19

    goto :goto_1

    :catchall_1
    move-exception v0

    move v14, v8

    move-object v2, v11

    move-object v11, v7

    goto/16 :goto_9

    :catch_1
    move v14, v8

    move-object/from16 v19, v11

    move-object v11, v7

    goto/16 :goto_4

    :cond_3
    :try_start_8
    const-string v3, "getLastSyncTime returns null from client.."

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v14, v17

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lastSyncTime : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getSyncManager(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v5, p1

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v4, p2

    move-object v9, v6

    move-object/from16 v19, v11

    move-object v11, v7

    move-wide v6, v14

    move v14, v8

    move-object/from16 v8, p5

    :try_start_9
    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->performSync(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLandroid/content/SyncResult;)J

    move-result-wide v2

    cmp-long v4, v2, v17

    if-lez v4, :cond_4

    invoke-virtual {v9, v10, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2, v9}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v2, v19

    goto :goto_9

    :cond_4
    :goto_3
    :try_start_a
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v2, v19

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_a

    :catchall_4
    move-exception v0

    move v14, v8

    move-object/from16 v19, v11

    move-object v11, v7

    goto :goto_2

    :catch_3
    :goto_4
    :try_start_b
    const-string v0, "need to be update the lib for request cancel"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v0, :cond_5

    :try_start_d
    const-string v0, "sync result has error. skip other sync item."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_6

    :cond_5
    :try_start_e
    iget-boolean v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v0, :cond_6

    :try_start_f
    const-string v0, "sync canceled. skip other sync item."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v14, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_6
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v14, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 v2, v19

    :goto_8
    move-object/from16 v3, p5

    goto :goto_c

    :goto_9
    :try_start_10
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_a

    :catchall_7
    move-exception v0

    move v14, v8

    move-object v2, v11

    goto :goto_8

    :goto_a
    :try_start_11
    const-string v3, "error on sync.. "

    invoke-static {v13, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v3, p5

    :try_start_12
    iget-object v0, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    goto :goto_7

    :goto_b
    return-void

    :catchall_8
    move-exception v0

    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v14, v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    throw v0
.end method

.method public onSyncCanceled()V
    .locals 4

    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSyncCanceled - started. - canceled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    const-string v2, "ExternalSyncAdapter"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mIsCanceled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getModel(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/ExternalSyncAdapter;->sQuickAccessKey:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/model/ModelManager;->getSyncManager(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;

    move-result-object p0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncManager;->requestCancel(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "onSyncCanceled - error."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p0, "onSyncCanceled - finished."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
