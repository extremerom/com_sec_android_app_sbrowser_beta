.class final Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/Renderer_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RendererInitializeParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public mediaUrlParams:Lorg/chromium/media/mojom/MediaUrlParams;

.field public streams:[Lorg/chromium/media/mojom/DemuxerStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    sget-object v0, Lorg/chromium/media/mojom/DemuxerStream;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v2, v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/mojom/DemuxerStream;

    iput-object v0, v1, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->streams:[Lorg/chromium/media/mojom/DemuxerStream;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/MediaUrlParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/MediaUrlParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->mediaUrlParams:Lorg/chromium/media/mojom/MediaUrlParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    iget-object v2, p0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->streams:[Lorg/chromium/media/mojom/DemuxerStream;

    const/4 v5, -0x1

    sget-object v6, Lorg/chromium/media/mojom/DemuxerStream;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x10

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/mojo/bindings/Encoder;->encode([Lorg/chromium/mojo/bindings/Interface;IIILorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;->mediaUrlParams:Lorg/chromium/media/mojom/MediaUrlParams;

    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
