.class Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrPhotoReaderListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCallbackId:J

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    return-void
.end method

.method private readCapturedData(Landroid/media/Image;)[B
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    const-string v0, "VideoCaptureCamera2.java"

    const-string v1, "CrPhotoReaderListener.onImageAvailable"

    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->readCapturedData(Landroid/media/Image;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    invoke-virtual {v1, v1, v2, v3, v0}, Lorg/chromium/media/VideoCapture;->onPhotoTaken(Lorg/chromium/media/VideoCapture;J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object p0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/16 p1, 0x49

    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->K(Lorg/chromium/media/VideoCaptureCamera2;I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    const-string v0, "VideoCapture"

    const-string v1, "Unexpected image format: %d"

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    iget-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    invoke-virtual {p1, v0, v1}, Lorg/chromium/media/VideoCapture;->notifyTakePhotoError(J)V

    return-void
.end method
