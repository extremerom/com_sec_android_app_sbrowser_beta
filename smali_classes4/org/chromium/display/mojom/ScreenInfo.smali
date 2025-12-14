.class public final Lorg/chromium/display/mojom/ScreenInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public availableRect:Lorg/chromium/gfx/mojom/Rect;

.field public depth:I

.field public depthPerComponent:I

.field public deviceScaleFactor:F

.field public displayColorSpaces:Lorg/chromium/gfx/mojom/DisplayColorSpaces;

.field public displayId:J

.field public isExtended:Z

.field public isInternal:Z

.field public isMonochrome:Z

.field public isPrimary:Z

.field public label:Ljava/lang/String;

.field public orientationAngle:S

.field public orientationType:I

.field public rect:Lorg/chromium/gfx/mojom/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/display/mojom/ScreenInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/display/mojom/ScreenInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/chromium/display/mojom/ScreenInfo;->deviceScaleFactor:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/display/mojom/ScreenInfo;->isMonochrome:Z

    iput p1, p0, Lorg/chromium/display/mojom/ScreenInfo;->orientationType:I

    iput-boolean p1, p0, Lorg/chromium/display/mojom/ScreenInfo;->isPrimary:Z

    iput-boolean p1, p0, Lorg/chromium/display/mojom/ScreenInfo;->isInternal:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/display/mojom/ScreenInfo;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/display/mojom/ScreenInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/display/mojom/ScreenInfo;

    invoke-direct {v1, v0}, Lorg/chromium/display/mojom/ScreenInfo;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->deviceScaleFactor:F

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->depth:I

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/DisplayColorSpaces;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/DisplayColorSpaces;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->displayColorSpaces:Lorg/chromium/gfx/mojom/DisplayColorSpaces;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->depthPerComponent:I

    const/16 v0, 0x1c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/display/mojom/ScreenInfo;->isMonochrome:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/display/mojom/ScreenInfo;->isExtended:Z

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/display/mojom/ScreenInfo;->isPrimary:Z

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->isInternal:Z

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v0

    iput-short v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->orientationAngle:S

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->rect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->availableRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->orientationType:I

    invoke-static {v0}, Lorg/chromium/display/mojom/ScreenOrientation;->validate(I)V

    iget v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->orientationType:I

    invoke-static {v0}, Lorg/chromium/display/mojom/ScreenOrientation;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->orientationType:I

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/display/mojom/ScreenInfo;->label:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/display/mojom/ScreenInfo;->displayId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/display/mojom/ScreenInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->deviceScaleFactor:F

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->depth:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->displayColorSpaces:Lorg/chromium/gfx/mojom/DisplayColorSpaces;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->depthPerComponent:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->isMonochrome:Z

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->isExtended:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->isPrimary:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->isInternal:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-short v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->orientationAngle:S

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-object v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->rect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->availableRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->orientationType:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->label:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/ScreenInfo;->displayId:J

    const/16 p0, 0x40

    invoke-virtual {p1, v0, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    return-void
.end method
