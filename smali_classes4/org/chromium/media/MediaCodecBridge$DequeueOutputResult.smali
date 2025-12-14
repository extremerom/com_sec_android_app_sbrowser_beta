.class Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DequeueOutputResult"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mIndex:I

.field private final mNumBytes:I

.field private final mOffset:I

.field private final mPresentationTimeMicroseconds:J

.field private final mStatus:I


# direct methods
.method private constructor <init>(IIIIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mStatus:I

    iput p2, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mIndex:I

    iput p3, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mFlags:I

    iput p4, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mOffset:I

    iput-wide p5, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mPresentationTimeMicroseconds:J

    iput p7, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mNumBytes:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIJII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJI)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;)I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->status()I

    move-result p0

    return p0
.end method

.method private flags()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mFlags:I

    return p0
.end method

.method private index()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mIndex:I

    return p0
.end method

.method private numBytes()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mNumBytes:I

    return p0
.end method

.method private offset()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mOffset:I

    return p0
.end method

.method private presentationTimeMicroseconds()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mPresentationTimeMicroseconds:J

    return-wide v0
.end method

.method private status()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mStatus:I

    return p0
.end method
