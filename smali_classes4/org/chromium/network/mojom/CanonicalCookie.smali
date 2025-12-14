.class public final Lorg/chromium/network/mojom/CanonicalCookie;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public creation:Lorg/chromium/mojo_base/mojom/Time;

.field public domain:Ljava/lang/String;

.field public expiry:Lorg/chromium/mojo_base/mojom/Time;

.field public httponly:Z

.field public lastAccess:Lorg/chromium/mojo_base/mojom/Time;

.field public lastUpdate:Lorg/chromium/mojo_base/mojom/Time;

.field public name:Ljava/lang/String;

.field public partitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

.field public path:Ljava/lang/String;

.field public priority:I

.field public secure:Z

.field public siteRestrictions:I

.field public sourcePort:I

.field public sourceScheme:I

.field public sourceType:I

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/CanonicalCookie;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/CanonicalCookie;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x68

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CanonicalCookie;->secure:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CanonicalCookie;->httponly:Z

    iput p1, p0, Lorg/chromium/network/mojom/CanonicalCookie;->siteRestrictions:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->priority:I

    iput p1, p0, Lorg/chromium/network/mojom/CanonicalCookie;->sourceScheme:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->sourcePort:I

    iput p1, p0, Lorg/chromium/network/mojom/CanonicalCookie;->sourceType:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CanonicalCookie;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/CanonicalCookie;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/CanonicalCookie;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/CanonicalCookie;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->name:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->value:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->domain:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->path:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->creation:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->expiry:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->lastAccess:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->lastUpdate:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/network/mojom/CanonicalCookie;->secure:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->httponly:Z

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->siteRestrictions:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSameSite;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->siteRestrictions:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSameSite;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->siteRestrictions:I

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->priority:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookiePriority;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->priority:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookiePriority;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->priority:I

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourceScheme:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSourceScheme;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourceScheme:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSourceScheme;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourceScheme:I

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/CookiePartitionKey;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookiePartitionKey;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->partitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourcePort:I

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourceType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSourceType;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourceType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CookieSourceType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/CanonicalCookie;->sourceType:I
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
    .locals 3

    sget-object v0, Lorg/chromium/network/mojom/CanonicalCookie;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->name:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->value:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->domain:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->path:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->creation:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->expiry:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->lastAccess:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->lastUpdate:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->secure:Z

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->httponly:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->siteRestrictions:I

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->priority:I

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->sourceScheme:I

    const/16 v1, 0x54

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->partitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->sourcePort:I

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/network/mojom/CanonicalCookie;->sourceType:I

    const/16 v0, 0x64

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
