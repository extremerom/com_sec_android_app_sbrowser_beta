.class public final Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bitsPerChannel:I

.field public colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

.field public edidGamma:F

.field public edidPrimaries:Lorg/chromium/skia/mojom/SkColorSpacePrimaries;

.field public hdrStaticMetadata:Lorg/chromium/gfx/mojom/HdrStaticMetadata;

.field public supportsColorTemperatureAdjustment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->edidPrimaries:Lorg/chromium/skia/mojom/SkColorSpacePrimaries;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->edidGamma:F

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->supportsColorTemperatureAdjustment:Z

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->hdrStaticMetadata:Lorg/chromium/gfx/mojom/HdrStaticMetadata;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget p0, p0, Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;->bitsPerChannel:I

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
