.class Lorg/chromium/media/CameraAvailabilityObserver;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/CameraAvailabilityObserver$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mNativeCameraAvailabilityObserver:J

.field private final mNativeCameraAvailabilityObserverLock:Ljava/lang/Object;

.field private mObservationThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserver:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CameraAvailabilityObserver_ObservationThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mObservationThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static createCameraAvailabilityObserver(J)Lorg/chromium/media/CameraAvailabilityObserver;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/CameraAvailabilityObserver;

    invoke-direct {v0, p0, p1}, Lorg/chromium/media/CameraAvailabilityObserver;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserverLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-wide v0, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserver:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/media/CameraAvailabilityObserverJni;->get()Lorg/chromium/media/CameraAvailabilityObserver$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserver:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/media/CameraAvailabilityObserver$Natives;->onCameraAvailabilityChanged(JLorg/chromium/media/CameraAvailabilityObserver;)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserverLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-wide v0, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserver:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/media/CameraAvailabilityObserverJni;->get()Lorg/chromium/media/CameraAvailabilityObserver$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserver:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/media/CameraAvailabilityObserver$Natives;->onCameraAvailabilityChanged(JLorg/chromium/media/CameraAvailabilityObserver;)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startObservation()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mObservationThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopObservation()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserverLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mNativeCameraAvailabilityObserver:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/chromium/media/CameraAvailabilityObserver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
