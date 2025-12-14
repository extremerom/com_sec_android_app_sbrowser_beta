.class public Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegateFactory;,
        Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;
    }
.end annotation


# direct methods
.method public static initialize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegateFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegateFactory;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setDelegateFactory(Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;)V

    return-void
.end method

.method public static onNativeInitializationSuccess()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ignore_before_block_count"

    const/4 v3, 0x4

    const-string v4, "NotificationManager"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setNotificationPermissionIgnoreCount(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "embargo_period_days"

    const/4 v3, 0x7

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->setEmbargoPeriodDays(I)V

    return-void
.end method
