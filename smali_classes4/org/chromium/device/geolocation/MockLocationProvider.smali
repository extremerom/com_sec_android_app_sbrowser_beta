.class public Lorg/chromium/device/geolocation/MockLocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/geolocation/LocationProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRunning:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Lorg/chromium/device/geolocation/MockLocationProvider;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/device/geolocation/MockLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/geolocation/MockLocationProvider;->newLocation()V

    return-void
.end method

.method private newLocation()V
    .locals 2

    new-instance p0, Landroid/location/Location;

    const-string v0, "MockLocationProvider"

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setTime(J)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {p0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->onNewLocationAvailable(Landroid/location/Location;)V

    return-void
.end method

.method private startMockLocationProviderThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MockLocationProviderImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lorg/chromium/device/geolocation/MockLocationProvider$1;

    iget-object v1, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/device/geolocation/MockLocationProvider$1;-><init>(Lorg/chromium/device/geolocation/MockLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 1

    iget-boolean p1, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mIsRunning:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/device/geolocation/MockLocationProvider;->startMockLocationProviderThread()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mIsRunning:Z

    iget-object p1, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mIsRunning:Z

    iget-object v0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/device/geolocation/MockLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
