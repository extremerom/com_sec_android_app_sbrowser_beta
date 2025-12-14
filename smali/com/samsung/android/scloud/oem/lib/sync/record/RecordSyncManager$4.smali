.class Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "READY : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordSyncManager"

    invoke-static {p1, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "server_id"

    invoke-virtual {p4, p0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p3, "account_name"

    invoke-virtual {p4, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "account_type"

    invoke-virtual {p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_cold_start"

    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    check-cast p2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->getLocalRecordList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p3, p2, [J

    new-array p4, p2, [J

    new-array v0, p2, [Z

    new-array v3, p2, [Ljava/lang/String;

    new-array v4, p2, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getLocalRecordId()J

    move-result-wide v7

    aput-wide v7, p3, v5

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTimestamp()J

    move-result-wide v7

    aput-wide v7, p4, v5

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->isDeleted()Z

    move-result v7

    aput-boolean v7, v0, v5

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "local_id"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v1, p0, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "timestamp"

    invoke-virtual {v1, p0, p4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p0, "deleted"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string p0, "table_name"

    invoke-virtual {v1, p0, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    const-string p0, "is_success"

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method
