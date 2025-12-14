.class public final Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public apiVersion:I

.field public environment:I

.field public minGooglePlayServicesVersion:I

.field public securePaymentConfirmation:Lcom/sec/terrace/services/payments/mojom/TerraceSecurePaymentConfirmationRequest;

.field public stringifiedData:Ljava/lang/String;

.field public supportedMethod:Ljava/lang/String;

.field public supportedNetworks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedMethod:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->stringifiedData:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->environment:I

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceAndroidPayEnvironment;->validate(I)V

    iget v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->environment:I

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceAndroidPayEnvironment;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->environment:I

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->minGooglePlayServicesVersion:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->apiVersion:I

    const/16 v0, 0x28

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedNetworks:[I

    :goto_0
    iget-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedNetworks:[I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v0, v0, v2

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceBasicCardNetwork;->validate(I)V

    iget-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedNetworks:[I

    aget v3, v0, v2

    invoke-static {v3}, Lcom/sec/terrace/services/payments/mojom/TerraceBasicCardNetwork;->toKnownValue(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceSecurePaymentConfirmationRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerraceSecurePaymentConfirmationRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->securePaymentConfirmation:Lcom/sec/terrace/services/payments/mojom/TerraceSecurePaymentConfirmationRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedMethod:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->stringifiedData:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->environment:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->minGooglePlayServicesVersion:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->apiVersion:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedNetworks:[I

    const/16 v1, 0x28

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->securePaymentConfirmation:Lcom/sec/terrace/services/payments/mojom/TerraceSecurePaymentConfirmationRequest;

    const/16 v0, 0x30

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
