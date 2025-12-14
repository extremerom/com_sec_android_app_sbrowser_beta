.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sResult:J

.field private static sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;


# direct methods
.method private static deleteToLocal(Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "delete to local start !!"

    const-string v3, "SyncTask-"

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, p1, v1, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->deleteLocal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "delete to local finished !! cnt : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static deleteToServer(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCloudServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getSyncResult()Landroid/content/SyncResult;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "["

    const-string v9, "]("

    const-string v0, ") : Delete to server start !!"

    invoke-static {v8, v7, v9, v6, v0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "SyncTask-"

    invoke-interface {v1, v10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p2, v7

    const-string v7, ") : Delete to server - item : "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v10, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    add-int/lit8 v14, v0, 0x1

    if-ne v14, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v16, 0x1

    :try_start_0
    invoke-interface {v3, v12, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;->deleteItem(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v0

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v5, v2, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->deleteLocal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v2

    move-object/from16 v18, v3

    :try_start_1
    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v2, v2, v16

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v2

    move-object/from16 v18, v3

    goto :goto_2

    :cond_1
    move-object v7, v2

    move-object/from16 v18, v3

    goto :goto_3

    :cond_2
    move-object v7, v2

    move-object/from16 v18, v3

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v2, v2, v16

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in deleting - ctid : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v3

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_TIMEOUT:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v3

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TIME_DIFFERENCE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v0

    if-ne v2, v0, :cond_3

    const-wide v2, 0xe8d4a51000L

    sput-wide v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long v2, v2, v16

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_3

    :cond_3
    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v2, v2, v16

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    :goto_3
    move-object v2, v7

    move v0, v14

    move-object/from16 v3, v18

    move-object/from16 v7, p2

    goto/16 :goto_0

    :cond_4
    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Delete to server finished !! cnt : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static downLoadFromServer(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCloudServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getSyncResult()Landroid/content/SyncResult;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "["

    const-string v9, "]("

    const-string v0, ") : Downsync start !!"

    invoke-static {v8, v5, v9, v4, v0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "SyncTask-"

    invoke-interface {v1, v10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") : Downsync - item : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v10, v14}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    if-ne v15, v6, :cond_0

    move v0, v14

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v16, 0x1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v14, p1

    :try_start_1
    invoke-interface {v14, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 p2, v5

    const/16 v19, 0x1

    add-int/lit8 v5, v18, 0x1

    :try_start_2
    invoke-interface {v2, v7, v0, v12, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;->downloadItem(Ljava/util/List;ZII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_1

    move v12, v6

    :try_start_3
    iget-wide v5, v0, Landroid/content/SyncStats;->numInserts:J

    add-long v5, v5, v16

    iput-wide v5, v0, Landroid/content/SyncStats;->numInserts:J

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    move v12, v6

    goto :goto_4

    :cond_1
    move v12, v6

    iget-object v0, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v5, v5, v16

    iput-wide v5, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_3
    move-object/from16 p2, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in downloading - ctid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v6

    if-eq v5, v6, :cond_3

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_TIMEOUT:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v6

    if-eq v5, v6, :cond_3

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NEED_RECOVER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v0

    if-eq v5, v0, :cond_2

    iget-object v0, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v5, v5, v16

    iput-wide v5, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    :cond_2
    :goto_5
    move-object/from16 v5, p2

    move v6, v12

    move v0, v15

    goto/16 :goto_0

    :cond_3
    throw v0

    :cond_4
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Downsync finished !! cnt : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getKeys(Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;JLjava/util/HashMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v2, v0

    :cond_0
    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;->getKeys(Ljava/lang/String;JLjava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static makeToDoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getSyncResult()Landroid/content/SyncResult;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v9

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "]("

    const-string v14, "["

    const-string v15, "SyncTask-"

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isNew()Z

    move-result v16

    move-object/from16 p5, v11

    if-eqz v16, :cond_0

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->generateSyncKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->setSyncKey(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : Generate syncKey to new local item : "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v15, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    if-eqz v3, :cond_9

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isNew()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v11, p3

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ") : duplicated sync_key on new local item : "

    invoke-static {v14, v10, v13, v7, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v15, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v3

    sget-object v11, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_DUPLICATED_SYNC_KEY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-interface {v3, v5, v6, v12, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->complete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)Z

    iget-object v3, v8, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_1

    :cond_2
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getTimeStamp()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getTimeStamp()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-ltz v11, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getTimeStamp()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getTimeStamp()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-eqz v11, :cond_5

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isNew()Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->setIsNew(Z)V

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->setLocalId(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v3

    move-object/from16 v11, p3

    if-eqz v3, :cond_c

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object/from16 v11, p3

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    move-object/from16 v11, p3

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isNew()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    move-object v3, v11

    move-object/from16 v11, p5

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v3, ") : Already Deleted from server and local - ServerKey : "

    invoke-static {v14, v10, v13, v7, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v15, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    return-void
.end method

.method public static performSync(Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)J
    .locals 25

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getAuth()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getLastSyncTime()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getSyncResult()Landroid/content/SyncResult;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getOption()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v5, "["

    const-string v4, "]("

    const-string v1, ") : PERFORM SYNC !!, LastSyncTime : "

    invoke-static {v5, v7, v4, v10, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncTask-"

    invoke-interface {v14, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCloudServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;

    move-result-object v1

    invoke-interface {v1, v9, v0, v10, v14}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;->init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)V

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    const-wide/16 v13, 0x0

    sput-wide v13, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;->getServerTimestamp()J

    move-result-wide v18

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-interface {v0, v14, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->isColdStartable(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;)Z

    move-result v0

    invoke-static {v1, v11, v12, v13, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->getKeys(Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;JLjava/util/HashMap;Z)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move/from16 v21, v15

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v14

    move-object/from16 v20, v0

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TOO_OLD_TIMESTAMP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move/from16 v21, v15

    const-string v15, ") : "

    if-ne v14, v0, :cond_7

    const-string v0, "]: Too Old Timestamp! get All server item"

    invoke-static {v5, v7, v0, v2}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v15

    const-wide/16 v14, 0x0

    invoke-virtual {v8, v14, v15}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->setLastSyncTime(J)V

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v1, v11, v12, v13, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->getKeys(Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;JLjava/util/HashMap;Z)V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const-string v1, ") : get server keys end!! serverKeys : "

    invoke-static {v5, v7, v4, v10, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v17

    invoke-interface {v14, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v1

    const-string v15, "com.osp.app.signin"

    move-wide/from16 v23, v11

    move-object v11, v2

    move-object v2, v9

    move-object v12, v4

    move-object v4, v13

    move-object/from16 v17, v9

    move-object v9, v5

    move-object v5, v15

    move-object v15, v7

    move v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->prepareToSync(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    const-string v0, ") : get local keys end!! cnt : "

    invoke-static {v9, v15, v12, v10, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v11, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    move-object v2, v7

    move-object v3, v5

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object v5, v13

    move-object v13, v7

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->makeToDoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    const-string v1, ") : Compare end - toUploadList : "

    invoke-static {v9, v15, v12, v10, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", toDownloadList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", toDeleteLocalList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", toDeleteServerList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v11, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v21, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-gtz v2, :cond_1

    const-string v1, ") : there is no items to sync !!"

    invoke-static {v9, v15, v12, v10, v1}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v11, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->deleteToServer(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    invoke-static {v0, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->uploadToServer(Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    invoke-static {v0, v13, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->downLoadFromServer(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->deleteToLocal(Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    move-object/from16 v2, v16

    if-nez v0, :cond_2

    iget-object v0, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    iget-wide v5, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    goto :goto_1

    :cond_3
    move-object/from16 v2, v16

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sync process finished !! syncResult.stats.numAuthExceptions : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", syncResult.stats.numIoExceptions : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", syncResult.stats.numParseExceptions : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v11, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sync success - lastSyncTime : "

    if-eqz v21, :cond_5

    sput-wide v23, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v11, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v2, v1, :cond_6

    sput-wide v18, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v11, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sync failed - lastSyncTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v11, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, v17

    move-object v3, v15

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->onFinished(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Object;)V

    sget-wide v0, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    return-wide v0

    :catch_1
    move-exception v0

    move-object v11, v2

    move-object v12, v4

    move-object v9, v5

    move-object v15, v7

    move-object v1, v0

    move-object/from16 v2, v22

    invoke-static {v9, v15, v12, v10, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_7
    move-object v11, v2

    move-object v12, v4

    move-object v9, v5

    move-object v2, v15

    move-object v15, v7

    invoke-static {v9, v15, v12, v10, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v20
.end method

.method private static uploadToServer(Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getListener()Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCloudServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getSyncResult()Landroid/content/SyncResult;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "["

    const-string v11, "]("

    const-string v0, ") : Upsync start !!"

    invoke-static {v10, v7, v11, v6, v0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "SyncTask-"

    invoke-interface {v1, v12, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v7

    const-string v7, ") : Upsync - item : "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v12, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    add-int/lit8 v14, v0, 0x1

    if-ne v14, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v17, 0x1

    :try_start_0
    invoke-interface {v3, v9, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;->uploadItem(Ljava/util/List;Z)Z

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v0

    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-interface {v0, v5, v2, v15, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->complete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v19, v8

    :try_start_1
    iget-wide v7, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v7, v7, v17

    iput-wide v7, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v19, v8

    goto :goto_3

    :cond_1
    move/from16 v19, v8

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upsync complete !! "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v12, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception in uploading - ctid : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", item : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v8

    invoke-interface {v7, v5, v2, v15, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->complete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)Z

    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_USER_CANCELED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v8

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_HTTP_TIMEOUT:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v8

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TIME_DIFFERENCE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v8

    if-ne v7, v8, :cond_2

    const-wide v7, 0xe8d4a51000L

    sput-wide v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResult:J

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long v7, v7, v17

    iput-wide v7, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_4

    :cond_2
    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_STORAGE_FULL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v0

    if-ne v7, v0, :cond_3

    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long v2, v2, v17

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    sput-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncTask;->sResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v0, "upsync failed and skip next upsync - server storage full "

    invoke-interface {v1, v12, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    iget-object v0, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long v7, v7, v17

    iput-wide v7, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    :goto_4
    move v0, v14

    move-object/from16 v7, v16

    move/from16 v8, v19

    goto/16 :goto_0

    :cond_4
    throw v0

    :cond_5
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Upsync finished !! cnt : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v12, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
