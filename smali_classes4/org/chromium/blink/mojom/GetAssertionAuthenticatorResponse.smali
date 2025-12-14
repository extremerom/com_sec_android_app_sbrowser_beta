.class public final Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public authenticatorAttachment:I

.field public extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

.field public info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

.field public signature:[B

.field public userHandle:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/CommonCredentialInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CommonCredentialInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->authenticatorAttachment:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticatorAttachment;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->authenticatorAttachment:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticatorAttachment;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->authenticatorAttachment:I

    const/16 v0, 0x18

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->signature:[B

    const/16 v0, 0x20

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->userHandle:[B

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->authenticatorAttachment:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->signature:[B

    const/16 v1, 0x18

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->userHandle:[B

    const/16 v1, 0x20

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
