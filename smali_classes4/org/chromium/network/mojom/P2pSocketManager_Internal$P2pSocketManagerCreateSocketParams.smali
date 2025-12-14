.class final Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/P2pSocketManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P2pSocketManagerCreateSocketParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/network/mojom/P2pSocketClient;

.field public devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public localAddress:Lorg/chromium/network/mojom/IpEndPoint;

.field public portRange:Lorg/chromium/network/mojom/P2pPortRange;

.field public remoteAddress:Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;

.field public socket:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/P2pSocket;",
            ">;"
        }
    .end annotation
.end field

.field public trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->type:I

    invoke-static {v0}, Lorg/chromium/network/mojom/P2pSocketType;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->type:I

    invoke-static {v0}, Lorg/chromium/network/mojom/P2pSocketType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->type:I

    const/16 v0, 0xc

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/IpEndPoint;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IpEndPoint;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->localAddress:Lorg/chromium/network/mojom/IpEndPoint;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/P2pPortRange;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/P2pPortRange;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->portRange:Lorg/chromium/network/mojom/P2pPortRange;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->remoteAddress:Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    const/16 v0, 0x30

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    sget-object v0, Lorg/chromium/network/mojom/P2pSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/P2pSocketClient;

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->client:Lorg/chromium/network/mojom/P2pSocketClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->type:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->localAddress:Lorg/chromium/network/mojom/IpEndPoint;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->portRange:Lorg/chromium/network/mojom/P2pPortRange;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->remoteAddress:Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x30

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->client:Lorg/chromium/network/mojom/P2pSocketClient;

    const/16 v0, 0x38

    sget-object v1, Lorg/chromium/network/mojom/P2pSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
