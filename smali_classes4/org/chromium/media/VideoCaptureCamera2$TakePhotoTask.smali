.class Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TakePhotoTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCallbackId:J

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "VideoCaptureCamera2.java"

    const-string v1, "TakePhotoTask.run"

    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->b(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const-string v2, "VideoCapture"

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->c(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget v1, v1, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->N(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "cameraCharacteristics error"

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v4, 0x100

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->l(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v6}, Lorg/chromium/media/VideoCaptureCamera2;->k(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v6

    invoke-static {v1, v5, v6}, Lorg/chromium/media/VideoCaptureCamera2;->M([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->l(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v6}, Lorg/chromium/media/VideoCaptureCamera2;->k(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "requested resolution: (%dx%d)"

    invoke-static {v2, v6, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, " matched (%dx%d)"

    invoke-static {v2, v6, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v5, "TakePhotoTask.run creating ImageReader"

    invoke-static {v0, v5}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v5, v5, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v5}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v5

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, v1, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v1}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v1

    :goto_1
    const/4 v6, 0x1

    invoke-static {v5, v1, v4, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v7, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    invoke-direct {v1, v4, v7, v8}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;J)V

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->d(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->b(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_5

    const-string v0, "photoRequestBuilder error"

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :cond_5
    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-virtual {v5}, Lorg/chromium/media/VideoCapture;->getCameraRotation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v4, "TakePhotoTask.run calling configureCommonCaptureSettings"

    invoke-static {v0, v4}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4, v3}, Lorg/chromium/media/VideoCaptureCamera2;->J(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string v4, "TakePhotoTask.run calling photoRequestBuilder.build()"

    invoke-static {v0, v4}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;

    iget-object v8, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v11, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/media/ImageReader;Landroid/hardware/camera2/CaptureRequest;J)V

    :try_start_1
    const-string v4, "TakePhotoTask.run calling mCameraDevice.createCaptureSession()"

    invoke-static {v0, v4}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->b(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->d(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createCaptureSession: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    :goto_2
    return-void

    :catch_1
    move-exception v0

    const-string v1, "createCaptureRequest() error "

    invoke-static {v2, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :cond_6
    :goto_3
    const-string v0, "TakePhoto failed because mCameraDevice == null || mCameraState != CameraState.STARTED"

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureCamera2$TakePhotoTask;->mCallbackId:J

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void
.end method
