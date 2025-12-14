.class public final Lorg/chromium/device/mojom/SmartCardReaderStateFlags;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public changed:Z

.field public empty:Z

.field public exclusive:Z

.field public ignore:Z

.field public inuse:Z

.field public mute:Z

.field public present:Z

.field public unavailable:Z

.field public unaware:Z

.field public unknown:Z

.field public unpowered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/SmartCardReaderStateFlags;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;

    invoke-direct {v1, v0}, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;-><init>(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unaware:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->ignore:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->changed:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unknown:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unavailable:Z

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->empty:Z

    const/4 v5, 0x6

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->present:Z

    const/4 v5, 0x7

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->exclusive:Z

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->inuse:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->mute:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unpowered:Z
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
    .locals 6

    sget-object v0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unaware:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->ignore:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->changed:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unknown:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unavailable:Z

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->empty:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->present:Z

    const/4 v5, 0x6

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->exclusive:Z

    const/4 v5, 0x7

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->inuse:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->mute:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/device/mojom/SmartCardReaderStateFlags;->unpowered:Z

    invoke-virtual {p1, p0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
