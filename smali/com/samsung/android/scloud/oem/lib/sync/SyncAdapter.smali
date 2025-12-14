.class public Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter$Key;
    }
.end annotation


# static fields
.field static final REQUEST_CANCEL:Ljava/lang/String; = "request_cancel"

.field static final REQUEST_SYNC:Ljava/lang/String; = "request_sync"

.field static final SCLOUD_SYNC_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SCloud-SyncAdapter"


# instance fields
.field private isCanceled:Z

.field private isInProgress:Z

.field private mSyncMeta:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.scloud.sync.vendor"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->SCLOUD_SYNC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncAdapter initialized : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SCloud-SyncAdapter"

    invoke-static {v1, p2}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sync_meta"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->mSyncMeta:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    const-string v3, "last_sync_time"

    const-string v4, "sync_result"

    const-string v5, "last_sync_time_"

    const-string v6, ", hasError : "

    const-string v7, ", cancel : "

    const-string v8, "onPerformSync - finished. proc : "

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onPerformSync - started, S-Cloud Sync Library ver : NO_SUPPORT, pkg : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SCloud-SyncAdapter"

    invoke-static {v10, v9}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onPerformSync bundle - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v6

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v3, v6

    goto/16 :goto_7

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    iget-object v12, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->mSyncMeta:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onPerformSync - started. item : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", lastSyncTime : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v14, "name"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "account_name"

    move-object/from16 v15, p1

    move-object/from16 p2, v0

    iget-object v0, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v14, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v11, v3, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "data_version"

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getDataVersion(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v0, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "content_uri"

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getSupportSyncUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contents_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentsId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v12, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->SCLOUD_SYNC_URI:Landroid/net/Uri;

    const-string v13, "request_sync"

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v13, v14, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/SyncResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_1

    :try_start_2
    iget-object v13, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->mSyncMeta:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p4, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    move-object/from16 p4, v3

    :goto_2
    :try_start_3
    iget-boolean v3, v2, Landroid/content/SyncResult;->databaseError:Z

    iget-boolean v13, v0, Landroid/content/SyncResult;->databaseError:Z

    and-int/2addr v3, v13

    iput-boolean v3, v2, Landroid/content/SyncResult;->databaseError:Z

    iget-wide v13, v2, Landroid/content/SyncResult;->delayUntil:J

    move-object/from16 v16, v4

    iget-wide v3, v0, Landroid/content/SyncResult;->delayUntil:J

    add-long/2addr v13, v3

    iput-wide v13, v2, Landroid/content/SyncResult;->delayUntil:J

    iget-boolean v3, v2, Landroid/content/SyncResult;->fullSyncRequested:Z

    iget-boolean v4, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    and-int/2addr v3, v4

    iput-boolean v3, v2, Landroid/content/SyncResult;->fullSyncRequested:Z

    iget-boolean v3, v2, Landroid/content/SyncResult;->moreRecordsToGet:Z

    iget-boolean v4, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    and-int/2addr v3, v4

    iput-boolean v3, v2, Landroid/content/SyncResult;->moreRecordsToGet:Z

    iget-boolean v3, v2, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    iget-boolean v4, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    and-int/2addr v3, v4

    iput-boolean v3, v2, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    iget-object v3, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    :try_start_4
    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v13, v5

    iput-wide v13, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numDeletes:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numDeletes:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numEntries:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numEntries:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numInserts:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numInserts:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numIoExceptions:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numIoExceptions:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numParseExceptions:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numParseExceptions:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    iget-wide v5, v3, Landroid/content/SyncStats;->numUpdates:J

    iget-wide v13, v4, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v5, v13

    iput-wide v5, v3, Landroid/content/SyncStats;->numUpdates:J

    iget-boolean v3, v2, Landroid/content/SyncResult;->tooManyDeletions:Z

    iget-boolean v4, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    and-int/2addr v3, v4

    iput-boolean v3, v2, Landroid/content/SyncResult;->tooManyDeletions:Z

    iget-boolean v3, v2, Landroid/content/SyncResult;->tooManyRetries:Z

    iget-boolean v0, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    and-int/2addr v0, v3

    iput-boolean v0, v2, Landroid/content/SyncResult;->tooManyRetries:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformSync - finished. item : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nextLastSyncTime : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sync result has error. skip other sync item."

    invoke-static {v10, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v3, v18

    goto/16 :goto_9

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v3, v18

    goto :goto_7

    :cond_2
    iget-boolean v0, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v0, :cond_3

    const-string v0, "sync canceled. skip other sync item."

    invoke-static {v10, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v3, p4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_4

    :cond_4
    move-object/from16 v18, v6

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    iget-boolean v0, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v0, :cond_5

    :goto_6
    iput-boolean v2, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    goto :goto_8

    :goto_7
    :try_start_5
    const-string v4, "error on sync.. "

    invoke-static {v0, v10, v4}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v4, v11

    iput-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    iget-boolean v0, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    :goto_8
    return-void

    :catchall_3
    move-exception v0

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    iget-boolean v3, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v3, :cond_6

    iput-boolean v2, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    :cond_6
    throw v0
.end method

.method public onSyncCanceled()V
    .locals 9

    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSyncCanceled - started. proc : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SCloud-SyncAdapter"

    invoke-static {v2, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSyncCanceled - started. item : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getSupportSyncUri()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content_uri"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->SCLOUD_SYNC_URI:Landroid/net/Uri;

    const-string v7, "request_cancel"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSyncCanceled - finished. item : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onSyncCanceled - finished. proc : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
