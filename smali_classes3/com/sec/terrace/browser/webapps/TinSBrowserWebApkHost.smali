.class public Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# direct methods
.method public static bridge synthetic a()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->sListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    return-object v0
.end method

.method public static bridge synthetic b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->sListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    return-void
.end method

.method public static declared-synchronized checkSBrowserBacksWebApkAsync(Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
    .locals 3

    const-class v0, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v1, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->sListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost$1;

    invoke-direct {v1}, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost$1;-><init>()V

    sput-object v1, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->sListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->getInstance()Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    move-result-object v1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->checkBrowserBacksWebApkAsync(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
