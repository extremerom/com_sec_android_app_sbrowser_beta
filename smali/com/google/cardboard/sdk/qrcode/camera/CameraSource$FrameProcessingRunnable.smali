.class Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameProcessingRunnable"
.end annotation


# instance fields
.field private active:Z

.field private detector:LS5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LS5/b;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private pendingFrameData:Ljava/nio/ByteBuffer;

.field private pendingFrameId:I

.field private pendingTimeMillis:J

.field private final startTimeMillis:J

.field final synthetic this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;


# direct methods
.method public constructor <init>(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;LS5/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS5/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->startTimeMillis:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->active:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameId:I

    iput-object p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->detector:LS5/b;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->detector:LS5/b;

    invoke-virtual {v0}, LS5/b;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->detector:LS5/b;

    return-void
.end method

.method public run()V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->active:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Frame processing loop terminated."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :cond_0
    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, LS5/d;

    invoke-direct {v1}, LS5/d;-><init>()V

    iget-object v2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {v3}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->d(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Le5/a;

    move-result-object v3

    iget v3, v3, Le5/a;->a:I

    iget-object v4, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {v4}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->d(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Le5/a;

    move-result-object v4

    iget v4, v4, Le5/a;->b:I

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    mul-int v6, v3, v4

    if-lt v5, v6, :cond_4

    iput-object v2, v1, LS5/d;->b:Ljava/nio/ByteBuffer;

    iget-object v2, v1, LS5/d;->a:LS5/c;

    iput v3, v2, LS5/c;->a:I

    iput v4, v2, LS5/c;->b:I

    const/16 v3, 0x11

    iput v3, v2, LS5/c;->f:I

    iget v2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameId:I

    iget-object v3, v1, LS5/d;->a:LS5/c;

    iput v2, v3, LS5/c;->c:I

    iget-wide v4, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingTimeMillis:J

    iput-wide v4, v3, LS5/c;->d:J

    iget-object v2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {v2}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->e(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)I

    move-result v2

    iget-object v3, v1, LS5/d;->a:LS5/c;

    iput v2, v3, LS5/c;->e:I

    iget-object v2, v1, LS5/d;->b:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_3

    iget-object v2, v1, LS5/d;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->detector:LS5/b;

    invoke-virtual {v0, v1}, LS5/b;->c(LS5/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->b(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception thrown from receiver."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->b(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->b(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object p0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    throw v0

    :cond_4
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid image data size."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null image data supplied."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public setActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->active:Z

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

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

.method public setNextFrame([BLandroid/hardware/Camera;)V
    .locals 5

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {p2}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->a(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Skipping frame.  Could not find ByteBuffer associated with the image data from the camera."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->startTimeMillis:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingTimeMillis:J

    iget p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameId:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameId:I

    iget-object p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-static {p2}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->a(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->pendingFrameData:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$FrameProcessingRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
