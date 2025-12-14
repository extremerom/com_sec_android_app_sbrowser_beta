.class Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createWebApkNotificationBuilder(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->getSdkVersion()I

    move-result v1

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderForO;

    invoke-direct {v1, v0, p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilderForO;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationBuilder;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
