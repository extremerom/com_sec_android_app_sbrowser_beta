.class Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderForO;
.super Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderForO;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_other_channel_name:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p2, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
