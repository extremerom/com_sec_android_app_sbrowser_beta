.class public final Lorg/chromium/network/mojom/ResolveHostParameters;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/ResolveHostParameters$Source;,
        Lorg/chromium/network/mojom/ResolveHostParameters$CacheUsage;,
        Lorg/chromium/network/mojom/ResolveHostParameters$Purpose;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public cacheUsage:I

.field public controlHandle:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/ResolveHostHandle;",
            ">;"
        }
    .end annotation
.end field

.field public dnsQueryType:I

.field public includeCanonicalName:Z

.field public initialPriority:I

.field public isSpeculative:Z

.field public loopbackOnly:Z

.field public purpose:I

.field public secureDnsPolicy:I

.field public source:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/ResolveHostParameters;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/ResolveHostParameters;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->dnsQueryType:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->initialPriority:I

    iput p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->source:I

    iput p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->cacheUsage:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->includeCanonicalName:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->loopbackOnly:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->isSpeculative:Z

    iput p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->secureDnsPolicy:I

    iput p1, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->purpose:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ResolveHostParameters;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/ResolveHostParameters;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/ResolveHostParameters;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/ResolveHostParameters;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->dnsQueryType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/DnsQueryType;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->dnsQueryType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/DnsQueryType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->dnsQueryType:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->initialPriority:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestPriority;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->initialPriority:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestPriority;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->initialPriority:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->source:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters$Source;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->source:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters$Source;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->source:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->cacheUsage:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters$CacheUsage;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->cacheUsage:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters$CacheUsage;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->cacheUsage:I

    const/16 v0, 0x18

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->controlHandle:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/4 v0, 0x0

    const/16 v3, 0x1c

    invoke-virtual {p0, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->includeCanonicalName:Z

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->loopbackOnly:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->isSpeculative:Z

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->secureDnsPolicy:I

    invoke-static {v0}, Lorg/chromium/network/mojom/SecureDnsPolicy;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->secureDnsPolicy:I

    invoke-static {v0}, Lorg/chromium/network/mojom/SecureDnsPolicy;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->secureDnsPolicy:I

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->purpose:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters$Purpose;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->purpose:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveHostParameters$Purpose;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ResolveHostParameters;->purpose:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/network/mojom/ResolveHostParameters;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->dnsQueryType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->initialPriority:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->source:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->cacheUsage:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->controlHandle:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->includeCanonicalName:Z

    const/4 v1, 0x0

    const/16 v3, 0x1c

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->loopbackOnly:Z

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->isSpeculative:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->secureDnsPolicy:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/network/mojom/ResolveHostParameters;->purpose:I

    const/16 v0, 0x24

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
