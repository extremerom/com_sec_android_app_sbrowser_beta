.class interface abstract Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract initializeNotificationPlatformBridge()V
.end method

.method public abstract onNotificationClicked(JLcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract onNotificationClosed(JLcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract setEmbargoPeriodDays(I)V
.end method

.method public abstract setNotificationPermissionIgnoreCount(I)V
.end method

.method public abstract storeCachedWebApkPackageForNotificationId(JLcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;)V
.end method
