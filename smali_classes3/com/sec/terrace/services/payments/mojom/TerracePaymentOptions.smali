.class public final Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public requestPayerEmail:Z

.field public requestPayerName:Z

.field public requestPayerPhone:Z

.field public requestShipping:Z

.field public shippingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;-><init>(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingType;->validate(I)V

    iget v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I

    const/16 v0, 0xc

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
