.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/DeleteToServerForRecordSync;
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
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getTables()Ljava/lang/String;

    move-result-object v0

    const-string v3, "["

    const-string v4, "]("

    const-string v5, ") : Delete to server start !!"

    invoke-static {v3, v1, v4, v2, v5}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SyncTask-DeleteToServerForRecordSync"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteServerListSize()I

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-lez v5, :cond_a

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteServerItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    aget-object v11, v0, v10

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getDataServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;

    move-result-object v11

    aget-object v12, v0, v10

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11, v12, v13, v7, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;->deleteItem(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    aget-object v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") : fail to delete server item : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    move-object/from16 p0, v1

    :try_start_1
    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getLocalRecordId()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->removeDeleteLocal(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 p0, v1

    goto :goto_5

    :cond_3
    move-object v15, v0

    move-object/from16 p0, v1

    :goto_3
    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_2

    :cond_4
    move-object/from16 p0, v1

    goto :goto_4

    :cond_5
    move-object/from16 p0, v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move-object/from16 v10, p1

    goto :goto_6

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Exception in deleting -  ctid : "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v10

    if-eq v1, v10, :cond_7

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NETWORK_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v10

    if-eq v1, v10, :cond_7

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TOO_OLD_TIMESTAMP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v10

    if-ne v1, v10, :cond_6

    const-wide v0, 0xe8d4a51000L

    move-object/from16 v10, p1

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setResult(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultIoExceptions()V

    goto :goto_6

    :cond_6
    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V

    throw v0

    :cond_7
    throw v0

    :cond_8
    move-object/from16 v10, p1

    move-object/from16 p0, v1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0

    :cond_a
    move-object/from16 v10, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete to server finished !! cnt : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteServerListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
