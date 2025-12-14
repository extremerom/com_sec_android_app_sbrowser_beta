.class final Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WebSocketConnector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebSocketConnectorConnectParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

.field public requestedProtocols:[Ljava/lang/String;

.field public siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

.field public storageAccessApiStatus:I

.field public throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public url:Lorg/chromium/url/mojom/Url;

.field public userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->requestedProtocols:[Ljava/lang/String;

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    iget-object v6, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->requestedProtocols:[Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v5, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/SiteForCookies;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SiteForCookies;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    const/16 v0, 0x20

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->userAgent:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->storageAccessApiStatus:I

    invoke-static {v0}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->storageAccessApiStatus:I

    invoke-static {v0}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->storageAccessApiStatus:I

    sget-object v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->requestedProtocols:[Ljava/lang/String;

    const/16 v1, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_0
    iget-object v1, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->requestedProtocols:[Ljava/lang/String;

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
    iget-object v0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->userAgent:Ljava/lang/String;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->storageAccessApiStatus:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    const/16 v1, 0x2c

    sget-object v3, Lorg/chromium/network/mojom/WebSocketHandshakeClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v9, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/WebSocketConnector_Internal$WebSocketConnectorConnectParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
