.class public Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static sIsKnoxMode:Ljava/lang/Boolean;

.field public static sIsPWASupported:Ljava/lang/Boolean;

.field static sIsSecureFolderMode:Ljava/lang/Boolean;

.field static sIsTablet:Ljava/lang/Boolean;


# direct methods
.method public static isKnoxMode()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsKnoxMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isPWASupported()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsPWASupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isSecureFolderMode()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsSecureFolderMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isTablet()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsTablet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static declared-synchronized resetCachedSettings()V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsKnoxMode:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsSecureFolderMode:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsTablet:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsPWASupported:Ljava/lang/Boolean;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setKnoxMode(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsKnoxMode:Ljava/lang/Boolean;

    return-void
.end method

.method public static setPWASupported(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsPWASupported:Ljava/lang/Boolean;

    return-void
.end method

.method public static setSecureFolderMode(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsSecureFolderMode:Ljava/lang/Boolean;

    return-void
.end method

.method public static setTabletDevice(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->sIsTablet:Ljava/lang/Boolean;

    return-void
.end method
