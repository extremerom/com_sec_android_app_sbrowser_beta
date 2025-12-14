.class final Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ip_protection/mojom/CoreHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoreHostGetProxyConfigResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public geoHint:Lorg/chromium/ip_protection/mojom/GeoHint;

.field public proxyList:[Lorg/chromium/network/mojom/ProxyChain;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;

    invoke-direct {v2, v1}, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;-><init>(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_1

    iput-object v0, v2, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->proxyList:[Lorg/chromium/network/mojom/ProxyChain;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/network/mojom/ProxyChain;

    iput-object v5, v2, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->proxyList:[Lorg/chromium/network/mojom/ProxyChain;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    const/16 v7, 0x8

    invoke-static {v6, v7, v3, v4, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->proxyList:[Lorg/chromium/network/mojom/ProxyChain;

    invoke-static {v7}, Lorg/chromium/network/mojom/ProxyChain;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ProxyChain;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ip_protection/mojom/GeoHint;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ip_protection/mojom/GeoHint;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->geoHint:Lorg/chromium/ip_protection/mojom/GeoHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->proxyList:[Lorg/chromium/network/mojom/ProxyChain;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->proxyList:[Lorg/chromium/network/mojom/ProxyChain;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;->geoHint:Lorg/chromium/ip_protection/mojom/GeoHint;

    const/16 v0, 0x10

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
