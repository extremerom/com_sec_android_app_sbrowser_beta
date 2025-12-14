.class Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
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
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PREPARE To Sync : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SCloudClientHelper"

    invoke-static {v0, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sync_key"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v8, "timestamp"

    invoke-virtual {p3, v8}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    const-string v9, "tag"

    invoke-virtual {p3, v9}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v0, "account_name"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "account_type"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "is_cold_start"

    const/4 v10, 0x0

    invoke-virtual {p3, v0, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->a(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->prepareToSync(Landroid/content/Context;[Ljava/lang/String;[J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array v0, p3, [Ljava/lang/String;

    new-array v1, p3, [Ljava/lang/String;

    new-array v2, p3, [Ljava/lang/String;

    new-array v3, p3, [J

    new-array v4, p3, [Z

    :goto_0
    if-ge v10, p3, :cond_0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v10

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getTimestamp()J

    move-result-wide v6

    aput-wide v6, v3, v10

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->isDeleted()Z

    move-result v6

    aput-boolean v6, v4, v10

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "is_success"

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "local_id"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p2, v8, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p0, "deleted"

    invoke-virtual {p2, p0, v4}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method
