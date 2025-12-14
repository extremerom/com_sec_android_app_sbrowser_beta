.class public Lorg/chromium/media/VideoCaptureCamera;
.super Lorg/chromium/media/VideoCapture;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera$BuggyDeviceHack;,
        Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;,
        Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullUnmarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreaOfInterest:Landroid/hardware/Camera$Area;

.field private mCamera:Landroid/hardware/Camera;

.field private mExpectedFrameSize:I

.field private mGlTextures:[I

.field private mIsRunning:Z

.field private mPhotoHeight:I

.field private mPhotoTakenCallbackId:J

.field private final mPhotoTakenCallbackLock:Ljava/lang/Object;

.field private mPhotoWidth:I

.field private mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPreviewParameters:Landroid/hardware/Camera$Parameters;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;

    const/16 v1, 0xb22

    const-string v2, "incandescent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb86

    const-string v2, "warm-fluorescent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x109a

    const-string v2, "fluorescent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x11f8

    const-string v2, "twilight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x157c

    const-string v2, "daylight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1770

    const-string v2, "cloudy-daylight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1b58

    const-string v2, "shade"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/VideoCapture;-><init>(IJ)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/VideoCaptureCamera;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/VideoCaptureCamera;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/media/VideoCaptureCamera;)Landroid/hardware/Camera$Parameters;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/media/VideoCaptureCamera;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    return-void
.end method

.method private static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 2

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    :try_start_0
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCameraInfo: Camera.getCameraInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoCapture"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraParameters: android.hardware.Camera.getParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCapture"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCaptureApiType(I)I
    .locals 0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0
.end method

.method private getClosestWhiteBalance(ILjava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const p0, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/chromium/media/VideoCaptureCamera;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    move p0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getDeviceId(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 14

    const-string v0, "VideoCapture"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Camera.Parameters.getSupportedPreviewFormats: "

    invoke-static {v0, v5, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v1

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0x32315659

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x11

    if-ne v5, v7, :cond_5

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v7, "Camera.Parameters.getSupportedPreviewFpsRange: "

    invoke-static {v0, v7, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v1

    :goto_3
    if-nez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7

    filled-new-array {v6, v6}, [I

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    new-instance v10, Landroid/hardware/Camera$Size;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v10, p0, v6, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    new-instance v11, Lorg/chromium/media/VideoCaptureFormat;

    iget v12, v10, Landroid/hardware/Camera$Size;->width:I

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    const/4 v13, 0x1

    aget v13, v7, v13

    add-int/lit16 v13, v13, 0x3e7

    div-int/lit16 v13, v13, 0x3e8

    invoke-direct {v11, v12, v10, v13, v8}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/media/VideoCaptureFormat;

    return-object p0

    :catch_2
    move-exception p0

    const-string v2, "Camera.open: "

    invoke-static {v0, v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getFacingMode(I)I
    .locals 2

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "camera "

    const-string v2, ", facing "

    invoke-static {p0, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isZoomSupported(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    return v0

    :catch_0
    move-exception p0

    const-string v1, "VideoCapture"

    const-string v2, "Camera.open: "

    invoke-static {v1, v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method


# virtual methods
.method public allocate(IIIZ)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "allocate: requested (%d x %d) @%dfps"

    const-string v3, "VideoCapture"

    invoke-static {v3, v2, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    iget v2, v0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    iget v2, v0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v2}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    iput-object v4, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    return v1

    :cond_0
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v5, v0, Lorg/chromium/media/VideoCapture;->mCameraNativeOrientation:I

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lorg/chromium/media/VideoCapture;->mInvertDeviceOrientationReadings:Z

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lorg/chromium/media/VideoCapture;->mCameraNativeOrientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, v0, Lorg/chromium/media/VideoCapture;->mInvertDeviceOrientationReadings:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v2, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "allocate: Rotation dev=%d, cam=%d, facing back? %s"

    invoke-static {v3, v6, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v2}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_2

    iput-object v4, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    return v1

    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    new-instance v9, Lorg/chromium/media/VideoCapture$FramerateRange;

    aget v10, v8, v1

    aget v8, v8, v5

    invoke-direct {v9, v10, v8}, Lorg/chromium/media/VideoCapture$FramerateRange;-><init>(II)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move/from16 v6, p3

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v7, v6}, Lorg/chromium/media/VideoCapture;->getClosestFramerateRange(Ljava/util/List;I)Lorg/chromium/media/VideoCapture$FramerateRange;

    move-result-object v6

    iget v7, v6, Lorg/chromium/media/VideoCapture$FramerateRange;->min:I

    iget v6, v6, Lorg/chromium/media/VideoCapture$FramerateRange;->max:I

    filled-new-array {v7, v6}, [I

    move-result-object v6

    aget v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "allocate: fps set to [%d-%d]"

    invoke-static {v3, v8, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const v8, 0x7fffffff

    move/from16 v10, p1

    move/from16 v11, p2

    move v9, v8

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    sub-int v13, v13, p1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int v14, v14, p2

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v14, v13

    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v15, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v13, v15, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v13, "allocate: supported (%d, %d), diff=%d"

    invoke-static {v3, v13, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge v14, v9, :cond_5

    iget v4, v12, Landroid/hardware/Camera$Size;->width:I

    rem-int/lit8 v13, v4, 0x20

    if-nez v13, :cond_5

    iget v11, v12, Landroid/hardware/Camera$Size;->height:I

    move v10, v4

    move v9, v14

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    if-ne v9, v8, :cond_7

    const-string v0, "allocate: can not find a multiple-of-32 resolution"

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "allocate: matched (%d x %d)"

    invoke-static {v3, v7, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Image stabilization supported, currently: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", setting it."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_3

    :cond_8
    const-string v4, "Image stabilization not supported."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    const-string v7, "continuous-video"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string v4, "Continuous focus mode not supported."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    new-instance v4, Lorg/chromium/media/VideoCaptureFormat;

    aget v7, v6, v5

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera$BuggyDeviceHack;->getImageFormat()I

    move-result v8

    invoke-direct {v4, v10, v11, v7, v8}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object v4, v0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v2, v10, v11}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-virtual {v2, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    aget v4, v6, v1

    aget v6, v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    iget-object v4, v0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v4, v4, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    :try_start_1
    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    new-array v2, v5, [I

    iput-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    invoke-static {v5, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    aget v2, v2, v1

    const v4, 0x8d65

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const v6, 0x46180400    # 9729.0f

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v6, 0x812f

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    aget v4, v4, v1

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :try_start_2
    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v3, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;

    invoke-direct {v3, v0, v1}, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;I)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v2, v0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v3, v2, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iget v4, v2, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v3, v4

    iget v2, v2, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    iput v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mExpectedFrameSize:I

    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    iget v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mExpectedFrameSize:I

    new-array v2, v2, [B

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    return v5

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "allocate: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setParameters: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    :goto_6
    const-string v0, "allocate: no fps range found"

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "allocate: Camera.open: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public deallocateInternal()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->stopCaptureAndBlockUntilStopped()Z

    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deallocate: failed to deallocate camera, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoCapture"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPhotoCapabilitiesAsync(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v0, v1, v2, v3}, Lorg/chromium/media/VideoCapture;->onGetPhotoCapabilitiesReply(Lorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V

    return-void

    :cond_0
    new-instance v4, Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-direct {v4}, Lorg/chromium/media/PhotoCapabilities$Builder;-><init>()V

    const-string v5, " CAM params: %s"

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VideoCapture"

    invoke-static {v7, v5, v6}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {v6, v9, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const v10, 0x7fffffff

    move v12, v5

    move v13, v12

    move v11, v10

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Camera$Size;

    iget v15, v14, Landroid/hardware/Camera$Size;->width:I

    if-ge v15, v11, :cond_2

    move v11, v15

    :cond_2
    iget v14, v14, Landroid/hardware/Camera$Size;->height:I

    if-ge v14, v10, :cond_3

    move v10, v14

    :cond_3
    if-le v15, v13, :cond_4

    move v13, v15

    :cond_4
    if-le v14, v12, :cond_1

    move v12, v14

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    const/4 v14, 0x4

    invoke-virtual {v4, v14, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    const/4 v15, 0x5

    invoke-virtual {v10, v15, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    const/4 v12, 0x7

    invoke-virtual {v10, v12, v7}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    const/4 v15, 0x6

    invoke-virtual {v10, v15, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    const/16 v12, 0x8

    invoke-virtual {v10, v12, v11}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11, v13}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    const/16 v13, 0xb

    invoke-virtual {v10, v13, v7}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    const/16 v15, 0xa

    invoke-virtual {v10, v15, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v10

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v15

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v7, :cond_6

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_1

    :cond_6
    move v11, v5

    goto :goto_1

    :cond_7
    move v6, v5

    move v10, v6

    move v11, v10

    move v15, v11

    :goto_1
    int-to-double v13, v15

    invoke-virtual {v4, v5, v13, v14}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v13

    int-to-double v14, v6

    invoke-virtual {v13, v7, v14, v15}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v6

    int-to-double v13, v10

    invoke-virtual {v6, v8, v13, v14}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v6

    int-to-double v10, v11

    invoke-virtual {v6, v9, v10, v11}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    const-string v11, "continuous-video"

    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "edof"

    const-string v15, "continuous-picture"

    if-nez v13, :cond_8

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v13, "auto"

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    const-string v12, "macro"

    if-nez v17, :cond_a

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v7, "infinity"

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    const-string v9, "fixed"

    if-nez v18, :cond_c

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {v10}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_2

    :cond_10
    const/4 v12, 0x1

    goto :goto_5

    :cond_11
    :goto_2
    move v12, v8

    goto :goto_5

    :cond_12
    :goto_3
    const/4 v12, 0x3

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v12, 0x4

    :goto_5
    invoke-virtual {v4, v5, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {v6}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v6

    if-eqz v6, :cond_15

    move v6, v8

    goto :goto_6

    :cond_15
    const/4 v6, 0x4

    :goto_6
    invoke-virtual {v4, v7, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v6

    float-to-double v9, v6

    const/16 v7, 0xb

    invoke-virtual {v4, v7, v9, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-double v9, v9

    const/16 v11, 0x8

    invoke-virtual {v7, v11, v9, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-double v9, v9

    const/16 v11, 0x9

    invoke-virtual {v7, v11, v9, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-double v9, v9

    const/16 v6, 0xa

    invoke-virtual {v7, v6, v9, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    const/4 v7, 0x4

    :goto_7
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_17
    const/4 v7, 0x4

    :cond_18
    :goto_8
    invoke-static {v6}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v6

    if-eqz v6, :cond_19

    move v14, v8

    goto :goto_9

    :cond_19
    move v14, v7

    :goto_9
    invoke-virtual {v4, v8, v14}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    sget-object v6, Lorg/chromium/media/VideoCaptureCamera;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    const/16 v9, 0xc

    invoke-virtual {v4, v9, v7}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    const/16 v10, 0xd

    invoke-virtual {v7, v10, v9}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const/16 v9, 0xf

    const/16 v10, 0x32

    invoke-virtual {v7, v9, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    if-ne v14, v8, :cond_1a

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_1a

    const/16 v9, 0xe

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_1a
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1e

    const-string v7, "torch"

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v4, v5, v9}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    invoke-virtual {v9, v7, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v3

    const-string v9, "red-eye"

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-string v5, "off"

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    const-string v5, "on"

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static {v3}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setFillLightModeArray([I)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_1e
    invoke-virtual {v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->build()Lorg/chromium/media/PhotoCapabilities;

    move-result-object v3

    invoke-virtual {v0, v0, v1, v2, v3}, Lorg/chromium/media/VideoCapture;->onGetPhotoCapabilitiesReply(Lorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    array-length v0, p1

    iget v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mExpectedFrameSize:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getCameraRotation()I

    move-result v0

    invoke-virtual {p0, p0, p1, v1, v0}, Lorg/chromium/media/VideoCapture;->onFrameAvailable(Lorg/chromium/media/VideoCapture;[BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, p0, v0}, Lorg/chromium/media/VideoCapture;->onFrameDropped(Lorg/chromium/media/VideoCapture;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_3
    return-void

    :goto_1
    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_4
    throw v0
.end method

.method public setPhotoOptions(DIDIDD[DZDDIDZZIZZD)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p11

    move/from16 v4, p17

    move/from16 v5, p22

    move-wide/from16 v6, p25

    iget-object v8, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v8}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    iput-object v9, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_3

    cmpl-double v10, p1, v11

    if-lez v10, :cond_3

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v10

    move v14, v13

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 p5, v10

    int-to-double v9, v15

    cmpg-double v9, p1, v9

    if-gez v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, p5

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr v14, v13

    invoke-virtual {v8, v14}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_3
    const/4 v9, 0x4

    const-string v10, "auto"

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-ne v1, v15, :cond_4

    const-string v11, "fixed"

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-ne v1, v14, :cond_5

    invoke-virtual {v8, v10}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-ne v1, v9, :cond_6

    const-string v11, "continuous-picture"

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_7

    if-ne v2, v15, :cond_8

    invoke-virtual {v8, v13}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_7
    :goto_3
    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_8
    if-eq v2, v13, :cond_7

    invoke-virtual {v8, v12}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    goto :goto_3

    :goto_4
    cmpl-double v11, p7, v16

    if-lez v11, :cond_9

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v11, v14

    iput v11, v0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoWidth:I

    :cond_9
    cmpl-double v11, p9, v16

    if-lez v11, :cond_a

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v11, v14

    iput v11, v0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoHeight:I

    :cond_a
    iget-object v11, v0, Lorg/chromium/media/VideoCaptureCamera;->mAreaOfInterest:Landroid/hardware/Camera$Area;

    if-eqz v11, :cond_b

    iget-object v11, v11, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    const-wide/16 v14, 0x0

    cmpl-double v11, p1, v14

    if-lez v11, :cond_b

    const/4 v11, 0x0

    iput-object v11, v0, Lorg/chromium/media/VideoCaptureCamera;->mAreaOfInterest:Landroid/hardware/Camera$Area;

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_5
    if-eq v1, v13, :cond_c

    if-ne v2, v13, :cond_d

    :cond_c
    iput-object v11, v0, Lorg/chromium/media/VideoCaptureCamera;->mAreaOfInterest:Landroid/hardware/Camera$Area;

    :cond_d
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    const-string v11, "VideoCapture"

    if-gtz v2, :cond_e

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_f

    :cond_e
    array-length v2, v3

    if-lez v2, :cond_f

    aget-wide v14, v3, v12

    const-wide v16, 0x409f400000000000L    # 2000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/16 v18, 0x3e8

    sub-long v14, v14, v18

    long-to-int v2, v14

    aget-wide v14, v3, v13

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    sub-long v14, v14, v18

    long-to-int v3, v14

    new-instance v12, Landroid/hardware/Camera$Area;

    new-instance v14, Landroid/graphics/Rect;

    add-int/lit8 v15, v2, -0x7d

    const/16 v13, -0x3e8

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v9, v3, -0x7d

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v2, v2, 0x7d

    const/16 v13, 0x3e8

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x7d

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v14, v15, v9, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v12, v14, v13}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    iput-object v12, v0, Lorg/chromium/media/VideoCaptureCamera;->mAreaOfInterest:Landroid/hardware/Camera$Area;

    iget-object v2, v12, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Area of interest %s"

    invoke-static {v11, v3, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mAreaOfInterest:Landroid/hardware/Camera$Area;

    if-eqz v2, :cond_10

    filled-new-array {v2}, [Landroid/hardware/Camera$Area;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mAreaOfInterest:Landroid/hardware/Camera$Area;

    filled-new-array {v2}, [Landroid/hardware/Camera$Area;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_10
    if-eqz p12, :cond_11

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    float-to-double v2, v2

    div-double v2, p13, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_11
    const/4 v2, 0x4

    if-ne v4, v2, :cond_13

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v8, v10}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_12
    :goto_6
    const-wide/16 v2, 0x0

    goto :goto_7

    :cond_13
    const/4 v2, 0x2

    if-ne v4, v2, :cond_12

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_6

    :goto_7
    cmpl-double v2, v6, v2

    if-lez v2, :cond_14

    double-to-int v2, v6

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/media/VideoCaptureCamera;->getClosestWhiteBalance(ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p25 .. p26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, " Color temperature (%f ==> %s)"

    invoke-static {v11, v4, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_14

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    if-eqz p23, :cond_15

    if-eqz p24, :cond_15

    const-string v2, "torch"

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_8

    :cond_15
    if-eqz v5, :cond_1a

    const/4 v2, 0x1

    if-eq v5, v2, :cond_19

    const/4 v2, 0x2

    if-eq v5, v2, :cond_17

    const/4 v2, 0x3

    if-eq v5, v2, :cond_16

    goto :goto_8

    :cond_16
    const-string v2, "on"

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    if-eqz p20, :cond_18

    if-eqz p21, :cond_18

    const-string v10, "red-eye"

    :cond_18
    invoke-virtual {v8, v10}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_8

    :cond_19
    const-string v2, "off"

    invoke-virtual {v8, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1a
    :goto_8
    :try_start_0
    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    return-void

    :cond_1b
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lorg/chromium/media/VideoCaptureCamera$1;

    invoke-direct {v2, v0}, Lorg/chromium/media/VideoCaptureCamera$1;-><init>(Lorg/chromium/media/VideoCaptureCamera;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "setParameters: "

    invoke-static {v11, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public startCaptureMaybeAsync()Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const-string v2, "VideoCapture"

    if-nez v0, :cond_0

    const-string p0, "startCaptureAsync: mCamera is null"

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_1
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->onStarted(Lorg/chromium/media/VideoCapture;)V

    iput-boolean v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "startCaptureAsync: Camera.startPreview: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopCaptureAndBlockUntilStopped()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "VideoCapture"

    const-string v0, "stopCaptureAndBlockUntilStopped: mCamera is null"

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return v1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public takePhotoAsync(J)V
    .locals 11

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    iput-wide p1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getCameraRotation()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoWidth:I

    const/4 v3, 0x0

    if-gtz v2, :cond_4

    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoHeight:I

    if-lez v2, :cond_9

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v4, 0x7fffffff

    move-object v6, v1

    move v5, v4

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v8, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoWidth:I

    if-lez v8, :cond_6

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_1

    :cond_6
    move v8, v3

    :goto_1
    iget v9, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoHeight:I

    if-lez v9, :cond_7

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v9

    goto :goto_2

    :cond_7
    move v9, v3

    :goto_2
    add-int/2addr v8, v9

    if-ge v8, v5, :cond_5

    move-object v6, v7

    move v5, v8

    goto :goto_0

    :cond_8
    if-eq v5, v4, :cond_9

    const-string v2, "VideoCapture"

    const-string v4, "requested resolution: (%dx%d); matched (%dx%d)"

    iget v5, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v7, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v5, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v6, Landroid/hardware/Camera$Size;->width:I

    iget v4, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_9
    :try_start_1
    const-string v2, "VideoCapture"

    const-string v4, "|photoParameters|: %s"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p2, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;

    invoke-direct {p2, p0, v3}, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;I)V

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameters "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    :goto_4
    const-string v0, "VideoCapture"

    const-string v1, "takePhotoAsync: mCamera is null or is not running"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void
.end method
