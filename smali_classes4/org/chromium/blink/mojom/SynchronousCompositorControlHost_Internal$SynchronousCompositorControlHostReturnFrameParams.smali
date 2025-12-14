.class final Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynchronousCompositorControlHostReturnFrameParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public frame:Lorg/chromium/viz/mojom/CompositorFrame;

.field public hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

.field public layerTreeFrameSinkId:I

.field public localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

.field public metadataVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->layerTreeFrameSinkId:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->metadataVersion:I

    const/16 v0, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/LocalSurfaceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/LocalSurfaceId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/CompositorFrame;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorFrame;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/HitTestRegionList;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/HitTestRegionList;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->layerTreeFrameSinkId:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->metadataVersion:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/SynchronousCompositorControlHost_Internal$SynchronousCompositorControlHostReturnFrameParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
