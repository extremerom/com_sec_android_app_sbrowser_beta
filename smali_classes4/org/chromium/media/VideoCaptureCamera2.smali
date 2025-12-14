.class public Lorg/chromium/media/VideoCaptureCamera2;
.super Lorg/chromium/media/VideoCapture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera2$CameraState;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPreviewReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;,
        Lorg/chromium/media/VideoCaptureCamera2$StopCaptureTask;,
        Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;,
        Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;,
        Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;,
        Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullUnmarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AE_TARGET_FPS_RANGE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

.field private static final COLOR_TEMPERATURES_MAP:Landroid/util/SparseIntArray;


# instance fields
.field private mAeFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAreaOfInterest:Landroid/hardware/camera2/params/MeteringRectangle;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraState:I

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCameraThreadHandler:Landroid/os/Handler;

.field private mColorTemperature:I

.field private mCropRect:Landroid/graphics/Rect;

.field private mCurrentFocusDistance:F

.field private mEnableFaceDetection:Z

.field private mExposureCompensation:I

.field private mExposureMode:I

.field private mFillLightMode:I

.field private mFocusMode:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mIso:I

.field private mLastExposureTimeNs:J

.field private mMaxZoom:F

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mRedEyeReduction:Z

.field private mTorch:Z

.field private mWaitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

.field private mWhiteBalanceMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Pixel 3"

    const-string v1, "Pixel 3 XL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2;->AE_TARGET_FPS_RANGE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xb22

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xb86

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x109a

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x11f8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1388

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1770

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1b58

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/VideoCapture;-><init>(IJ)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    new-instance p2, Landroid/os/ConditionVariable;

    invoke-direct {p2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mWaitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

    const/4 p2, 0x3

    iput p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mMaxZoom:F

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCropRect:Landroid/graphics/Rect;

    const/4 p3, 0x4

    iput p3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFocusMode:I

    iput p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCurrentFocusDistance:F

    iput p3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureMode:I

    iput p3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mWhiteBalanceMode:I

    const/4 p2, -0x1

    iput p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mColorTemperature:I

    const/4 p2, 0x1

    iput p2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFillLightMode:I

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "VideoCaptureCamera2_CameraThread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mMaxZoom:F

    :cond_0
    return-void
.end method

.method public static bridge synthetic A(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 0

    iput-wide p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mLastExposureTimeNs:J

    return-void
.end method

.method public static bridge synthetic B(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPhotoHeight:I

    return-void
.end method

.method public static bridge synthetic C(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPhotoWidth:I

    return-void
.end method

.method public static bridge synthetic D(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method public static bridge synthetic E(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public static bridge synthetic F(Lorg/chromium/media/VideoCaptureCamera2;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mRedEyeReduction:Z

    return-void
.end method

.method public static bridge synthetic G(Lorg/chromium/media/VideoCaptureCamera2;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mTorch:Z

    return-void
.end method

.method public static bridge synthetic H(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mWhiteBalanceMode:I

    return-void
.end method

.method public static bridge synthetic I(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(I)V

    return-void
.end method

.method public static bridge synthetic J(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->configureCommonCaptureSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static bridge synthetic K(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->createPreviewObjectsAndStartPreviewOrFailWith(I)V

    return-void
.end method

.method public static bridge synthetic L()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public static bridge synthetic M([Landroid/util/Size;II)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/media/VideoCaptureCamera2;->findClosestSizeInArray([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic N(I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAreaOfInterest:Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/media/VideoCaptureCamera2;)I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:I

    return p0
.end method

.method private changeCameraStateAndNotify(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:I

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private configureCommonCaptureSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 14

    const-string v0, "VideoCaptureCamera2.configureCommonCaptureSettings"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFocusMode:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    if-ne v2, v4, :cond_1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCurrentFocusDistance:F

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureMode:I

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera2;->shouldSkipSettingAeTargetFpsRange()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAeFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-wide v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mLastExposureTimeNs:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_4

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mTorch:Z

    if-eqz v2, :cond_7

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureMode:I

    if-ne v7, v3, :cond_6

    move v7, v6

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFillLightMode:I

    if-eq v2, v6, :cond_b

    if-eq v2, v4, :cond_9

    const/4 v7, 0x3

    if-eq v2, v7, :cond_8

    goto :goto_5

    :cond_8
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mRedEyeReduction:Z

    if-eqz v7, :cond_a

    move v7, v3

    goto :goto_4

    :cond_a
    move v7, v4

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_6
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureCompensation:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mWhiteBalanceMode:I

    if-ne v2, v3, :cond_c

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    if-ne v2, v6, :cond_d

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    if-ne v2, v4, :cond_e

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_e
    :goto_7
    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mColorTemperature:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "VideoCapture"

    if-lez v2, :cond_10

    const/4 v4, -0x1

    if-eqz v1, :cond_f

    :try_start_1
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v2, v1}, Lorg/chromium/media/VideoCaptureCamera2;->getClosestWhiteBalance(I[I)I

    move-result v1

    goto :goto_8

    :cond_f
    move v1, v4

    :goto_8
    const-string v2, " Color temperature (%d ==> %d)"

    iget v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mColorTemperature:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v1, v4, :cond_10

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_10
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAreaOfInterest:Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v1, :cond_11

    filled-new-array {v1}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    const-string v4, "Area of interest %s"

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_12
    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mIso:I

    if-lez p0, :cond_13

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_14
    return-void

    :goto_9
    if-eqz v0, :cond_15

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_a
    throw p0
.end method

.method private createPreviewObjectsAndStartPreview()Z
    .locals 9

    const-string v0, "VideoCapture"

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "VideoCaptureCamera2.createPreviewObjectsAndStartPreview"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v3}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v4}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v5}, Lorg/chromium/media/VideoCaptureFormat;->getPixelFormat()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewReaderListener;

    invoke-direct {v3, p0, v2}, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;I)V

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    const-string p0, "mPreviewRequestBuilder error"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    :try_start_3
    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget v3, p0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_3
    return v2

    :cond_4
    :try_start_4
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v5, v3

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_6

    aget v8, v3, v7

    if-ne v8, v4, :cond_5

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v3}, Lorg/chromium/media/VideoCaptureCamera2;->configureCommonCaptureSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mEnableFaceDetection:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v6, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;

    iget-object v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {v6, p0, v7}, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V

    const/4 p0, 0x0

    invoke-virtual {v5, v3, v6, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_8
    return v4

    :catch_0
    move-exception p0

    :try_start_6
    const-string v3, "createCaptureSession: "

    invoke-static {v0, v3, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_9
    return v2

    :catch_1
    move-exception p0

    :try_start_7
    const-string v3, "createCaptureRequest: "

    invoke-static {v0, v3, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_a
    return v2

    :goto_2
    if-eqz v1, :cond_b

    :try_start_8
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw p0
.end method

.method private createPreviewObjectsAndStartPreviewOrFailWith(I)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createPreviewObjectsAndStartPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(I)V

    const-string v0, "Error starting or restarting preview"

    invoke-virtual {p0, p0, p1, v0}, Lorg/chromium/media/VideoCapture;->onError(Lorg/chromium/media/VideoCapture;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/media/VideoCaptureCamera2;)F
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCurrentFocusDistance:F

    return p0
.end method

.method private static findClosestSizeInArray([Landroid/util/Size;II)Landroid/util/Size;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v6, v0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v7, p0, v4

    if-lez p1, :cond_1

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-lez p2, :cond_2

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    add-int/2addr v8, v9

    if-ge v8, v5, :cond_3

    move-object v6, v7

    move v5, v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v5, v2, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "VideoCapture"

    const-string v1, "Couldn\'t find resolution close to (%dx%d)"

    invoke-static {p2, v1, p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    return-object v6
.end method

.method private static findInIntArray([II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static bridge synthetic g(Lorg/chromium/media/VideoCaptureCamera2;)I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureMode:I

    return p0
.end method

.method private static getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "VideoCapture"

    const-string v1, "getCameraCharacteristics: "

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCaptureApiType(I)I
    .locals 6

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceIdInt(I)I

    move-result p0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length v2, p0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_5

    aget v5, p0, v4

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    if-eq v1, p0, :cond_2

    return v3

    :cond_2
    const/16 p0, 0x9

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private static getClosestWhiteBalance(I[I)I
    .locals 6

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    sget-object v4, Lorg/chromium/media/VideoCaptureCamera2;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {p1, v5}, Lorg/chromium/media/VideoCaptureCamera2;->findInIntArray([II)I

    move-result v5

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    sub-int v5, p0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    move v0, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static getDeviceId(I)Ljava/lang/String;
    .locals 4

    const-string v0, "VideoCapture"

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lt p0, v3, :cond_0

    const-string v1, "Invalid camera index: "

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    aget-object p0, v1, p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string v1, "manager.getCameraIdList: "

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static getDeviceIdInt(I)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "VideoCapture"

    const-string v1, "Invalid camera index: "

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getDeviceIndex(I)I
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v2, :cond_1

    :try_start_1
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, p0, :cond_0

    return v1

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    const-string v0, "VideoCapture"

    const-string v1, "manager.getCameraIdList: "

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 18

    invoke-static/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceIdInt(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v2, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    const/4 v7, 0x0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_9

    aget v8, v4, v6

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    if-nez v9, :cond_4

    :cond_3
    move-object v15, v4

    goto :goto_6

    :cond_4
    array-length v10, v9

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v13

    if-ltz v13, :cond_5

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v13

    if-gez v13, :cond_6

    :cond_5
    move-object v15, v4

    goto :goto_5

    :cond_6
    const-wide/16 v13, 0x0

    if-eqz v7, :cond_8

    move-object v15, v4

    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v3

    const-wide/16 v16, 0x0

    cmp-long v16, v3, v16

    if-nez v16, :cond_7

    goto :goto_4

    :cond_7
    const-wide v13, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v3, v3

    div-double/2addr v13, v3

    goto :goto_4

    :cond_8
    move-object v15, v4

    :goto_4
    new-instance v3, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    double-to-int v13, v13

    invoke-direct {v3, v4, v12, v13, v8}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object v4, v15

    goto :goto_3

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object v4, v15

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/VideoCaptureFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_7
    const-string v2, "VideoCapture"

    const-string v3, "Unable to catch device supported video formats: "

    invoke-static {v2, v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getFacingMode(I)I
    .locals 2

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceIdInt(I)I

    move-result p0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceIdInt(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const-string v1, "unknown"

    goto :goto_0

    :cond_2
    const-string v1, "external"

    goto :goto_0

    :cond_3
    const-string v1, "back"

    goto :goto_0

    :cond_4
    const-string v1, "front"

    :goto_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "camera2 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", facing "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    const-string p0, " infrared"

    goto :goto_2

    :cond_6
    const-string p0, ""

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberOfCameras()I
    .locals 4

    const-string v0, "VideoCapture"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v2

    const-string v3, "getNumberOfCameras: getCameraIdList(): "

    invoke-static {v0, v3, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception v2

    const-string v3, "getSystemService(Context.CAMERA_SERVICE): "

    invoke-static {v0, v3, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static bridge synthetic h(Lorg/chromium/media/VideoCaptureCamera2;)I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFocusMode:I

    return p0
.end method

.method public static bridge synthetic i(Lorg/chromium/media/VideoCaptureCamera2;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mLastExposureTimeNs:J

    return-wide v0
.end method

.method public static isLegacyDevice(I)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZoomSupported(I)Z
    .locals 2

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceIdInt(I)I

    move-result p0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static bridge synthetic j(Lorg/chromium/media/VideoCaptureCamera2;)F
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mMaxZoom:F

    return p0
.end method

.method public static bridge synthetic k(Lorg/chromium/media/VideoCaptureCamera2;)I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPhotoHeight:I

    return p0
.end method

.method public static bridge synthetic l(Lorg/chromium/media/VideoCaptureCamera2;)I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPhotoWidth:I

    return p0
.end method

.method public static bridge synthetic m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method public static bridge synthetic n(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public static bridge synthetic o(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static bridge synthetic p(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mWaitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static bridge synthetic q(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAreaOfInterest:Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public static bridge synthetic r(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public static bridge synthetic s(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mColorTemperature:I

    return-void
.end method

.method private static shouldSkipSettingAeTargetFpsRange()Z
    .locals 6

    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2;->AE_TARGET_FPS_RANGE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static bridge synthetic t(Lorg/chromium/media/VideoCaptureCamera2;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static bridge synthetic u(Lorg/chromium/media/VideoCaptureCamera2;F)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCurrentFocusDistance:F

    return-void
.end method

.method public static bridge synthetic v(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureCompensation:I

    return-void
.end method

.method public static bridge synthetic w(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mExposureMode:I

    return-void
.end method

.method public static bridge synthetic x(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFillLightMode:I

    return-void
.end method

.method public static bridge synthetic y(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mFocusMode:I

    return-void
.end method

.method public static bridge synthetic z(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mIso:I

    return-void
.end method


# virtual methods
.method public allocate(IIIZ)Z
    .locals 9

    const-string v0, "VideoCapture"

    const-string v1, "allocate: requested (%d x %d) @%dfps"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/chromium/media/VideoCapture;->mCameraNativeOrientation:I

    const/16 v4, 0x23

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/chromium/media/VideoCaptureCamera2;->findClosestSizeInArray([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "VideoCapture"

    const-string p1, "No supported resolutions."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/util/Range;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "VideoCapture"

    const-string p1, "No supported framerate ranges."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_4

    move v6, v3

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    new-instance v7, Lorg/chromium/media/VideoCapture$FramerateRange;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v5, v6

    invoke-direct {v7, v8, v5}, Lorg/chromium/media/VideoCapture$FramerateRange;-><init>(II)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    mul-int/lit16 p2, p3, 0x3e8

    invoke-static {v1, p2}, Lorg/chromium/media/VideoCapture;->getClosestFramerateRange(Ljava/util/List;I)Lorg/chromium/media/VideoCapture$FramerateRange;

    move-result-object p2

    new-instance v1, Landroid/util/Range;

    iget v5, p2, Lorg/chromium/media/VideoCapture$FramerateRange;->min:I

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p2, p2, Lorg/chromium/media/VideoCapture$FramerateRange;->max:I

    div-int/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v5, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAeFpsRange:Landroid/util/Range;

    const-string p2, "VideoCapture"

    const-string v1, "allocate: matched (%d x %d) @[%d - %d]"

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAeFpsRange:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    iget-object v8, p0, Lorg/chromium/media/VideoCaptureCamera2;->mAeFpsRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v1, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p2, v1, p1, p3, v4}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object p2, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lorg/chromium/media/VideoCapture;->mInvertDeviceOrientationReadings:Z

    iput-boolean p4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mEnableFaceDetection:Z

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_7
    :goto_1
    :try_start_1
    const-string p0, "VideoCapture"

    const-string p1, "allocate() invoked while Camera is busy opening/configuring."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public deallocateInternal()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "VideoCapture"

    const-string v1, "deallocate"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public getPhotoCapabilitiesAsync(J)V
    .locals 2

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;-><init>(Lorg/chromium/media/VideoCaptureCamera2;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPhotoOptions(DIDIDD[DZDDIDZZIZZD)V
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move/from16 v18, p17

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-wide/from16 v26, p25

    invoke-virtual {v0, v0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;

    move-object/from16 p1, v0

    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    move-object/from16 v28, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v27}, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;-><init>(DIDIDD[DZDDIDZZIZZD)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v2, v1, v0}, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startCaptureMaybeAsync()Z
    .locals 8

    const-string v0, "VideoCapture"

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(I)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;

    invoke-direct {v3, p0, v1}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceIndex(I)I

    move-result v5

    if-gez v5, :cond_0

    const-string v2, "Invalid camera Id: "

    iget p0, p0, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string v6, "VideoCaptureCamera2.java"

    const-string v7, "VideoCaptureCamera2.startCaptureMaybeAsync calling manager.openCamera"

    invoke-static {v6, v7}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v4, v5

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_0
    const-string v2, "allocate: manager.openCamera: "

    invoke-static {v0, v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public stopCaptureAndBlockUntilStopped()Z
    .locals 5

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    const-string v0, "VideoCaptureCamera2.stopCaptureAndBlockUntilStopped"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    :try_start_2
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "VideoCapture"

    const-string v4, "CaptureStartedEvent: "

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v4, :cond_2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return v3

    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/chromium/media/VideoCaptureCamera2$StopCaptureTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lorg/chromium/media/VideoCaptureCamera2$StopCaptureTask;-><init>(Lorg/chromium/media/VideoCaptureCamera2;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mWaitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_3
    return v3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
.end method

.method public takePhotoAsync(J)V
    .locals 2

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->dCheckCurrentlyOnIncomingTaskRunner(Lorg/chromium/media/VideoCapture;)V

    const-string v0, "VideoCaptureCamera2.java"

    const-string v1, "takePhotoAsync"

    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;-><init>(Lorg/chromium/media/VideoCaptureCamera2;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
