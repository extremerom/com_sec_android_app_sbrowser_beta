.class public final Lorg/chromium/network/mojom/NetworkServiceParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public defaultObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

.field public environment:[Lorg/chromium/network/mojom/EnvironmentVariable;

.field public firstPartySetsEnabled:Z

.field public initialConnectionSubtype:I

.field public initialConnectionType:I

.field public ipProtectionProxyBypassPolicy:I

.field public systemDnsResolver:Lorg/chromium/network/mojom/SystemDnsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/NetworkServiceParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/NetworkServiceParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionType:I

    iput p1, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionSubtype:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkServiceParams;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/NetworkServiceParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/NetworkServiceParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/NetworkServiceParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionType:I

    invoke-static {v2}, Lorg/chromium/network/mojom/ConnectionType;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionType:I

    invoke-static {v2}, Lorg/chromium/network/mojom/ConnectionType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionType:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionSubtype:I

    invoke-static {v2}, Lorg/chromium/network/mojom/ConnectionSubtype;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionSubtype:I

    invoke-static {v2}, Lorg/chromium/network/mojom/ConnectionSubtype;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionSubtype:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/network/mojom/EnvironmentVariable;

    iput-object v5, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->environment:[Lorg/chromium/network/mojom/EnvironmentVariable;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->environment:[Lorg/chromium/network/mojom/EnvironmentVariable;

    invoke-static {v6}, Lorg/chromium/network/mojom/EnvironmentVariable;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/EnvironmentVariable;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->defaultObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->firstPartySetsEnabled:Z

    sget-object v0, Lorg/chromium/network/mojom/SystemDnsResolver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x1

    const/16 v3, 0x24

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/SystemDnsResolver;

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->systemDnsResolver:Lorg/chromium/network/mojom/SystemDnsResolver;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->ipProtectionProxyBypassPolicy:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpProtectionProxyBypassPolicy;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->ipProtectionProxyBypassPolicy:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpProtectionProxyBypassPolicy;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/NetworkServiceParams;->ipProtectionProxyBypassPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/network/mojom/NetworkServiceParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->initialConnectionSubtype:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->environment:[Lorg/chromium/network/mojom/EnvironmentVariable;

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->environment:[Lorg/chromium/network/mojom/EnvironmentVariable;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->defaultObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    const/16 v1, 0x18

    sget-object v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->firstPartySetsEnabled:Z

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->systemDnsResolver:Lorg/chromium/network/mojom/SystemDnsResolver;

    const/16 v1, 0x24

    sget-object v2, Lorg/chromium/network/mojom/SystemDnsResolver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget p0, p0, Lorg/chromium/network/mojom/NetworkServiceParams;->ipProtectionProxyBypassPolicy:I

    const/16 v0, 0x2c

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
