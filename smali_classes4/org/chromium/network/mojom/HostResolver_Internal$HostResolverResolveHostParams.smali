.class final Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/HostResolver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostResolverResolveHostParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public host:Lorg/chromium/network/mojom/HostResolverHost;

.field public networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

.field public optionalParameters:Lorg/chromium/network/mojom/ResolveHostParameters;

.field public responseClient:Lorg/chromium/network/mojom/ResolveHostClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/chromium/network/mojom/HostResolverHost;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/HostResolverHost;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->host:Lorg/chromium/network/mojom/HostResolverHost;

    const/16 v0, 0x18

    invoke-static {p0, v0}, Lorg/chromium/network/mojom/NetworkAnonymizationKey;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    const/16 v0, 0x28

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ResolveHostParameters;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->optionalParameters:Lorg/chromium/network/mojom/ResolveHostParameters;

    sget-object v0, Lorg/chromium/network/mojom/ResolveHostClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/ResolveHostClient;

    iput-object v0, v1, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->responseClient:Lorg/chromium/network/mojom/ResolveHostClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->host:Lorg/chromium/network/mojom/HostResolverHost;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->optionalParameters:Lorg/chromium/network/mojom/ResolveHostParameters;

    const/16 v1, 0x28

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->responseClient:Lorg/chromium/network/mojom/ResolveHostClient;

    const/16 v0, 0x30

    sget-object v1, Lorg/chromium/network/mojom/ResolveHostClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
