.class Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mBuilder:Landroid/app/Notification$Builder;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public setAutoCancel(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setColor(I)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setProgress(IIZ)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setShowWhen(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setWhen(J)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    return-object p0
.end method
