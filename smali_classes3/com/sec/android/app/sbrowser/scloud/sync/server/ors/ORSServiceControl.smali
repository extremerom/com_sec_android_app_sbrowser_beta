.class public Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;


# instance fields
.field private mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

.field private mContext:Landroid/content/Context;

.field private mCtid:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

.field private mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

.field private mRevisionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    return-object p0
.end method

.method private deleteItem(Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;)Z
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    const-string v13, ") : Already deleted item : "

    const-string v14, "delete from server complete !! key : "

    const-string v15, "]("

    const-string v11, "["

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v10, v10}, [I

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v9, 0x1

    new-array v8, v9, [I

    aput v9, v8, v10

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;

    invoke-direct {v5, v1, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;[Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->transactionStart(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v16, v0, v10

    const-string v6, "ORSServiceControl"

    if-nez v16, :cond_1

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Should find folder revision to delete safty!!! key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    aget-object v4, v7, v10

    aget v5, v8, v10

    add-int/lit8 v0, v5, 0x1

    aput v0, v8, v10

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v18, v11

    :try_start_1
    new-instance v11, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$15;

    invoke-direct {v11, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$15;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v19, v13

    move-object v13, v6

    move-object v6, v0

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    move-object/from16 v21, v8

    move-object/from16 v8, p2

    move/from16 v22, v9

    move/from16 v9, v16

    const/16 v17, 0x0

    move-object/from16 v23, v14

    move-object/from16 v14, v18

    :try_start_2
    invoke-static/range {v2 .. v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->updateTag(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v10, v17

    :goto_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getDataVersion()I

    move-result v0

    if-gt v10, v0, :cond_4

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : deleteItem start for version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    aget-object v26, v20, v17

    aget v27, v21, v17

    add-int/lit8 v3, v27, 0x1

    aput v3, v21, v17

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v3, v10, v12}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v29

    if-nez v10, :cond_2

    move/from16 v30, v16

    goto :goto_1

    :cond_2
    move/from16 v30, v17

    :goto_1
    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$16;

    invoke-direct {v5, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$16;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v28, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    invoke-static/range {v24 .. v32}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->deleteFolder(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V
    :try_end_3
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_RESOURCE_NOT_EXISTS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v2, v3, :cond_3

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : Already deleted folder. key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    aget v0, v21, v17

    add-int/lit8 v0, v0, -0x1

    aput v0, v21, v17

    :goto_2
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : deleteItem end for version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    throw v0

    :cond_4
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : deleteItem end for all version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    aget-object v5, v20, v17

    aget v0, v21, v17

    add-int/lit8 v6, v0, -0x1

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$17;

    invoke-direct {v9, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$17;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->transactionEnd(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    :try_end_4
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_4 .. :try_end_4} :catch_1

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return v22

    :catch_1
    move-exception v0

    move-object/from16 v2, v23

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_RESOURCE_NOT_EXISTS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v3, v4, :cond_5

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v4, v3, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return v22

    :cond_5
    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v2, v23

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v22, v9

    move-object v4, v13

    move-object v2, v14

    move-object/from16 v14, v18

    move-object v13, v6

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v22, v9

    move-object v4, v13

    move-object v2, v14

    move-object v13, v6

    move-object v14, v11

    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_RESOURCE_NOT_EXISTS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v3, v5, :cond_6

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v5, v3, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return v22

    :cond_6
    throw v0
.end method

.method private deleteTmpFiles(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Delete temp File : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ORSServiceControl"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    return-object p0
.end method

.method private list(ZILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[J>;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v8, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v9

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v4

    move v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v10, v4

    :goto_0
    const-string v11, ""

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;

    move-object/from16 v12, p4

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/Map;)V

    const/16 v12, 0x7d0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v0

    invoke-static/range {v5 .. v16}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->listDirectory(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;ILjava/lang/String;IJZLcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_1
    if-nez p1, :cond_1

    if-lez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v2

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_RESOURCE_NOT_EXISTS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v2, v5, :cond_2

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string v6, "]("

    invoke-static {v5, v2, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : No server item, it\'s new : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceControl"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    throw v0
.end method

.method private requestRecoverItem(Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestRecoverItem - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceControl"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->deleteItem(Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public deleteItem(Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->deleteItem(Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public downloadItem(Ljava/util/List;ZII)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;ZII)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v0}, [I

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v13, v0

    :goto_0
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getDataVersion()I

    move-result v3

    const-string v14, "]("

    const-string v15, "["

    const-string v12, "ORSServiceControl"

    if-gt v13, v3, :cond_c

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v5, v4, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") : downloadItem start for version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v12, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/16 v16, 0x1

    aput v0, v3, v16

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v0, v13, v2, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->list(ZILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v13

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v13, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->getAttachmentFileInfo(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILjava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_7

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->hasFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->getTimeStampOf(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    aget-wide v17, v8, v0

    cmp-long v6, v6, v17

    if-eqz v6, :cond_3

    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->howManyFiles()I

    move-result v4

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_8

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->getFileNameAt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    aget-wide v6, v6, v16

    long-to-int v7, v6

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)V

    move-object/from16 v18, v6

    move v6, v13

    move/from16 v19, v7

    move-object v7, v2

    move-object/from16 v20, v9

    move/from16 v9, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object v11, v0

    invoke-static/range {v3 .. v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->downloadFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/FileResponseHandler;)V

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v20, v9

    move-object/from16 v19, v10

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downsync attachment file download finished - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , cnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v12, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string v8, "content.sync"

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v9, v0, v16

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v11, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$13;

    invoke-direct {v11, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$13;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)V

    move v6, v13

    move-object v7, v2

    invoke-static/range {v3 .. v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->downloadFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/FileResponseHandler;)V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downsync content data file download finished - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v12, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v5, v4, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v13

    move-object v7, v2

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v11, p3

    move v0, v13

    move-object v13, v12

    move/from16 v12, p4

    :try_start_2
    invoke-interface/range {v3 .. v12}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->updateLocal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/List;Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->setLocalId(Ljava/lang/String;)V

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_6
    move-object v3, v0

    goto :goto_9

    :cond_a
    :goto_7
    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set localId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", thisTimeLocalId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v13, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->deleteTmpFiles(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v5, v4, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") : downloadItem end for version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v13, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v13, v0, 0x1

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v13, v12

    goto :goto_6

    :goto_9
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NEED_RECOVER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v0, v4, :cond_b

    :try_start_3
    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->requestRecoverItem(Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v0, "requestRecoverItem err"

    invoke-static {v13, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_a
    throw v3

    :catch_3
    move-exception v0

    move-object v13, v12

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download contentFile error - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    invoke-interface {v5, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content.sync"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v13, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v13, v12

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v4, v3, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") : downloadItem end for all version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->SUCCESS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->complete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)Z

    move-result v0

    return v0
.end method

.method public getKeys(Ljava/lang/String;JLjava/util/HashMap;Z)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v1, p0

    const-string v0, "/"

    :try_start_0
    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$2;

    move-object/from16 v0, p4

    invoke-direct {v14, p0, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$2;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;[Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x0

    const/16 v10, 0x7d0

    move-object/from16 v9, p1

    move-wide/from16 v11, p2

    move/from16 v13, p5

    invoke-static/range {v3 .. v14}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->listDirectory(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;ILjava/lang/String;IJZLcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    const/4 v0, 0x0

    aget-object v0, v2, v0
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_RESOURCE_NOT_EXISTS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string v4, "]("

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : First sync on this account"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceControl"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    throw v0
.end method

.method public getServerTimestamp()J
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkServerTimestamp - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceControl"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v6, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$1;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;[J)V

    invoke-static {v1, v2, v4, v5, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->getTimestamp(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    aget-wide v0, v0, v3

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    return-void
.end method

.method public uploadItem(Ljava/util/List;Z)Z
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v3}, [I

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$4;

    invoke-direct {v11, v1, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$4;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;[Ljava/lang/String;)V

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->transactionStart(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    move v15, v3

    :goto_0
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getDataVersion()I

    move-result v7

    const-string v14, "]("

    const-string v13, "["

    const-string v12, "ORSServiceControl"

    if-gt v15, v7, :cond_f

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v9, v8, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") : upload item start for version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v12, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput v3, v7, v0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->isNew()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {v1, v0, v15, v6, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->list(ZILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/Map;)Z

    goto :goto_1

    :cond_1
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v9, v8, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") : New item from local. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v12, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v7

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v15, v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->getAttachmentFileInfo(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILjava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;

    move-result-object v10

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->howManyFiles()I

    move-result v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    move/from16 p1, v3

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->getFileNameAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const/16 v17, 0x1

    aget-wide v4, v16, v17

    long-to-int v4, v4

    goto :goto_3

    :cond_2
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const/16 v17, 0x1

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->getTimeStampAt(I)J

    move-result-wide v18

    int-to-long v4, v4

    move-object/from16 v22, v2

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/16 v16, 0x0

    aput-wide v18, v2, v16

    aput-wide v4, v2, v17

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->getTimeStampOf(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v17, v2, v16

    cmp-long v2, v4, v17

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v2, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_6
    add-int/2addr v0, v2

    move/from16 v3, p1

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v2, v22

    goto :goto_2

    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->hasFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : There is no attachement file in local. delete all files on server. cnt :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : Attachment files - toUpload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", toDelete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-object v4, v7

    move-object v7, v0

    move-object v0, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v3

    move-object v3, v10

    move v10, v15

    move-object v5, v11

    move-object v11, v6

    move-object/from16 p1, v5

    move-object v5, v12

    move-object v12, v3

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;->getLocalChange(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v12, ") : Uploading is failed. Out of storage.. "

    if-eqz v7, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uploadFile attachment : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    :try_start_0
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    const/4 v9, 0x0

    aget-object v10, v21, v9

    aget v16, v22, v9

    const/16 v17, 0x1

    add-int/lit8 v18, v16, 0x1

    aput v18, v22, v9

    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-object/from16 v17, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    :try_start_1
    invoke-virtual {v3, v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;->getTimeStampOf(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J
    :try_end_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    const/4 v12, 0x1

    :try_start_2
    aget-wide v13, v9, v12

    long-to-int v14, v13

    iget-object v13, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v12, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$5;

    invoke-direct {v12, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$5;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;

    invoke-direct {v9, v1, v11, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v26, v9

    move-object v9, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v27, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v12

    move v12, v15

    move-object/from16 v28, v3

    move-object/from16 v17, v13

    move-object/from16 v3, v18

    move-object v13, v6

    move-object/from16 v29, v4

    move/from16 v18, v14

    move-object/from16 v4, v24

    move-object/from16 v14, v16

    move/from16 v24, v15

    move-object/from16 v15, v20

    move/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v26

    :try_start_3
    invoke-static/range {v7 .. v19}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->uploadFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    :try_end_3
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v4, v24

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v4, v14

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    :goto_9
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_STORAGE_FULL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v7, v8, :cond_9

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v8, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v5, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    throw v0

    :cond_a
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object v3, v13

    move-object v4, v14

    move/from16 v24, v15

    move-object/from16 v25, v20

    :goto_a
    move-object v13, v3

    move-object v14, v4

    move/from16 v15, v24

    move-object/from16 v20, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    goto/16 :goto_8

    :cond_b
    move-object/from16 v29, v4

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move/from16 v24, v15

    move-object/from16 v25, v20

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uploadFile attachment file finished - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", cnt : "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    const/4 v9, 0x0

    aget-object v10, v21, v9

    aget v11, v22, v9

    const/4 v12, 0x1

    add-int/lit8 v13, v11, 0x1

    aput v13, v22, v9

    iget-object v13, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-object/from16 v9, p1

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    move-object/from16 v23, v2

    move-object/from16 v20, v3

    aget-wide v2, v16, v12

    long-to-int v2, v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v12, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$7;

    invoke-direct {v12, v1, v9, v14}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$7;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Ljava/util/Map;Ljava/lang/String;)V

    move-object/from16 v18, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v13

    move-object/from16 v17, v12

    move/from16 v12, v24

    move-object v13, v6

    move-object/from16 p1, v0

    move-object v0, v15

    move v15, v2

    move-object/from16 v16, v3

    invoke-static/range {v7 .. v17}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->deleteFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V

    move-object v15, v0

    move-object/from16 v3, v20

    move-object/from16 v2, v23

    move-object/from16 v0, p1

    move-object/from16 p1, v18

    goto :goto_b

    :cond_c
    move-object/from16 v23, v2

    move-object/from16 v20, v3

    move-object v0, v15

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "deleteFile attachment file finished - "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    invoke-interface {v3, v7, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "content.sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    const/4 v0, 0x0

    aget-object v9, v21, v0

    aget v10, v22, v0

    const/4 v2, 0x1

    add-int/lit8 v3, v10, 0x1

    aput v3, v22, v0

    iget-object v11, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string v14, "content.sync"

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x1

    aget v16, v0, v2

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$8;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$8;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$9;

    invoke-direct {v3, v1, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$9;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)V

    const/4 v15, 0x0

    move/from16 v12, v24

    move-object v13, v6

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-static/range {v7 .. v19}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->uploadFile(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    :try_end_4
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v7, v20

    goto :goto_c

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_STORAGE_FULL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v2, v3, :cond_d

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v7, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    throw v0

    :cond_e
    move-object/from16 v7, v20

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    const-string v2, "content file is not exists "

    invoke-interface {v0, v5, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadFile content data file finished - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->deleteTmpFiles(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : upload item end for version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/lit8 v15, v3, 0x1

    move-object/from16 v5, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v25

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v22, v2

    move-object/from16 v25, v4

    move-object/from16 v21, v5

    move-object v5, v12

    move-object v7, v13

    move-object v4, v14

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mListener:Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : upload item end for all versions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    const/4 v0, 0x0

    aget-object v9, v21, v0

    aget v10, v22, v0

    const/4 v2, 0x1

    add-int/lit8 v3, v10, 0x1

    aput v3, v22, v0

    iget-object v11, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mRevisionMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v14, v0, v2

    iget-object v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$10;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$10;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V

    move-object v12, v6

    move-object/from16 v16, v0

    invoke-static/range {v7 .. v16}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->updateTag(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mAuth:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    const/4 v3, 0x0

    aget-object v25, v21, v3

    aget v3, v22, v3

    const/4 v4, 0x1

    add-int/lit8 v26, v3, -0x1

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mCtid:Ljava/lang/String;

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getCid()Ljava/lang/String;

    move-result-object v28

    new-instance v4, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$11;

    invoke-direct {v4, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$11;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)V

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    invoke-static/range {v23 .. v29}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceManager;->transactionEnd(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    const/4 v0, 0x1

    return v0
.end method
