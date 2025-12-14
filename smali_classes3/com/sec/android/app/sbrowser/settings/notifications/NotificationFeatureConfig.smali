.class public Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;
.super Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.source "SourceFile"


# instance fields
.field private final mFieldTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NotificationManager"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->mFieldTypeMap:Ljava/util/Map;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "notificationsClearByDays"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "maxnotificationitems"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "notificationsevictioncount"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ignore_before_block_count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "embargo_period_days"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "min_unread_notification_before_block"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "min_days_to_wait_before_block"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getClearByDays(Landroid/content/Context;)I
    .locals 2

    const-string v0, "notificationsClearByDays"

    const/16 v1, 0xe

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEmbargoPeriodDays(Landroid/content/Context;)I
    .locals 2

    const-string v0, "embargo_period_days"

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFieldTypeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public getMaxNotificationItems(Landroid/content/Context;)I
    .locals 2

    const-string v0, "maxnotificationitems"

    const/16 v1, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMinDaysToWaitBeforeBlock(Landroid/content/Context;)I
    .locals 2

    const-string v0, "min_days_to_wait_before_block"

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMinUnreadNotificationsBeforeBlock(Landroid/content/Context;)I
    .locals 2

    const-string v0, "min_unread_notification_before_block"

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNotificationEvictionCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "notificationsevictioncount"

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNotificationPermissionIgnoreBeforeBlockCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "ignore_before_block_count"

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notification_clear_by_days"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getClearByDays(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notification_max_items"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getMaxNotificationItems(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification_evict_count"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getNotificationEvictionCount(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getNotificationPermissionIgnoreBeforeBlockCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setNotificationPermissionIgnoreCount(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getEmbargoPeriodDays(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setEmbargoPeriodDays(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getMinUnreadNotificationsBeforeBlock(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setMinUnreadNotificationsBeforeBlock(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationFeatureConfig;->getMinDaysToWaitBeforeBlock(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setMinDaysToWaitBeforeBlock(I)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
