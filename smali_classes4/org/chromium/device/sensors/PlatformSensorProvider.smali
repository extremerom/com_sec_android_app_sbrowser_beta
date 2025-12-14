.class Lorg/chromium/device/sensors/PlatformSensorProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/device/sensors/PlatformSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorsThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static create()Lorg/chromium/device/sensors/PlatformSensorProvider;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/device/sensors/PlatformSensorProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public final getSensorManagerNonNull()Landroid/hardware/SensorManager;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object p0

    return-object p0
.end method

.method public hasSensorType(I)Z
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v4, 0x3

    const/16 v5, 0x9

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    if-eq p1, v5, :cond_1

    return v0

    :cond_1
    const/16 v1, 0xf

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_0

    :cond_6
    const/16 v1, 0xa

    goto :goto_0

    :cond_7
    move v1, v2

    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public sensorStarted(Lorg/chromium/device/sensors/PlatformSensor;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->startSensorThread()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sensorStopped(Lorg/chromium/device/sensors/PlatformSensor;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mActiveSensors:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->stopSensorThread()V

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

.method public setSensorManagerToNullForTesting()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public startSensorThread()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorsThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorsHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorsThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public stopSensorThread()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorsThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mSensorsThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
