.class public abstract Lorg/chromium/media/VideoCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCapture$Natives;,
        Lorg/chromium/media/VideoCapture$FramerateRange;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field protected mCameraNativeOrientation:I

.field protected mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

.field protected final mId:I

.field protected mInvertDeviceOrientationReadings:Z

.field private mNativeVideoCaptureDeviceAndroid:J

.field private final mNativeVideoCaptureLock:Ljava/lang/Object;

.field protected mUseBackgroundThreadForTesting:Z


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    iput p1, p0, Lorg/chromium/media/VideoCapture;->mId:I

    iput-wide p2, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    return-void
.end method

.method public static getClosestFramerateRange(Ljava/util/List;I)Lorg/chromium/media/VideoCapture$FramerateRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/media/VideoCapture$FramerateRange;",
            ">;I)",
            "Lorg/chromium/media/VideoCapture$FramerateRange;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/VideoCapture$1;

    invoke-direct {v0, p1}, Lorg/chromium/media/VideoCapture$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/VideoCapture$FramerateRange;

    return-object p0
.end method

.method public static integerArrayListToArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract allocate(IIIZ)Z
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-interface {v1, v2, v3, p1}, Lorg/chromium/media/VideoCapture$Natives;->dCheckCurrentlyOnIncomingTaskRunner(JLorg/chromium/media/VideoCapture;)V

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

.method public deallocate()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->deallocateInternal()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract deallocateInternal()V
.end method

.method public final getCameraRotation()I
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/media/VideoCapture;->mInvertDeviceOrientationReadings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v0

    rsub-int v0, v0, 0x168

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v0

    :goto_0
    iget p0, p0, Lorg/chromium/media/VideoCapture;->mCameraNativeOrientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public final getColorspace()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final getDeviceRotation()I
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :goto_0
    return v0
.end method

.method public abstract getPhotoCapabilitiesAsync(J)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public notifyTakePhotoError(J)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v8, 0x0

    move-object v5, p0

    move-wide v6, p1

    invoke-interface/range {v2 .. v8}, Lorg/chromium/media/VideoCapture$Natives;->onPhotoTaken(JLorg/chromium/media/VideoCapture;J[B)V

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

.method public onError(Lorg/chromium/media/VideoCapture;ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/chromium/media/VideoCapture$Natives;->onError(JLorg/chromium/media/VideoCapture;ILjava/lang/String;)V

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

.method public onFrameAvailable(Lorg/chromium/media/VideoCapture;[BII)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Lorg/chromium/media/VideoCapture$Natives;->onFrameAvailable(JLorg/chromium/media/VideoCapture;[BII)V

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

.method public onFrameDropped(Lorg/chromium/media/VideoCapture;I)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-interface {v1, v2, v3, p1, p2}, Lorg/chromium/media/VideoCapture$Natives;->onFrameDropped(JLorg/chromium/media/VideoCapture;I)V

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

.method public onGetPhotoCapabilitiesReply(Lorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Lorg/chromium/media/VideoCapture$Natives;->onGetPhotoCapabilitiesReply(JLorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V

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

.method public onI420FrameAvailable(Lorg/chromium/media/VideoCapture;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v3

    iget-wide v4, v0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move-wide/from16 v16, p11

    invoke-interface/range {v3 .. v17}, Lorg/chromium/media/VideoCapture$Natives;->onI420FrameAvailable(JLorg/chromium/media/VideoCapture;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPhotoTaken(Lorg/chromium/media/VideoCapture;J[B)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Lorg/chromium/media/VideoCapture$Natives;->onPhotoTaken(JLorg/chromium/media/VideoCapture;J[B)V

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

.method public onStarted(Lorg/chromium/media/VideoCapture;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/media/VideoCaptureJni;->get()Lorg/chromium/media/VideoCapture$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-interface {v1, v2, v3, p1}, Lorg/chromium/media/VideoCapture$Natives;->onStarted(JLorg/chromium/media/VideoCapture;)V

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

.method public final queryFrameRate()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    return p0
.end method

.method public final queryHeight()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    return p0
.end method

.method public final queryWidth()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    return p0
.end method

.method public abstract setPhotoOptions(DIDIDD[DZDDIDZZIZZD)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public final setTestMode()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/VideoCapture;->mUseBackgroundThreadForTesting:Z

    return-void
.end method

.method public abstract startCaptureMaybeAsync()Z
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract stopCaptureAndBlockUntilStopped()Z
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract takePhotoAsync(J)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
