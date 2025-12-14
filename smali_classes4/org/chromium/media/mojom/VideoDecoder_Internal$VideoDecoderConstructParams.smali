.class final Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoDecoder_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDecoderConstructParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public commandBufferId:Lorg/chromium/media/mojom/CommandBufferId;

.field public decoderBufferPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public mediaLog:Lorg/chromium/media/mojom/MediaLog;

.field public targetColorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

.field public videoFrameHandleReleaser:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoFrameHandleReleaser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    sget-object p1, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object p1, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->decoderBufferPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    sget-object v0, Lorg/chromium/media/mojom/MediaLog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/mojom/MediaLog;

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->mediaLog:Lorg/chromium/media/mojom/MediaLog;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->videoFrameHandleReleaser:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->decoderBufferPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v0, 0x20

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/CommandBufferId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/CommandBufferId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->commandBufferId:Lorg/chromium/media/mojom/CommandBufferId;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/ColorSpace;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/ColorSpace;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->targetColorSpace:Lorg/chromium/gfx/mojom/ColorSpace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->mediaLog:Lorg/chromium/media/mojom/MediaLog;

    const/16 v1, 0x10

    sget-object v3, Lorg/chromium/media/mojom/MediaLog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->videoFrameHandleReleaser:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->decoderBufferPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->commandBufferId:Lorg/chromium/media/mojom/CommandBufferId;

    const/16 v1, 0x20

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;->targetColorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
