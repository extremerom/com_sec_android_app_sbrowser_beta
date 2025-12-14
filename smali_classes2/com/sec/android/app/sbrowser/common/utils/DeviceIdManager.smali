.class public Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager; = null

.field private static sOAID:Ljava/lang/String; = ""


# instance fields
.field private mDeviceIdObserver:Landroid/database/ContentObserver;

.field private mDeviceIdReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInitialized:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mWorkThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->lambda$initialize$0(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "bindService"

    const-string v1, "DeviceIdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.deviceidservice"

    const-string v3, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not supported service"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bindService failed. e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->isDeviceIdEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sOAID:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sOAID:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sInstance:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sInstance:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sInstance:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getOAID()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oaid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sOAID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->sOAID:Ljava/lang/String;

    return-object v0
.end method

.method private isDeviceIdEnabled()Z
    .locals 5

    const-string p0, "DeviceIdManager"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "allow_device_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Device ID setting not found"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device ID allowed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-static {p0, v2, v4}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-ne v1, v3, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method private static isInstalledDeviceIdService(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.samsung.android.deviceidservice"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private synthetic lambda$initialize$0(Landroid/content/Context;)V
    .locals 6

    const-string v0, "DeviceIdManager"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mWorkThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->bindService(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->unbindService(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mWorkThread:Ljava/lang/Thread;

    goto :goto_0

    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interrupted ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mWorkThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->unbindService(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mWorkThread:Ljava/lang/Thread;

    throw v0

    :cond_1
    return-void
.end method

.method private registerContentObserver(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "allow_device_id"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDeviceIdReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$2;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdReceiver:Landroid/content/BroadcastReceiver;

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.deviceidservice.reset.deviceid.notice"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "unbindService"

    const-string v1, "DeviceIdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unbindService failed. e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterContentObserver(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private unregisterDeviceIdReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mDeviceIdReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DeviceIdManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->unregisterDeviceIdReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->unregisterContentObserver(Landroid/content/Context;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DeviceIdManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "OAID is only supported in China Device"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->isInstalledDeviceIdService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "DeviceIdService is not installed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->registerDeviceIdReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->registerContentObserver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->isDeviceIdEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Device id is not allowed on this device"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mWorkThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "bindService is still running"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/a;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/a;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mWorkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mIsInitialized:Z

    return-void
.end method

.method public isIsInitialized()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->mIsInitialized:Z

    return p0
.end method
