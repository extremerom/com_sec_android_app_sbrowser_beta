.class Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrStateListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCapture"

    const-string v1, "cameraDevice closed"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureCamera2;->o(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->E(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->p(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "VideoCapture"

    const-string v1, "cameraDevice was closed unexpectedly"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->r(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->I(Lorg/chromium/media/VideoCaptureCamera2;I)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    const-string v0, "VideoCapture"

    const-string v1, "cameraDevice encountered an error"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->r(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->I(Lorg/chromium/media/VideoCaptureCamera2;I)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Camera device error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x45

    invoke-virtual {p0, p0, p2, p1}, Lorg/chromium/media/VideoCapture;->onError(Lorg/chromium/media/VideoCapture;ILjava/lang/String;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "VideoCapture"

    const-string v1, "CameraDevice.StateCallback onOpened"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->r(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureCamera2;->p(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/media/VideoCaptureCamera2;->I(Lorg/chromium/media/VideoCaptureCamera2;I)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/16 p1, 0x72

    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->K(Lorg/chromium/media/VideoCaptureCamera2;I)V

    return-void
.end method
