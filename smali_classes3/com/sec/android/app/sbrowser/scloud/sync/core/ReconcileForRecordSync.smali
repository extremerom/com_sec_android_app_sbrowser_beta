.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/ReconcileForRecordSync;
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
    .locals 9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getModel()Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getCtid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getLocalKeysSize()I

    move-result v2

    const-string v3, "]("

    const-string v4, "["

    const-string v5, "SyncTask-ReconcileForRecordSync"

    if-ge v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getLocalKey(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getServerChange(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isNew()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteLocalList(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ") : duplicated sync_key on new local item : "

    invoke-static {v4, p0, v3, v0, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->updateSyncResultAuthExceptions()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addUploadList(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->removeServerChange(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-ltz v3, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->setIsDeleted(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteLocalList(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isNew()Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->setIsNew(Z)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getLocalRecordId()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->setLocalRecordId(J)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDownloadList(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteServerList(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteServerList(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteLocalList(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addUploadList(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isNew()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteServerList(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDeleteLocalList(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addUploadList(Ljava/lang/Object;)V

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getServerItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, ") : Already Deleted from server and local - ServerKey : "

    invoke-static {v4, p0, v3, v0, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->addDownloadList(Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    const-string v1, ") : Compare end - toUploadList : "

    invoke-static {v4, p0, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getUploadListSize()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toDownloadList : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDownloadListSize()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toDeleteLocalList : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteLocalListSize()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toDeleteServerList : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/SyncContext;->getGenericRecordItem()Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->getDeleteServerListSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
