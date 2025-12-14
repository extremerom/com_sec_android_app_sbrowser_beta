.class public final Lorg/chromium/device/mojom/Geoposition;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public accuracy:D

.field public altitude:D

.field public altitudeAccuracy:D

.field public heading:D

.field public latitude:D

.field public longitude:D

.field public speed:D

.field public timestamp:Lorg/chromium/mojo_base/mojom/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/mojom/Geoposition;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/device/mojom/Geoposition;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->latitude:D

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->longitude:D

    const-wide v0, -0x3f3c780000000000L    # -10000.0

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->altitude:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->accuracy:D

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->altitudeAccuracy:D

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->heading:D

    iput-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->speed:D

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/Geoposition;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/device/mojom/Geoposition;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/device/mojom/Geoposition;

    invoke-direct {v1, v0}, Lorg/chromium/device/mojom/Geoposition;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->latitude:D

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->longitude:D

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->altitude:D

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->accuracy:D

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->altitudeAccuracy:D

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->heading:D

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/device/mojom/Geoposition;->speed:D

    const/16 v0, 0x40

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/device/mojom/Geoposition;->timestamp:Lorg/chromium/mojo_base/mojom/Time;
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
    .locals 3

    sget-object v0, Lorg/chromium/device/mojom/Geoposition;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->latitude:D

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->longitude:D

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->altitude:D

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->accuracy:D

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->altitudeAccuracy:D

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->heading:D

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v0, p0, Lorg/chromium/device/mojom/Geoposition;->speed:D

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object p0, p0, Lorg/chromium/device/mojom/Geoposition;->timestamp:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
