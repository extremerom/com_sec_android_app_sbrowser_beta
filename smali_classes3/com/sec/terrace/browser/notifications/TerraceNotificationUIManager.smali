.class public Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;

.field private static sUiManager:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;


# direct methods
.method public static bridge synthetic a()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->sFactory:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;

    return-object v0
.end method

.method public static deleteNotificationFromNativeDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->deleteNotificationFromNativeDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dispatchNotificationEvent(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->dispatchNotificationEvent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static getInstance()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->sUiManager:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->sUiManager:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;

    return-object v0
.end method

.method public static requestNotificationPermission(Landroid/app/Activity;J)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->getInstance()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;->requestNotificationPermission(Landroid/app/Activity;J)V

    return-void
.end method

.method public static runPermissionCallback(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->runPermissionCallback(JZ)V

    return-void
.end method

.method public static setDelegateFactory(Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->sFactory:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;

    return-void
.end method

.method public static setEmbargoPeriodDays(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->setEmbargoPeriodDays(I)V

    return-void
.end method

.method public static setMinDaysToWaitBeforeBlock(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->setMinDaysToWaitBeforeEmbargo(I)V

    return-void
.end method

.method public static setMinUnreadNotificationsBeforeBlock(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->setMinUnreadNotificationsBeforeEmbargo(I)V

    return-void
.end method

.method public static setNotificationPermissionIgnoreCount(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->setNotificationPermissionIgnoreCount(I)V

    return-void
.end method
