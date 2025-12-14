.class public Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl$METHOD;,
        Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl$Key;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl;->INSTANCE:Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/ExternalRecordOEMControl;->INSTANCE:Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;

    return-object v0
.end method


# virtual methods
.method public completeDownload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "completeDownload : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExternalRecordOEMControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const-string p0, "no exist download file"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getLocalRecordId()J

    move-result-wide v5

    aput-wide v5, v1, v4

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "completeDownload - serverId : "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "completeDownload - localId : "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "completeDownload - tableName : "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "local_id"

    invoke-virtual {p0, p3, v1}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p3, "server_id"

    invoke-virtual {p0, p3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "download_file_path"

    invoke-virtual {p0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "table_name"

    invoke-virtual {p0, p3, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_0
    const-string p4, "fileWriteDone"

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2, p0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p0, "need to be update the lib for request cancel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-string p0, "is_success"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :goto_3
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    throw p0

    :cond_4
    const-string p0, "failed to get unstable content provider client~!! "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :cond_5
    :goto_4
    const-string p0, "no exist download data"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public completeUpload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "completeUpload : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rcode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExternalRecordOEMControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rcode"

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->value()I

    move-result p4

    invoke-virtual {p0, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [J

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getLocalRecordId()J

    move-result-wide v3

    aput-wide v3, p4, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "local_id"

    invoke-virtual {p0, p3, p4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p3, "table_name"

    invoke-virtual {p0, p3, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "failed to get unstable content provider client~!! "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    const-string p3, "complete"

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p0, "need to be update the lib for request cancel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    throw p0
.end method

.method public getLocalFilePaths(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Ljava/util/List;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getLocalFilePaths : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExternalRecordOEMControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Z

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move v6, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getLocalRecordId()J

    move-result-wide v7

    aput-wide v7, v2, v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v7

    aput-boolean v7, v4, v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v6, "getLocalFilePaths - serverId : "

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v6, "getLocalFilePaths - localId : "

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v6, "getLocalFilePaths - deleted : "

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v6, "getLocalFilePaths - tableName : "

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "local_id"

    invoke-virtual {p0, p3, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p3, "server_id"

    invoke-virtual {p0, p3, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "deleted"

    invoke-virtual {p0, p3, v4}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string p3, "table_name"

    invoke-virtual {p0, p3, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p4, "cid_table_index"

    invoke-virtual {p0, p4, p3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_7

    :try_start_0
    const-string p4, "getLocalFiles"

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2, p0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    :try_start_1
    const-string p0, "need to be update the lib for request cancel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    const-string p0, "is_success"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "upload_file_path"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "download_file_path"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceContract;->createItem()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceContract;->setUploadFilePath(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceContract;->setDownloadFilePath(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p2

    :cond_4
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string p2, "invalid result - downloadPath is null"

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string p2, "invalid result - uploadPath is null"

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0

    :goto_4
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    throw p0

    :cond_7
    const-string p0, "failed to get unstable content provider client~!! "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method

.method public ready(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ready : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalRecordOEMControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "server_id"

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "ready - serverId : "

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    const-string v4, "account_type"

    const-string v5, "com.osp.app.signin"

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "account_name"

    move-object/from16 v5, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_cold_start"

    move/from16 v5, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getOemContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-eqz v5, :cond_9

    :try_start_0
    const-string v6, "ready"

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    :try_start_1
    const-string v0, "need to be update the lib for request cancel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-string v0, "is_success"

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "local_id"

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "deleted"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "table_name"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    array-length v9, v0

    if-ge v3, v9, :cond_2

    new-instance v9, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    aget-wide v11, v0, v3

    aget-object v13, v2, v3

    aget-wide v14, v5, v3

    aget-boolean v16, v6, v3

    aget-object v17, v4, v3

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;-><init>(JLjava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": LocalItem - serverId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", localId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", timeStamp : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", deleted : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", tableName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    return-object v7

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "invalid result - tableNames[] is null"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "invalid result - deleted[] is null"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "invalid result - timeStamp[] is null"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "invalid result - serverId[] is null"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const-string v2, "invalid result - localId[] is null"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TARGET_APPLICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0

    :goto_4
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    throw v0

    :cond_9
    const-string v0, "failed to get unstable content provider client~!! "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_OTHER:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw v0
.end method
