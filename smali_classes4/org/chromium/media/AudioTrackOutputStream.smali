.class Lorg/chromium/media/AudioTrackOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/AudioTrackOutputStream$Callback;,
        Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;,
        Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;,
        Lorg/chromium/media/AudioTrackOutputStream$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSizeInBytes:I

.field private mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

.field private mLastPlaybackHeadPosition:I

.field private mLeftSize:I

.field private mNativeAudioTrackOutputStream:J

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private mTotalPlayedFrames:J

.field private mTotalReadFrames:J

.field private mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

.field private mWriteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Lorg/chromium/media/AudioTrackOutputStream$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    return-void

    :cond_0
    new-instance p1, Lorg/chromium/media/AudioTrackOutputStream$1;

    invoke-direct {p1, p0}, Lorg/chromium/media/AudioTrackOutputStream$1;-><init>(Lorg/chromium/media/AudioTrackOutputStream;)V

    iput-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/AudioTrackOutputStream;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mNativeAudioTrackOutputStream:J

    return-wide v0
.end method

.method private allocateAlignedByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 6

    add-int/lit8 v0, p2, -0x1

    add-int v1, p1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    invoke-interface {p0, v1}, Lorg/chromium/media/AudioTrackOutputStream$Callback;->getAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    and-long/2addr v2, v4

    long-to-int p0, v2

    sub-int/2addr p2, p0

    and-int p0, p2, v0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p0, p1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/AudioTrackOutputStream;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/AudioTrackOutputStream;->readMoreData()V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/media/AudioTrackOutputStream;)I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/AudioTrackOutputStream;->writeData()I

    move-result p0

    return p0
.end method

.method private static create()Lorg/chromium/media/AudioTrackOutputStream;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/AudioTrackOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/media/AudioTrackOutputStream;-><init>(Lorg/chromium/media/AudioTrackOutputStream$Callback;)V

    return-object v0
.end method

.method public static create(Lorg/chromium/media/AudioTrackOutputStream$Callback;)Lorg/chromium/media/AudioTrackOutputStream;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/media/AudioTrackOutputStream;

    invoke-direct {v0, p0}, Lorg/chromium/media/AudioTrackOutputStream;-><init>(Lorg/chromium/media/AudioTrackOutputStream$Callback;)V

    return-object v0
.end method

.method private getChannelConfig(I)I
    .locals 2

    const/4 p0, 0x4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x18fc

    return p0

    :cond_1
    const/16 p0, 0xfc

    return p0

    :cond_2
    const/16 p0, 0xcc

    return p0

    :cond_3
    const/16 p0, 0xc

    :cond_4
    return p0
.end method

.method private readMoreData()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget-wide v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalPlayedFrames:J

    iget v3, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLastPlaybackHeadPosition:I

    sub-int v3, v0, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalPlayedFrames:J

    iput v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLastPlaybackHeadPosition:I

    iget-wide v3, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalReadFrames:J

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2, v3, v4}, Lorg/chromium/media/AudioTrackOutputStream$Callback;->onMoreData(Ljava/nio/ByteBuffer;J)Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->getNumBytes()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalReadFrames:J

    invoke-virtual {v1}, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->getNumFrames()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalReadFrames:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->getNumBytes()I

    move-result v0

    iput v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLeftSize:I

    :cond_2
    :goto_0
    return-void
.end method

.method private writeData()I
    .locals 4

    iget v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLeftSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    iget-object v2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLeftSize:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack.write() failed. Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioTrackOutput"

    invoke-static {v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    invoke-interface {p0}, Lorg/chromium/media/AudioTrackOutputStream$Callback;->onError()V

    return v0

    :cond_1
    iget v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLeftSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLeftSize:I

    return v1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AudioTrackOutput"

    const-string v2, "AudioTrackOutputStream.close()"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public createAudioBufferInfo(II)Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p0, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;-><init>(II)V

    return-object p0
.end method

.method public open(III)Z
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "AudioTrackOutput"

    invoke-direct {p0, p1}, Lorg/chromium/media/AudioTrackOutputStream;->getChannelConfig(I)I

    move-result v4

    iget-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    invoke-interface {p1, p2, v4, p3}, Lorg/chromium/media/AudioTrackOutputStream$Callback;->getMinBufferSize(III)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mBufferSizeInBytes:I

    const/4 p1, 0x0

    :try_start_0
    const-string v1, "Create AudioTrack with sample rate:%d, channel:%d, format:%d "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mCallback:Lorg/chromium/media/AudioTrackOutputStream$Callback;

    iget v6, p0, Lorg/chromium/media/AudioTrackOutputStream;->mBufferSizeInBytes:I

    const/4 v7, 0x1

    const/4 v2, 0x3

    move v3, p2

    move v5, p3

    invoke-interface/range {v1 .. v7}, Lorg/chromium/media/AudioTrackOutputStream$Callback;->createAudioTrack(IIIIII)Landroid/media/AudioTrack;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Cannot create AudioTrack"

    invoke-static {v0, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    return p1

    :cond_0
    iput p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLastPlaybackHeadPosition:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalPlayedFrames:J

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p2, "Exception creating AudioTrack for playback: "

    invoke-static {v0, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public setVolume(D)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    iget-object p0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioTrack;

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method public start(J)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AudioTrackOutput"

    const-string v2, "AudioTrackOutputStream.start()"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mNativeAudioTrackOutputStream:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalReadFrames:J

    iget p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mBufferSizeInBytes:I

    const/16 p2, 0x10

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/AudioTrackOutputStream;->allocateAlignedByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    new-instance p1, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    invoke-direct {p1, p0}, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;-><init>(Lorg/chromium/media/AudioTrackOutputStream;)V

    iput-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Exception while waiting for AudioTrack worker thread finished: "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioTrackOutput"

    const-string v4, "AudioTrackOutputStream.stop()"

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;->finish()V

    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    iget-object v2, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    invoke-static {v3, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {v3, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mWorkerThread:Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iput v1, p0, Lorg/chromium/media/AudioTrackOutputStream;->mLastPlaybackHeadPosition:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mTotalPlayedFrames:J

    iput-wide v0, p0, Lorg/chromium/media/AudioTrackOutputStream;->mNativeAudioTrackOutputStream:J

    return-void
.end method
