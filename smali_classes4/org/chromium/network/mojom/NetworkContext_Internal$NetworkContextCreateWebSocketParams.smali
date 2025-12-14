.class final Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContext_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkContextCreateWebSocketParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

.field public authHandler:Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;

.field public handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

.field public headerClient:Lorg/chromium/network/mojom/TrustedHeaderClient;

.field public isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

.field public options:I

.field public origin:Lorg/chromium/url/internal/mojom/Origin;

.field public processId:I

.field public requestedProtocols:[Ljava/lang/String;

.field public siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

.field public storageAccessApiStatus:I

.field public throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

.field public url:Lorg/chromium/url/mojom/Url;

.field public urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->requestedProtocols:[Ljava/lang/String;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    iget-object v7, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->requestedProtocols:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/SiteForCookies;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SiteForCookies;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->storageAccessApiStatus:I

    invoke-static {v3}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->storageAccessApiStatus:I

    invoke-static {v3}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->storageAccessApiStatus:I

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->processId:I

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/IsolationInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IsolationInfo;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/network/mojom/HttpHeader;

    iput-object v5, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

    move v5, v2

    :goto_1
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

    invoke-static {v6}, Lorg/chromium/network/mojom/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpHeader;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->options:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    sget-object v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x1

    const/16 v3, 0x58

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    sget-object v0, Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x60

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->authHandler:Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;

    sget-object v0, Lorg/chromium/network/mojom/TrustedHeaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x68

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/TrustedHeaderClient;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->headerClient:Lorg/chromium/network/mojom/TrustedHeaderClient;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->requestedProtocols:[Ljava/lang/String;

    const/4 v10, -0x1

    const/16 v1, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_0
    iget-object v1, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->requestedProtocols:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_1

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->storageAccessApiStatus:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->processId:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

    const/16 v1, 0x30

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_2
    iget-object v2, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v0, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->options:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    const/16 v1, 0x50

    sget-object v2, Lorg/chromium/network/mojom/WebSocketHandshakeClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v9, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    const/16 v1, 0x58

    sget-object v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->authHandler:Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;

    const/16 v1, 0x60

    sget-object v2, Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->headerClient:Lorg/chromium/network/mojom/TrustedHeaderClient;

    const/16 v1, 0x68

    sget-object v2, Lorg/chromium/network/mojom/TrustedHeaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x70

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
