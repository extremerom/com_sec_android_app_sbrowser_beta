.class public interface abstract Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel(Ljava/lang/String;I)V
.end method

.method public abstract createNotificationChannel(Landroid/app/NotificationChannel;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation
.end method

.method public abstract getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation
.end method

.method public abstract notify(Ljava/lang/String;ILandroid/app/Notification;)V
.end method
