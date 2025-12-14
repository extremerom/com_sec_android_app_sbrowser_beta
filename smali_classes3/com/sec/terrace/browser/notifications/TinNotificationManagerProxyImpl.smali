.class public Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;


# instance fields
.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
