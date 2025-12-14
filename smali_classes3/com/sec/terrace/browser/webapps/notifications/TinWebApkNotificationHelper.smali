.class public Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;
    }
.end annotation


# static fields
.field static final ACTION_CANCEL:Ljava/lang/String; = "com.sec.android.webapp.notifications.DOWNLOAD_CANCELLED"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DISMISS:Ljava/lang/String; = "com.sec.android.webapp.notifications.DISMISS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PLATFORM_ID:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final WEBAPK_INSTALL_NOTIFICATION_TAG_PREFIX:Ljava/lang/String; = "webapk_install_notification_tag_prefix."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->sSdkVersion:I

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->cancelNotification(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static cancelNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->hasNotificationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "webapk_install_notification_tag_prefix."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private static createLaunchPendingIntent(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getStartUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.sec.terrace.browser.webapk_force_navigation"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0xc000000

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static dispatchNotificationEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "manifest_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchNotificationEvent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinWebApkNotiHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.sec.android.webapp.notifications.DISMISS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.webapp.notifications.DOWNLOAD_CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->cancelNotification(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->getInstance()Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->cancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->cancelNotification(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 2

    const-string v0, "Z_SBROWSER_OTHER_NOTIFICATION_CHANNEL"

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderFactory;->createWebApkNotificationBuilder(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    sget p2, Lcom/sec/terrace/R$drawable;->stat_notify_internet_new:I

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setSmallIcon(I)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setWhen(J)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setShowWhen(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    sget p2, Lcom/sec/terrace/R$color;->webnoti_notification_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setColor(I)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static getHumanReadablePercentage(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkVersion()I
    .locals 1

    sget v0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->sSdkVersion:I

    return v0
.end method

.method public static hasNotificationPermission(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setSdkVersionForTesting(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->sSdkVersion:I

    return-void
.end method

.method public static showDownloadFailedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_failed_to_download:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setAutoCancel(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method

.method public static showDownloadInProgressNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.android.webapp.notifications.DOWNLOAD_CANCELLED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationService$Receiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "manifest_url"

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Z_SBROWSER_OTHER_NOTIFICATION_CHANNEL"

    invoke-static {v3}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderFactory;->createWebApkNotificationBuilder(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getProgressPercentage()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setProgress(IIZ)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getProgressPercentage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getHumanReadablePercentage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/sec/terrace/R$drawable;->webapk_download_notification_animation:I

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setSmallIcon(I)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setWhen(J)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setShowWhen(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    sget v2, Lcom/sec/terrace/R$string;->webapk_notification_cancel_button:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1020027

    invoke-virtual {p1, v3, v2, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method

.method public static showDownloadInterruptedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_unable_to_download:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setAutoCancel(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method

.method public static showInstallFailedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.webapp.notifications.DISMISS"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationService$Receiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "manifest_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_failed_to_install:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setAutoCancel(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_dismiss:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1020019

    invoke-virtual {p1, v2, v1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method

.method public static showInstallInProgressNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_download_preference_installing:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method

.method public static showInstalledNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 5

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget v3, Lcom/sec/terrace/R$string;->webapk_notification_app_installed:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->createLaunchPendingIntent(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setAutoCancel(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->hasNotificationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string v0, "webapk_install_notification_tag_prefix."

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public static showUpdatedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V
    .locals 5

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget v3, Lcom/sec/terrace/R$string;->webapk_notification_app_updated:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getBaseNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->createLaunchPendingIntent(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;->setAutoCancel(Z)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showNotification(Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;)V

    return-void
.end method
