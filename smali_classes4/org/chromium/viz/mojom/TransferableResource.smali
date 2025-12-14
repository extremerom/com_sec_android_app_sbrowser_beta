.class public final Lorg/chromium/viz/mojom/TransferableResource;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

.field public format:Lorg/chromium/viz/mojom/SharedImageFormat;

.field public hdrMetadata:Lorg/chromium/gfx/mojom/HdrMetadata;

.field public id:Lorg/chromium/viz/mojom/ResourceId;

.field public isBackedBySurfaceView:Z

.field public isLowLatencyRendering:Z

.field public isOverlayCandidate:Z

.field public isSoftware:Z

.field public memoryBufferId:Lorg/chromium/gpu/mojom/Mailbox;

.field public needsDetiling:Z

.field public origin:I

.field public size:Lorg/chromium/gfx/mojom/Size;

.field public syncToken:Lorg/chromium/gpu/mojom/SyncToken;

.field public synchronizationType:I

.field public textureTarget:I

.field public wantsPromotionHint:Z

.field public ycbcrInfo:Lorg/chromium/gpu/mojom/VulkanYCbCrInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x60

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/TransferableResource;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/TransferableResource;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/TransferableResource;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/TransferableResource;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/TransferableResource;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/TransferableResource;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/ResourceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ResourceId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->id:Lorg/chromium/viz/mojom/ResourceId;

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/chromium/viz/mojom/SharedImageFormat;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/viz/mojom/SharedImageFormat;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->format:Lorg/chromium/viz/mojom/SharedImageFormat;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->size:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gpu/mojom/Mailbox;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/Mailbox;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->memoryBufferId:Lorg/chromium/gpu/mojom/Mailbox;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gpu/mojom/SyncToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/SyncToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->syncToken:Lorg/chromium/gpu/mojom/SyncToken;

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->textureTarget:I

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->synchronizationType:I

    invoke-static {v0}, Lorg/chromium/viz/mojom/SynchronizationType;->validate(I)V

    iget v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->synchronizationType:I

    invoke-static {v0}, Lorg/chromium/viz/mojom/SynchronizationType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->synchronizationType:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/viz/mojom/TransferableResource;->isSoftware:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/TransferableResource;->isOverlayCandidate:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/TransferableResource;->isLowLatencyRendering:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/TransferableResource;->isBackedBySurfaceView:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/TransferableResource;->wantsPromotionHint:Z

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->needsDetiling:Z

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->origin:I

    invoke-static {v0}, Lorg/chromium/skia/mojom/SurfaceOrigin;->validate(I)V

    iget v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->origin:I

    invoke-static {v0}, Lorg/chromium/skia/mojom/SurfaceOrigin;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->origin:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/ColorSpace;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/ColorSpace;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/HdrMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/HdrMetadata;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->hdrMetadata:Lorg/chromium/gfx/mojom/HdrMetadata;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gpu/mojom/VulkanYCbCrInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VulkanYCbCrInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/TransferableResource;->ycbcrInfo:Lorg/chromium/gpu/mojom/VulkanYCbCrInfo;
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
    .locals 5

    sget-object v0, Lorg/chromium/viz/mojom/TransferableResource;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->id:Lorg/chromium/viz/mojom/ResourceId;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->format:Lorg/chromium/viz/mojom/SharedImageFormat;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->size:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->memoryBufferId:Lorg/chromium/gpu/mojom/Mailbox;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->syncToken:Lorg/chromium/gpu/mojom/SyncToken;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->textureTarget:I

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->synchronizationType:I

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->isSoftware:Z

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->isOverlayCandidate:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->isLowLatencyRendering:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->isBackedBySurfaceView:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->wantsPromotionHint:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->needsDetiling:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->origin:I

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/TransferableResource;->hdrMetadata:Lorg/chromium/gfx/mojom/HdrMetadata;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/viz/mojom/TransferableResource;->ycbcrInfo:Lorg/chromium/gpu/mojom/VulkanYCbCrInfo;

    const/16 v0, 0x58

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
