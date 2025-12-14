.class Lorg/chromium/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;,
        Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;,
        Lorg/chromium/media/MediaCodecBridge$Natives;,
        Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;,
        Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;,
        Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCallbackHandler:Landroid/os/Handler;

.field private static sCallbackHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mBitrateAdjuster:I

.field private mCurrentFormat:Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

.field private mMaxInputSize:I

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaCodecName:Ljava/lang/String;

.field private mNativeMediaCodecBridge:J

.field private mObtainBlockNames:[Ljava/lang/String;

.field private mPendingError:Z

.field private mPendingErrorCode:I

.field private mPendingFormat:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOutputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingStart:Z

.field private mSequenceCounter:I

.field private mUseAsyncApi:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodecName:Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    iput p2, p0, Lorg/chromium/media/MediaCodecBridge;->mBitrateAdjuster:I

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodecName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MediaCodecBridge"

    const-string v0, "Cannot get codec name"

    invoke-static {p2, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-boolean p3, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->enableAsyncApi()V

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->prepareAsyncApiForRestart()V

    return-void
.end method

.method public static bridge synthetic a(Landroid/media/MediaCodec$CodecException;)I
    .locals 0

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result p0

    return p0
.end method

.method private static alignDown(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static bridge synthetic b(Landroid/media/MediaCodec$CryptoException;)I
    .locals 0

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->convertCryptoException(Landroid/media/MediaCodec$CryptoException;)I

    move-result p0

    return p0
.end method

.method private static convertCodecException(Landroid/media/MediaCodec$CodecException;)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown CodecException error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecBridge"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "Media.MediaCodecError.NegativeCodecExceptionErrorCode"

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p0

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseHistogram(Ljava/lang/String;I)V

    :cond_0
    const/16 p0, 0x1b

    return p0

    :cond_1
    const/16 p0, 0x16

    return p0

    :cond_2
    const/16 p0, 0x15

    return p0
.end method

.method private static convertCryptoException(Landroid/media/MediaCodec$CryptoException;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->translateCryptoException(I)I

    move-result p0

    return p0
.end method

.method private static createCallbackHandlerForTesting()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/media/MediaCodecBridge;->sCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TestCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/media/MediaCodecBridge;->sCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/chromium/media/MediaCodecBridge;->sCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/chromium/media/MediaCodecBridge;->sCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private dequeueInputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    iget p2, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I

    invoke-direct {p1, p2, v3, v1}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(III)V

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingStart:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    invoke-direct {p1, v2, v3, v1}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(III)V

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const/4 v0, 0x5

    :try_start_1
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    if-ltz p0, :cond_4

    move v3, p0

    move v2, v1

    goto :goto_2

    :cond_4
    if-ne p0, v3, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "MediaCodecBridge"

    const-string p2, "Unexpected index_or_status: %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    :goto_2
    move v0, v2

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :goto_3
    const-string p1, "MediaCodecBridge"

    const-string p2, "Failed to dequeue input buffer"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    const-string p1, "MediaCodecBridge"

    const-string p2, "Failed to dequeue input buffer"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result v0

    :goto_5
    new-instance p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    invoke-direct {p0, v0, v3, v1}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(III)V

    return-object p0
.end method

.method private dequeueOutputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v3, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJII)V

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJII)V

    monitor-exit p0

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    invoke-static {p1}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->a(Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;)I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingFormat:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mCurrentFormat:Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    :cond_2
    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lorg/chromium/media/MediaCodecBridge;->dequeueOutputBufferInternal(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p0

    if-ltz p0, :cond_4

    const/4 v1, 0x0

    move v2, p0

    goto :goto_1

    :cond_4
    const/4 p1, -0x3

    if-ne p0, p1, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const/4 p1, -0x2

    if-ne p0, p1, :cond_6

    goto :goto_1

    :cond_6
    if-ne p0, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const-string p1, "MediaCodecBridge"

    const-string p2, "Unexpected index_or_status: %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x5

    :goto_1
    move v4, v1

    move v5, v2

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecBridge"

    const-string p2, "Failed to dequeue output buffer"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x18

    goto :goto_1

    :goto_2
    new-instance p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v11, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJII)V

    return-object p0
.end method

.method private enableAsyncApi()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingFormat:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;

    invoke-direct {v1, p0}, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;-><init>(Lorg/chromium/media/MediaCodecBridge;)V

    sget-object p0, Lorg/chromium/media/MediaCodecBridge;->sCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method private flush()I
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Failed to flush MediaCodec"

    const-string v1, "MediaCodecBridge"

    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    iget-boolean v2, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->prepareAsyncApiForRestart()V

    invoke-virtual {p0}, Lorg/chromium/media/MediaCodecBridge;->start()Z

    move-result v2

    if-nez v2, :cond_0

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x5

    return p0

    :goto_1
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result p0

    return p0
.end method

.method private generateCryptoInfo([B[B[I[IIIII)Landroid/media/MediaCodec$CryptoInfo;
    .locals 7

    new-instance p0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {p0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    move-object v0, p0

    move v1, p5

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    const/4 p1, 0x2

    if-ne p6, p1, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {p1, p7, p8}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_0
    return-object p0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    :try_start_1
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecBridge"

    const-string v0, "Failed to get input buffer"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private getInputFormat()Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;-><init>(Landroid/media/MediaFormat;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "MediaCodecBridge"

    const-string v1, "Failed to get input format"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxInputSize()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMaxInputSize:I

    return p0
.end method

.method private getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodecName:Ljava/lang/String;

    return-object p0
.end method

.method private getOutputFormat()Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mCurrentFormat:Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;-><init>(Landroid/media/MediaFormat;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "MediaCodecBridge"

    const-string v1, "Failed to get output format"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSoftwareCodec()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->isSoftwareCodec(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized notifyBuffersAvailable()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mNativeMediaCodecBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaCodecBridgeJni;->get()Lorg/chromium/media/MediaCodecBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/media/MediaCodecBridge;->mNativeMediaCodecBridge:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/media/MediaCodecBridge$Natives;->onBuffersAvailable(JLorg/chromium/media/MediaCodecBridge;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private obtainBlock(I)Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mObtainBlockNames:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mObtainBlockNames:[Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodecName:Ljava/lang/String;

    aput-object v3, v2, v0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :cond_0
    :goto_0
    const/16 v2, 0x10

    if-ge p1, v2, :cond_1

    move p1, v2

    :cond_1
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mObtainBlockNames:[Ljava/lang/String;

    invoke-static {p1, p0}, Lf1/y0;->g(I[Ljava/lang/String;)Landroid/media/MediaCodec$LinearBlock;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :try_start_1
    invoke-static {p0}, Lf1/y0;->p(Landroid/media/MediaCodec$LinearBlock;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_4

    :goto_2
    const-string v2, "MediaCodecBridge"

    const-string v3, "Failed to obtain LinearBlock"

    invoke-static {v2, v3, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {p1}, Lf1/y0;->s(Landroid/media/MediaCodec$LinearBlock;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    const-string p1, "Failed to recyle LinearBlock after map failure: "

    invoke-static {v2, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-object p0, v1

    goto :goto_4

    :cond_3
    move-object p0, v1

    move-object v1, p1

    :goto_4
    new-instance p1, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;

    invoke-direct {p1, v1, p0, v0}, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;-><init>(Landroid/media/MediaCodec$LinearBlock;Ljava/nio/ByteBuffer;I)V

    return-object p1
.end method

.method private declared-synchronized prepareAsyncApiForRestart()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingFormat:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingStart:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mCurrentFormat:Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    iget v1, p0, Lorg/chromium/media/MediaCodecBridge;->mSequenceCounter:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/chromium/media/MediaCodecBridge;->mSequenceCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private queueInputBlock(ILandroid/media/MediaCodec$LinearBlock;IIJI)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-static {p0, p1}, Lf1/y0;->h(Landroid/media/MediaCodec;I)Landroid/media/MediaCodec$QueueRequest;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Lf1/y0;->w(Landroid/media/MediaCodec$QueueRequest;Landroid/media/MediaCodec$LinearBlock;II)V

    invoke-static {p0, p5, p6}, Lf1/y0;->v(Landroid/media/MediaCodec$QueueRequest;J)V

    invoke-static {p0, p7}, Lf1/y0;->u(Landroid/media/MediaCodec$QueueRequest;I)V

    invoke-static {p0}, Lf1/y0;->t(Landroid/media/MediaCodec$QueueRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecBridge"

    const-string p2, "Failed to queue input block"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x17

    return p0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Failed to queue input buffer"

    const-string v1, "MediaCodecBridge"

    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x5

    return p0

    :goto_1
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->convertCryptoException(Landroid/media/MediaCodec$CryptoException;)I

    move-result p0

    return p0

    :goto_2
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result p0

    return p0
.end method

.method private queueSecureInputBlock(ILandroid/media/MediaCodec$LinearBlock;II[B[B[I[IIIIIJI)I
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    const-string v10, "Failed to queue secure input block: "

    const-string v11, "MediaCodecBridge"

    const/4 v12, 0x0

    move/from16 v1, p10

    :try_start_0
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaCodecBridge;->translateEncryptionSchemeValue(I)I

    move-result v7

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-direct {p0, v7, v8, v9}, Lorg/chromium/media/MediaCodecBridge;->validateCryptoInfo(III)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge;->generateCryptoInfo([B[B[I[IIIII)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move v2, p1

    invoke-static {v0, p1}, Lf1/y0;->h(Landroid/media/MediaCodec;I)Landroid/media/MediaCodec$QueueRequest;

    move-result-object v0

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, p2, v3, v4, v1}, Lf1/y0;->x(Landroid/media/MediaCodec$QueueRequest;Landroid/media/MediaCodec$LinearBlock;IILandroid/media/MediaCodec$CryptoInfo;)V

    move-wide/from16 v1, p13

    invoke-static {v0, v1, v2}, Lf1/y0;->v(Landroid/media/MediaCodec$QueueRequest;J)V

    move/from16 v1, p15

    invoke-static {v0, v1}, Lf1/y0;->u(Landroid/media/MediaCodec$QueueRequest;I)V

    invoke-static {v0}, Lf1/y0;->t(Landroid/media/MediaCodec$QueueRequest;)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :goto_0
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x17

    return v0

    :goto_1
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x18

    return v0

    :goto_2
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    return v0

    :goto_3
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v10, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result v0

    return v0

    :goto_4
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "Failed to queue secure input block: CryptoException.ERROR_NO_KEY"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    return v0

    :cond_1
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lorg/chromium/media/MediaCodecBridge;->convertCryptoException(Landroid/media/MediaCodec$CryptoException;)I

    move-result v0

    return v0
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIIIIJ)I
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    const-string v10, "Failed to queue secure input buffer."

    const-string v11, "MediaCodecBridge"

    const/4 v12, 0x0

    move/from16 v1, p8

    :try_start_0
    invoke-direct {p0, v1}, Lorg/chromium/media/MediaCodecBridge;->translateEncryptionSchemeValue(I)I

    move-result v7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {p0, v7, v8, v9}, Lorg/chromium/media/MediaCodecBridge;->validateCryptoInfo(III)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge;->generateCryptoInfo([B[B[I[IIIII)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move-object/from16 p3, v0

    move/from16 p4, p1

    move/from16 p5, p2

    move-object/from16 p6, v1

    move-wide/from16 p7, p11

    move/from16 p9, v2

    invoke-virtual/range {p3 .. p9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :goto_0
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x18

    return v0

    :goto_1
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    return v0

    :goto_2
    invoke-static {v11, v10, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Diagnostic: %s"

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result v0

    return v0

    :goto_3
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "Failed to queue secure input buffer: CryptoException.ERROR_NO_KEY"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to queue secure input buffer, CryptoException.ErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/media/MediaCodecBridge;->convertCryptoException(Landroid/media/MediaCodec$CryptoException;)I

    move-result v0

    return v0
.end method

.method private requestKeyFrameSoon()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MediaCodecBridge"

    const-string v1, "Failed to set MediaCodec parameters"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized setBuffersAvailableListener(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/chromium/media/MediaCodecBridge;->mNativeMediaCodecBridge:J

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->notifyBuffersAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setSurface(Landroid/view/Surface;)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecBridge"

    const-string v0, "Cannot set output surface"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setVideoBitrate(II)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "MediaCodecBridge"

    iget v1, p0, Lorg/chromium/media/MediaCodecBridge;->mBitrateAdjuster:I

    invoke-static {v1, p1, p2}, Lorg/chromium/media/BitrateAdjuster;->getTargetBitrate(III)I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "video-bitrate"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Failed to set MediaCodec parameters"

    invoke-static {v0, v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setVideoBitrate: input %dbps@%d, targetBps %d"

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private stop()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->prepareAsyncApiForRestart()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MediaCodecBridge"

    const-string v1, "Failed to stop MediaCodec"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static translateCryptoException(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown MediaDrm.ErrorCodes error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaCodecBridge"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x12

    return p0

    :pswitch_2
    const/16 p0, 0x2e

    return p0

    :pswitch_3
    const/16 p0, 0x2d

    return p0

    :pswitch_4
    const/16 p0, 0x2c

    return p0

    :pswitch_5
    const/16 p0, 0x2b

    return p0

    :pswitch_6
    const/16 p0, 0x2a

    return p0

    :pswitch_7
    const/16 p0, 0x29

    return p0

    :pswitch_8
    const/16 p0, 0x28

    return p0

    :pswitch_9
    const/16 p0, 0x27

    return p0

    :pswitch_a
    const/16 p0, 0x11

    return p0

    :pswitch_b
    const/16 p0, 0x26

    return p0

    :pswitch_c
    const/16 p0, 0x25

    return p0

    :pswitch_d
    const/16 p0, 0x24

    return p0

    :pswitch_e
    const/16 p0, 0x23

    return p0

    :pswitch_f
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x10

    return p0

    :pswitch_11
    const/16 p0, 0x21

    return p0

    :pswitch_12
    const/16 p0, 0x20

    return p0

    :pswitch_13
    const/16 p0, 0xf

    return p0

    :pswitch_14
    const/16 p0, 0xe

    return p0

    :pswitch_15
    const/16 p0, 0x1f

    return p0

    :pswitch_16
    const/16 p0, 0x1e

    return p0

    :pswitch_17
    const/16 p0, 0x1d

    return p0

    :pswitch_18
    const/16 p0, 0xd

    return p0

    :pswitch_19
    const/16 p0, 0xc

    return p0

    :pswitch_1a
    const/16 p0, 0xb

    return p0

    :pswitch_1b
    const/16 p0, 0xa

    return p0

    :pswitch_1c
    const/16 p0, 0x9

    return p0

    :pswitch_1d
    const/16 p0, 0x8

    return p0

    :pswitch_1e
    const/4 p0, 0x7

    return p0

    :pswitch_1f
    const/4 p0, 0x6

    return p0

    :pswitch_20
    const/4 p0, 0x4

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private translateEncryptionSchemeValue(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "MediaCodecBridge"

    const-string v0, "Unsupported cipher mode: %d"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, -0x1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private validateCryptoInfo(III)I
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x13

    return p0

    :cond_0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string p0, "MediaCodecBridge"

    const-string p1, "Pattern encryption only supported for \'cbcs\' scheme (CBC mode)."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x14

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;I)Z
    .locals 3

    const-string v0, "Cannot configure the audio codec"

    const-string v1, "MediaCodecBridge"

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_1
    const-string p1, "Cannot configure the audio codec: DRM error"

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_2
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "height"

    const-string v1, "width"

    const-string v2, "MediaCodec requires 16x16 alignment, which is not possible for: "

    and-int/lit8 v3, p4, 0x2

    const-string v4, "Cannot configure the video codec"

    const/4 v5, 0x0

    const-string v6, "max-input-size"

    const-string v7, "MediaCodecBridge"

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->removeKey(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception p0

    goto/16 :goto_6

    :catch_3
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    iget-object v8, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v8, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    if-eqz v3, :cond_1

    const v3, 0x7fffffff

    iput v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMaxInputSize:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMaxInputSize:I

    invoke-virtual {v8, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v8, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMaxInputSize:I

    :cond_2
    :goto_1
    and-int/lit8 v3, p4, 0x1

    const/4 v6, 0x1

    if-nez v3, :cond_3

    return v6

    :cond_3
    const-string v3, "stride"

    invoke-virtual {v8, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "slice-height"

    invoke-virtual {v8, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    return v6

    :cond_5
    :goto_2
    invoke-virtual {v8, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const/16 v9, 0x10

    invoke-static {v3, v9}, Lorg/chromium/media/MediaCodecBridge;->alignDown(II)I

    move-result v10

    invoke-virtual {v8, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v9}, Lorg/chromium/media/MediaCodecBridge;->alignDown(II)I

    move-result v9

    if-eqz v9, :cond_8

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    if-ne v10, v3, :cond_7

    if-ne v9, v8, :cond_7

    return v6

    :cond_7
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->reset()V

    invoke-virtual {p1, v1, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1, v0, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return v6

    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :goto_4
    invoke-static {v7, v4, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_5
    const-string p1, "Cannot configure the video codec: DRM error"

    invoke-static {v7, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_6
    invoke-static {v7, v4, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    const-string p1, "Cannot configure the video codec, wrong format or surface"

    invoke-static {v7, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return v5
.end method

.method public dequeueOutputBufferInternal(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p0

    return p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecBridge"

    const-string v0, "Failed to get output buffer"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized onError(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    iput p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->notifyBuffersAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onInputBufferAvailable(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingInputBuffers:Ljava/util/Queue;

    new-instance v1, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->notifyBuffersAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onOutputBufferAvailable(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    new-instance v10, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move v3, p1

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJII)V

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->notifyBuffersAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingOutputBuffers:Ljava/util/Queue;

    new-instance v10, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJII)V

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingFormat:Ljava/util/Queue;

    new-instance v1, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;-><init>(Landroid/media/MediaFormat;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge;->notifyBuffersAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onPendingStartComplete(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge;->mSequenceCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mNativeMediaCodecBridge:J

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "MediaCodecBridge"

    const-string v1, "Releasing: %s"

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodecName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    const-string p0, "MediaCodecBridge"

    const-string v0, "Codec released"

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "MediaCodecBridge"

    const-string v1, "Cannot release media codec"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    if-eqz v0, :cond_0

    const-string p1, "MediaCodecBridge"

    const-string p2, "Skipping releaseOutputBuffer() due to codec errors."

    invoke-static {p1, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    :try_start_1
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecBridge"

    const-string p2, "Failed to release output buffer"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public start()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mUseAsyncApi:Z

    if-eqz v1, :cond_2

    monitor-enter p0
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingError:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/chromium/media/MediaCodecBridge;->sCallbackHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    new-instance v2, Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;

    iget v3, p0, Lorg/chromium/media/MediaCodecBridge;->mSequenceCounter:I

    invoke-direct {v2, p0, v3}, Lorg/chromium/media/MediaCodecBridge$1CompletePendingStartTask;-><init>(Lorg/chromium/media/MediaCodecBridge;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_2
    const-string v2, "MediaCodecBridge"

    const-string v3, "Cannot start the media codec"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x5

    iput v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I

    return v0

    :goto_3
    const-string v2, "MediaCodecBridge"

    const-string v3, "Cannot start the media codec"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x18

    iput v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I

    return v0

    :goto_4
    const-string v2, "MediaCodecBridge"

    const-string v3, "Cannot start the media codec"

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lorg/chromium/media/MediaCodecBridge;->convertCodecException(Landroid/media/MediaCodec$CodecException;)I

    move-result v1

    iput v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingErrorCode:I

    return v0
.end method
