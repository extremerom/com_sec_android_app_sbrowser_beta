.class public final Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public getAssertionAuthenticatorResponse:Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

.field public methodName:Ljava/lang/String;

.field public payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

.field public shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

.field public shippingOption:Ljava/lang/String;

.field public stringifiedDetails:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->methodName:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->stringifiedDetails:Ljava/lang/String;

    const/16 v0, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingOption:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->getAssertionAuthenticatorResponse:Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
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

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->methodName:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->stringifiedDetails:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    const/16 v1, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingOption:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->getAssertionAuthenticatorResponse:Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
