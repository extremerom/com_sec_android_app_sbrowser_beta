.class Lorg/chromium/media/MediaCodecEncoder;
.super Lorg/chromium/media/MediaCodecBridge;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mConfigData:Ljava/nio/ByteBuffer;

.field private mOutputBuffers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;IZ)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecEncoder;->mOutputBuffers:Landroid/util/SparseArray;

    return-void
.end method

.method private getMediaCodecOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/media/MediaCodecBridge;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Got null output buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dequeueOutputBufferInternal(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 7

    const-string v0, "MediaCodecEncoder"

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const-string v3, "Config frame generated. Offset: %d, size: %d"

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaCodecEncoder;->getMediaCodecOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v2

    :goto_0
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string v4, "spsData: %s"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    move v1, p2

    :cond_2
    if-ltz v1, :cond_6

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaCodecEncoder;->getMediaCodecOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p3, v3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget p3, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr p3, v3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v3, :cond_4

    const-string p3, "Key frame generated"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, p3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v3, :cond_5

    iget-object p3, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_5

    const-string v3, "Appending config frame of size %d to output buffer with size %d"

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p3, v4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, v3, p3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p3, v3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iget-object v3, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, p0, Lorg/chromium/media/MediaCodecEncoder;->mConfigData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    add-int/2addr p2, v2

    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object p0, p0, Lorg/chromium/media/MediaCodecEncoder;->mOutputBuffers:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lorg/chromium/media/MediaCodecEncoder;->mOutputBuffers:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string p1, "Failed to dequeue output buffer"

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return v1
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecEncoder;->mOutputBuffers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p0, p0, Lorg/chromium/media/MediaCodecEncoder;->mOutputBuffers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecEncoder"

    const-string p2, "Failed to release output buffer"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
