.class public interface abstract Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationUiDelegate"
.end annotation


# virtual methods
.method public abstract deleteNotificationData(Z)V
.end method

.method public abstract launchSelectedUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract selectAllNotificationItem(Z)V
.end method

.method public abstract shareNotificationData(Landroid/os/Bundle;)V
.end method

.method public abstract updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;)V
.end method
