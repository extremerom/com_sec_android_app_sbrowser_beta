.class Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrPhotoSessionListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCallbackId:J

.field private final mImageReader:Landroid/media/ImageReader;

.field private final mPhotoRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/media/ImageReader;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mImageReader:Landroid/media/ImageReader;

    iput-object p3, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mPhotoRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-wide p4, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string p1, "VideoCapture"

    const-string v0, "failed configuring capture session"

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    invoke-virtual {p1, v0, v1}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const-string v0, "VideoCaptureCamera2.java"

    const-string v1, "CrPhotoSessionListener.onConfigured"

    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "VideoCapture"

    invoke-static {v3, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "Calling CameraCaptureSession.capture()"

    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mPhotoRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string v0, "capture() IllegalStateException"

    invoke-static {v3, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    invoke-virtual {p1, v0, v1}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void

    :goto_1
    const-string v0, "capture() CameraAccessException"

    invoke-static {v3, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    invoke-virtual {p1, v0, v1}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void
.end method
