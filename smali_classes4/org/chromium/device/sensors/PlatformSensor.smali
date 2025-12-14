.class public Lorg/chromium/device/sensors/PlatformSensor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/sensors/PlatformSensor$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCurrentPollingFrequency:D

.field private final mLock:Ljava/lang/Object;

.field private final mMinDelayUsec:I

.field private mNativePlatformSensorAndroid:J
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

.field private final mReadingCount:I

.field private final mSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;ILorg/chromium/device/sensors/PlatformSensorProvider;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mLock:Ljava/lang/Object;

    iput p2, p0, Lorg/chromium/device/sensors/PlatformSensor;->mReadingCount:I

    iput-object p3, p0, Lorg/chromium/device/sensors/PlatformSensor;->mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

    iput-object p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mSensor:Landroid/hardware/Sensor;

    iput-wide p4, p0, Lorg/chromium/device/sensors/PlatformSensor;->mNativePlatformSensorAndroid:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result p1

    iput p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mMinDelayUsec:I

    return-void
.end method

.method public static create(Lorg/chromium/device/sensors/PlatformSensorProvider;IJ)Lorg/chromium/device/sensors/PlatformSensor;
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    const/4 v4, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/16 v5, 0x9

    if-eq p1, v4, :cond_5

    const/4 v6, 0x4

    if-eq p1, v6, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    if-eq p1, v5, :cond_1

    return-object v1

    :cond_1
    const/16 v2, 0xf

    :goto_0
    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v2, 0xb

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v4

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    const/16 v2, 0xa

    goto :goto_1

    :cond_7
    move v5, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Lorg/chromium/device/sensors/PlatformSensor;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/hardware/Sensor;

    move-object v3, v0

    move-object v6, p0

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/chromium/device/sensors/PlatformSensor;-><init>(Landroid/hardware/Sensor;ILorg/chromium/device/sensors/PlatformSensorProvider;J)V

    return-object v0
.end method

.method private getSamplingPeriod(D)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    const-wide p0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method private unregisterListener()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mCurrentPollingFrequency:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->getSensorManagerNonNull()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method


# virtual methods
.method public checkSensorConfiguration(D)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mMinDelayUsec:I

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/sensors/PlatformSensor;->getSamplingPeriod(D)I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDefaultConfiguration()D
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    return-wide v0
.end method

.method public getMaximumSupportedFrequency()D
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mMinDelayUsec:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensor;->getDefaultConfiguration()D

    move-result-wide v0

    return-wide v0

    :cond_0
    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getReportingMode()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v12, v0, Lorg/chromium/device/sensors/PlatformSensor;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-wide v2, v0, Lorg/chromium/device/sensors/PlatformSensor;->mNativePlatformSensorAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v0, "PlatformSensor"

    const-string v1, "Should not get sensor events after PlatformSensorAndroid is destroyed."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v2

    iget v4, v0, Lorg/chromium/device/sensors/PlatformSensor;->mReadingCount:I

    if-ge v3, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/device/sensors/PlatformSensor;->sensorError()V

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/device/sensors/PlatformSensor;->stopSensor()V

    monitor-exit v12

    return-void

    :cond_1
    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-double v3, v3

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v3, v5

    array-length v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    const/4 v8, 0x3

    if-eq v1, v8, :cond_2

    aget v1, v2, v5

    float-to-double v9, v1

    aget v1, v2, v6

    float-to-double v13, v1

    aget v1, v2, v7

    float-to-double v6, v1

    aget v1, v2, v8

    float-to-double v1, v1

    move-wide v15, v1

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v9

    move-wide v8, v6

    move-wide v6, v13

    move-wide v10, v15

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/device/sensors/PlatformSensor;->updateSensorReading(DDDDD)V

    goto :goto_0

    :cond_2
    aget v1, v2, v5

    float-to-double v8, v1

    aget v1, v2, v6

    float-to-double v10, v1

    aget v1, v2, v7

    float-to-double v13, v1

    const-wide/16 v15, 0x0

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v8

    move-wide v6, v10

    move-wide v8, v13

    move-wide v10, v15

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/device/sensors/PlatformSensor;->updateSensorReading(DDDDD)V

    goto :goto_0

    :cond_3
    aget v1, v2, v5

    float-to-double v7, v1

    aget v1, v2, v6

    float-to-double v9, v1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v13

    move-wide v10, v15

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/device/sensors/PlatformSensor;->updateSensorReading(DDDDD)V

    goto :goto_0

    :cond_4
    aget v1, v2, v5

    float-to-double v5, v1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v13

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/device/sensors/PlatformSensor;->updateSensorReading(DDDDD)V

    :goto_0
    monitor-exit v12

    return-void

    :goto_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sensorDestroyed()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mNativePlatformSensorAndroid:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sensorError()V
    .locals 4
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mNativePlatformSensorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/device/sensors/PlatformSensorJni;->get()Lorg/chromium/device/sensors/PlatformSensor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mNativePlatformSensorAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/device/sensors/PlatformSensor$Natives;->notifyPlatformSensorError(JLorg/chromium/device/sensors/PlatformSensor;)V

    :cond_0
    return-void
.end method

.method public startSensor(D)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mCurrentPollingFrequency:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/device/sensors/PlatformSensor;->unregisterListener()V

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v0, p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->sensorStarted(Lorg/chromium/device/sensors/PlatformSensor;)V

    :try_start_0
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->getSensorManagerNonNull()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/sensors/PlatformSensor;->getSamplingPeriod(D)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/device/sensors/PlatformSensor;->mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v3}, Lorg/chromium/device/sensors/PlatformSensorProvider;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlatformSensor"

    const-string v2, "Failed to register sensor listener."

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensor;->stopSensor()V

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensor;->sensorError()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    iput-wide p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->mCurrentPollingFrequency:D

    :goto_1
    return-void
.end method

.method public stopSensor()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/sensors/PlatformSensor;->unregisterListener()V

    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mProvider:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v0, p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->sensorStopped(Lorg/chromium/device/sensors/PlatformSensor;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->mCurrentPollingFrequency:D

    return-void
.end method

.method public updateSensorReading(DDDDD)V
    .locals 14
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    invoke-static {}, Lorg/chromium/device/sensors/PlatformSensorJni;->get()Lorg/chromium/device/sensors/PlatformSensor$Natives;

    move-result-object v0

    move-object v3, p0

    iget-wide v1, v3, Lorg/chromium/device/sensors/PlatformSensor;->mNativePlatformSensorAndroid:J

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-interface/range {v0 .. v13}, Lorg/chromium/device/sensors/PlatformSensor$Natives;->updatePlatformSensorReading(JLorg/chromium/device/sensors/PlatformSensor;DDDDD)V

    return-void
.end method
