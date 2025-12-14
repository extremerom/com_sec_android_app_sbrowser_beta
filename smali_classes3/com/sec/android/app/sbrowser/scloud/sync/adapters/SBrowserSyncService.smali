.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p0, "SBrowserSyncService onBind called..."

    const-string p1, "SBrowserSyncService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInternetAccountEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SBrowserSyncService onBind getSyncAdapterBinder"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncService;->sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SBrowserSyncService onBind null"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncService;->sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncService;->sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
