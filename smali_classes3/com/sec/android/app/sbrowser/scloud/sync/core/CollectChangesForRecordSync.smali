.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/CollectChangesForRecordSync;
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

.method private getKeys(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;Ljava/util/List;Ljava/util/HashMap;JLandroid/content/ContentValues;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;J",
            "Landroid/content/ContentValues;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move-object v4, v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getDataServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    move-result-object v3

    move-object v0, p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-wide v5, p4

    move-object v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;->getKeys(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : get server keys - count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncTask-CollectChangesForRecordSync"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 21

    move-object/from16 v9, p1

    const-string v10, "]("

    const-string v11, "["

    const-string v12, "SyncTask-CollectChangesForRecordSync"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getLastSyncTime()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-wide v5, 0xe8d4a51000L

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    move-wide/from16 v17, v5

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v0

    :goto_0
    :try_start_0
    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->isColdStartable(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object v4, v8

    move-wide/from16 v5, v17

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move v8, v0

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/CollectChangesForRecordSync;->getKeys(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;Ljava/util/List;Ljava/util/HashMap;JLandroid/content/ContentValues;Z)V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    move v7, v0

    const-wide v16, 0xe8d4a51000L

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TOO_OLD_TIMESTAMP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v1, v2, :cond_2

    const-string v0, "]: Too Old Timestamp! get All server item"

    invoke-static {v11, v14, v0, v12}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide v7, 0xe8d4a51000L

    invoke-virtual {v9, v7, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setLastSyncTime(J)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move-wide/from16 v5, v17

    move-wide/from16 v16, v7

    move-object/from16 v7, v19

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/CollectChangesForRecordSync;->getKeys(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;Ljava/util/List;Ljava/util/HashMap;JLandroid/content/ContentValues;Z)V

    move v7, v0

    :goto_2
    const-string v0, "next_synctime"

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_1
    move-wide/from16 v5, v16

    :goto_3
    invoke-virtual {v9, v5, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setNextLastSyncTime(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v0

    move-object/from16 v4, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addServerChanges(Ljava/util/HashMap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ") : get server keys end!! serverKeys : "

    invoke-static {v0, v14, v10, v15, v1}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getServerChangesSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v0

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getRecordOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "com.osp.app.signin"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getAccountName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v13

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;->ready(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addLocalKeys(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : get local keys end!! cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getLocalKeysSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, ") : "

    invoke-static {v11, v14, v10, v15, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
