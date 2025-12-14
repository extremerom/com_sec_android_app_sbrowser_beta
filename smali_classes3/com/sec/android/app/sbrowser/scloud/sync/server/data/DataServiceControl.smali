.class public Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;
    }
.end annotation


# instance fields
.field private mAuthData:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

.field private mCtid:Ljava/lang/String;

.field private mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Landroid/content/ContentValues;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->updateLastSyncTime(Landroid/content/ContentValues;J)V

    return-void
.end method

.method private readRecords(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mAuthData:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    new-instance v8, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceManager;->readRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    return-void
.end method

.method private updateLastSyncTime(Landroid/content/ContentValues;J)V
    .locals 2

    const-string p0, "next_synctime"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public deleteItem(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "deleteItem - "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "DataServiceControl"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;-><init>([Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mAuthData:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iget-object v3, p4, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mCid:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableName:Ljava/lang/String;

    iget-object p2, p4, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableVersion:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;

    invoke-direct {v7, p0, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Ljava/util/List;)V

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceManager;->deleteRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object p2

    sget-object p3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NOT_FOUND_IN_SERVER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne p2, p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string p3, "]("

    invoke-static {p2, p1, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") : Already deleted folder."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    throw p1

    :goto_1
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_PARSE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public downloadItem(Ljava/util/List;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZII)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/lang/String;",
            "ZII)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadItem - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "DataServiceControl"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;

    const-string v2, ":"

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;-><init>([Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    const/16 v2, 0x1f4

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v10, :cond_2

    if-le v2, v10, :cond_0

    move v13, v3

    move v12, v10

    goto :goto_1

    :cond_0
    move v12, v2

    move v13, v3

    :goto_1
    if-ge v13, v12, :cond_1

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadItem list : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mCid:Ljava/lang/String;

    iget-object v6, v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableName:Ljava/lang/String;

    iget-object v2, v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->readRecords(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit16 v2, v12, 0x1f4

    move v3, v13

    goto :goto_0

    :cond_2
    return v4
.end method

.method public getKeys(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Landroid/content/ContentValues;Z)Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Landroid/content/ContentValues;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v8, "DataServiceControl"

    const-string v0, "getKeys - "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;

    const-string v1, ":"

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;-><init>([Ljava/lang/String;)V

    iget-object v9, v7, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mAuthData:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v10, v7, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    iget-object v11, v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mCid:Ljava/lang/String;

    iget-object v12, v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableName:Ljava/lang/String;

    iget-object v1, v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    new-instance v20, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;Ljava/util/HashMap;)V

    const/16 v17, 0x1f4

    const/16 v18, 0x1

    move-wide/from16 v14, p2

    move-object/from16 v16, p1

    move/from16 v19, p7

    invoke-static/range {v9 .. v20}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceManager;->readChangedRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IZZLcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_NOT_FOUND_IN_SERVER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string v2, "]("

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : First sync on this account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    throw v0

    :goto_1
    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_PARSE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mAuthData:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    return-void
.end method

.method public uploadItem(Ljava/util/List;Landroid/os/ParcelFileDescriptor;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    const-string v0, "]("

    invoke-static {p3, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->x(Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mCtid:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") : upload item start "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DataServiceControl"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    move-object v10, p2

    move v11, v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mAuthData:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->mModel:Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$3;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$4;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)V

    const/4 v7, 0x1

    move-object v3, p2

    move-object v4, v10

    move v5, v11

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceManager;->updateRecords(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, ":"

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    goto :goto_0

    :cond_2
    const-string v2, "tableName:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v10, v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "tableVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    :cond_4
    const-string v2, "--1QAZXSW2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v0

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :goto_1
    :try_start_5
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    :try_start_7
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_PARSE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_LOCAL_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
.end method
