.class public final Lorg/chromium/display/mojom/DisplaySnapshot;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public baseConnectorId:J

.field public colorInfo:Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;

.field public connectorIndex:S

.field public currentModeIndex:J

.field public displayId:J

.field public displayName:Ljava/lang/String;

.field public edid:[B

.field public edidDisplayId:J

.field public hasContentProtectionKey:Z

.field public hasCurrentMode:Z

.field public hasNativeMode:Z

.field public hasOverscan:Z

.field public isAspectPreservingScaling:Z

.field public maximumCursorSize:Lorg/chromium/gfx/mojom/Size;

.field public modes:[Lorg/chromium/display/mojom/DisplayMode;

.field public nativeModeIndex:J

.field public origin:Lorg/chromium/gfx/mojom/Point;

.field public panelOrientation:I

.field public pathTopology:[J

.field public physicalSize:Lorg/chromium/gfx/mojom/Size;

.field public portDisplayId:J

.field public privacyScreenState:I

.field public productCode:J

.field public sysPath:Lorg/chromium/mojo_base/mojom/FilePath;

.field public type:I

.field public variableRefreshRateState:I

.field public yearOfManufacture:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/display/mojom/DisplaySnapshot;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/display/mojom/DisplaySnapshot;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/display/mojom/DisplaySnapshot;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->displayId:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->portDisplayId:J

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->edidDisplayId:J

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-short v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->connectorIndex:S

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->isAspectPreservingScaling:Z

    const/16 v1, 0x22

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->hasOverscan:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->hasContentProtectionKey:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->hasCurrentMode:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->hasNativeMode:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->type:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->origin:Lorg/chromium/gfx/mojom/Point;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->physicalSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->baseConnectorId:J

    const/16 v4, 0x38

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->pathTopology:[J

    const/16 v1, 0x40

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([JIII)V

    iget v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->privacyScreenState:I

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->panelOrientation:I

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->colorInfo:Lorg/chromium/display/mojom/DisplaySnapshotColorInfo;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->displayName:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->sysPath:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->modes:[Lorg/chromium/display/mojom/DisplayMode;

    const/16 v1, 0x68

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v3

    :goto_0
    iget-object v5, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->modes:[Lorg/chromium/display/mojom/DisplayMode;

    array-length v6, v5

    if-ge v1, v6, :cond_1

    aget-object v5, v5, v1

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->edid:[B

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->currentModeIndex:J

    const/16 v2, 0x78

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->nativeModeIndex:J

    const/16 v2, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->productCode:J

    const/16 v2, 0x88

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->yearOfManufacture:I

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->variableRefreshRateState:I

    const/16 v1, 0x94

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/display/mojom/DisplaySnapshot;->maximumCursorSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x98

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
