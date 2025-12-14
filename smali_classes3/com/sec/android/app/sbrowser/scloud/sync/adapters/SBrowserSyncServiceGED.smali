.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncServiceGED;
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
    .locals 1

    const-string p1, "SBrowserSyncServiceGED"

    const-string v0, "SBrowserSyncServiceGED onBind called..."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInternetAccountEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/utils/CloudControlUtil;->disableInternetSync(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncServiceGED;->sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncServiceGED;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncServiceGED;->sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncServiceGED;->sSyncAdapter:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/SBrowserSyncAdapterProxy;

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
