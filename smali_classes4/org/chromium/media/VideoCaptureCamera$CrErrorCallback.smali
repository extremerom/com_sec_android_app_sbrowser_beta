.class Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4

    iget-object p2, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x44

    invoke-virtual {p2, p2, v0, p1}, Lorg/chromium/media/VideoCapture;->onError(Lorg/chromium/media/VideoCapture;ILjava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureCamera;->b(Lorg/chromium/media/VideoCaptureCamera;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {p2}, Lorg/chromium/media/VideoCaptureCamera;->a(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {p2}, Lorg/chromium/media/VideoCaptureCamera;->a(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->d(Lorg/chromium/media/VideoCaptureCamera;)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
