.class public final Lorg/chromium/media/mojom/VideoFrameMetadata;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowOverlay:Z

.field public backgroundBlur:I

.field public captureBeginTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public captureCounter:I

.field public captureEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public captureUpdateRect:Lorg/chromium/gfx/mojom/Rect;

.field public copyRequired:Z

.field public decodeBeginTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public decodeEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public deviceScaleFactor:D

.field public endOfStream:Z

.field public frameDuration:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public frameRate:D

.field public frameSequence:Ljava/lang/Long;

.field public hasCaptureCounter:Z

.field public hasDeviceScaleFactor:Z

.field public hasFrameRate:Z

.field public hasPageScaleFactor:Z

.field public hasRootScrollOffsetX:Z

.field public hasRootScrollOffsetY:Z

.field public hasRtpTimestamp:Z

.field public hasTopControlsVisibleHeight:Z

.field public hwProtected:Z

.field public inSurfaceView:Z

.field public interactiveContent:Z

.field public isWebgpuCompatible:Z

.field public needsDetiling:Z

.field public pageScaleFactor:D

.field public powerEfficient:Z

.field public processingTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public protectedVideo:Z

.field public readLockFencesEnabled:Z

.field public receiveTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public referenceTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public regionCaptureRect:Lorg/chromium/gfx/mojom/Rect;

.field public rootScrollOffsetX:D

.field public rootScrollOffsetY:D

.field public rtpTimestamp:D

.field public sourceId:Ljava/lang/Long;

.field public sourceSize:Lorg/chromium/gfx/mojom/Size;

.field public subCaptureTargetVersion:I

.field public topControlsVisibleHeight:D

.field public trackingToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public transformation:Lorg/chromium/media/mojom/VideoTransformation;

.field public wallclockFrameDuration:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public wantsPromotionHint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoFrameMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/VideoFrameMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xd0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoFrameMetadata;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/media/mojom/VideoFrameMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/media/mojom/VideoFrameMetadata;

    invoke-direct {v2, v1}, Lorg/chromium/media/mojom/VideoFrameMetadata;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->allowOverlay:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasCaptureCounter:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->copyRequired:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->endOfStream:Z

    const/4 v7, 0x4

    invoke-virtual {p0, v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasFrameRate:Z

    const/4 v8, 0x5

    invoke-virtual {p0, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->interactiveContent:Z

    const/4 v9, 0x6

    invoke-virtual {p0, v3, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->readLockFencesEnabled:Z

    const/4 v10, 0x7

    invoke-virtual {p0, v3, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->inSurfaceView:Z

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->wantsPromotionHint:Z

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->protectedVideo:Z

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hwProtected:Z

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->needsDetiling:Z

    invoke-virtual {p0, v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->isWebgpuCompatible:Z

    invoke-virtual {p0, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->powerEfficient:Z

    invoke-virtual {p0, v3, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasDeviceScaleFactor:Z

    invoke-virtual {p0, v3, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasPageScaleFactor:Z

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasRootScrollOffsetX:Z

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasRootScrollOffsetY:Z

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasTopControlsVisibleHeight:Z

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasRtpTimestamp:Z

    invoke-virtual {p0, v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Long;

    const/16 v5, 0xc0

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameSequence:Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameSequence:Ljava/lang/Long;

    :goto_0
    invoke-virtual {p0, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/Long;

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->sourceId:Ljava/lang/Long;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->sourceId:Ljava/lang/Long;

    :goto_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureCounter:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureBeginTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureUpdateRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->sourceSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->regionCaptureRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->subCaptureTargetVersion:I

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->backgroundBlur:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EffectState;->validate(I)V

    iget v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->backgroundBlur:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EffectState;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->backgroundBlur:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameDuration:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameRate:D

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->referenceTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoTransformation;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoTransformation;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->transformation:Lorg/chromium/media/mojom/VideoTransformation;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->trackingToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->deviceScaleFactor:D

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->pageScaleFactor:D

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->rootScrollOffsetX:D

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->rootScrollOffsetY:D

    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->topControlsVisibleHeight:D

    const/16 v0, 0x90

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->decodeBeginTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0x98

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->decodeEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->processingTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->rtpTimestamp:D

    const/16 v0, 0xb0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->receiveTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0xb8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoFrameMetadata;->wallclockFrameDuration:Lorg/chromium/mojo_base/mojom/TimeDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/media/mojom/VideoFrameMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->allowOverlay:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasCaptureCounter:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->copyRequired:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->endOfStream:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasFrameRate:Z

    const/4 v6, 0x4

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->interactiveContent:Z

    const/4 v7, 0x5

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->readLockFencesEnabled:Z

    const/4 v8, 0x6

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->inSurfaceView:Z

    const/4 v9, 0x7

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->wantsPromotionHint:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->protectedVideo:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hwProtected:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->needsDetiling:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->isWebgpuCompatible:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->powerEfficient:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasDeviceScaleFactor:Z

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasPageScaleFactor:Z

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasRootScrollOffsetX:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasRootScrollOffsetY:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasTopControlsVisibleHeight:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->hasRtpTimestamp:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameSequence:Ljava/lang/Long;

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-wide/16 v8, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    invoke-virtual {p1, v4, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0xc0

    invoke-virtual {p1, v10, v11, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->sourceId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_3
    invoke-virtual {p1, v2, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0xc8

    invoke-virtual {p1, v8, v9, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureCounter:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureBeginTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->captureUpdateRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->sourceSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->regionCaptureRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->subCaptureTargetVersion:I

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->backgroundBlur:I

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameDuration:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->frameRate:D

    const/16 v2, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->referenceTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->transformation:Lorg/chromium/media/mojom/VideoTransformation;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->trackingToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->deviceScaleFactor:D

    const/16 v2, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->pageScaleFactor:D

    const/16 v2, 0x70

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->rootScrollOffsetX:D

    const/16 v2, 0x78

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->rootScrollOffsetY:D

    const/16 v2, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->topControlsVisibleHeight:D

    const/16 v2, 0x88

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->decodeBeginTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->decodeEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x98

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->processingTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0xa0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->rtpTimestamp:D

    const/16 v2, 0xa8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->receiveTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0xb0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/media/mojom/VideoFrameMetadata;->wallclockFrameDuration:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0xb8

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
