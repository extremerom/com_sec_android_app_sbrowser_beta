.class Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DequeueInputResult"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mStatus:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mStatus:I

    iput p2, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mIndex:I

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(II)V

    return-void
.end method

.method private index()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mIndex:I

    return p0
.end method

.method private status()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;->mStatus:I

    return p0
.end method
