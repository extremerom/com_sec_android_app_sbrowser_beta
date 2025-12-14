.class Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    :try_start_0
    const-string v0, "VideoCapture"

    const-string v1, "|mPreviewParameters|: %s"

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v2}, Lorg/chromium/media/VideoCaptureCamera;->c(Lorg/chromium/media/VideoCaptureCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->c(Lorg/chromium/media/VideoCaptureCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPictureTaken, setParameters() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    const-string v0, "VideoCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPictureTaken, startPreview() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {p2}, Lorg/chromium/media/VideoCaptureCamera;->b(Lorg/chromium/media/VideoCaptureCamera;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->a(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->a(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v1

    invoke-virtual {v0, v0, v1, v2, p1}, Lorg/chromium/media/VideoCapture;->onPhotoTaken(Lorg/chromium/media/VideoCapture;J[B)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->d(Lorg/chromium/media/VideoCaptureCamera;)V

    monitor-exit p2

    return-void

    :goto_3
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
