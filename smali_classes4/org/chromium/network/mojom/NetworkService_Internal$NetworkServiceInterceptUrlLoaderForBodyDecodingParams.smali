.class final Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkServiceInterceptUrlLoaderForBodyDecodingParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public contentEncodingTypes:[I

.field public destBody:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

.field public destUrlLoader:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoader;",
            ">;"
        }
    .end annotation
.end field

.field public destUrlLoaderClient:Lorg/chromium/network/mojom/UrlLoaderClient;

.field public sourceBody:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public sourceUrlLoader:Lorg/chromium/network/mojom/UrlLoader;

.field public sourceUrlLoaderClient:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderClient;",
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

    sput-object v0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    sget-object p1, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object p1, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceBody:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p1, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destBody:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->contentEncodingTypes:[I

    move v0, v3

    :goto_0
    iget-object v2, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->contentEncodingTypes:[I

    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget v2, v2, v0

    invoke-static {v2}, Lorg/chromium/network/mojom/SourceType;->validate(I)V

    iget-object v2, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->contentEncodingTypes:[I

    aget v4, v2, v0

    invoke-static {v4}, Lorg/chromium/network/mojom/SourceType;->toKnownValue(I)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceBody:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destBody:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    sget-object v0, Lorg/chromium/network/mojom/UrlLoader;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoader;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceUrlLoader:Lorg/chromium/network/mojom/UrlLoader;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceUrlLoaderClient:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x24

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destUrlLoader:Lorg/chromium/mojo/bindings/InterfaceRequest;

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoaderClient;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destUrlLoaderClient:Lorg/chromium/network/mojom/UrlLoaderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->contentEncodingTypes:[I

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceBody:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destBody:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceUrlLoader:Lorg/chromium/network/mojom/UrlLoader;

    const/16 v1, 0x18

    sget-object v2, Lorg/chromium/network/mojom/UrlLoader;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->sourceUrlLoaderClient:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destUrlLoader:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;->destUrlLoaderClient:Lorg/chromium/network/mojom/UrlLoaderClient;

    const/16 v0, 0x28

    sget-object v1, Lorg/chromium/network/mojom/UrlLoaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
