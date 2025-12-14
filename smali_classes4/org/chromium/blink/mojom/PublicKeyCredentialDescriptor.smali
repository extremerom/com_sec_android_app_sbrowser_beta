.class public final Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public id:[B

.field public transports:[I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    const/16 v0, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    :goto_0
    iget-object v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    array-length v2, v0

    if-ge v3, v2, :cond_1

    aget v0, v0, v3

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticatorTransport;->validate(I)V

    iget-object v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    aget v2, v0, v3

    invoke-static {v2}, Lorg/chromium/blink/mojom/AuthenticatorTransport;->toKnownValue(I)I

    move-result v2

    aput v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    const/16 v0, 0x18

    invoke-virtual {p1, p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
