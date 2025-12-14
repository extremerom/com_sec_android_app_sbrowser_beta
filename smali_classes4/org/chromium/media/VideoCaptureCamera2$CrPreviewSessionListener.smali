.class Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrPreviewSessionListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCapture"

    const-string v1, "CrPreviewSessionListener.onClosed"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->E(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCapture"

    const-string v1, "CrPreviewSessionListener.onConfigureFailed"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->I(Lorg/chromium/media/VideoCaptureCamera2;I)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->E(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/16 p1, 0x46

    const-string v0, "Camera session configuration error"

    invoke-virtual {p0, p0, p1, v0}, Lorg/chromium/media/VideoCapture;->onError(Lorg/chromium/media/VideoCapture;ILjava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CrPreviewSessionListener.onConfigured"

    const-string v2, "VideoCapture"

    invoke-static {v2, v1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->E(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    :try_start_0
    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureCamera2;->o(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener$1;-><init>(Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->I(Lorg/chromium/media/VideoCaptureCamera2;I)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCapture;->onStarted(Lorg/chromium/media/VideoCapture;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "setRepeatingRequest: "

    invoke-static {v2, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
