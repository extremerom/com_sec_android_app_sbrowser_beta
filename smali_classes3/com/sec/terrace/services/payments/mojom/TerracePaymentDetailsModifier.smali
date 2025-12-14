.class public final Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

.field public methodData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

.field public total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;-><init>(I)V

    const/4 v0, 0x1

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/16 v0, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iput-object v5, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v2, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    invoke-static {v6}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->methodData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
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

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/16 v1, 0x10

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v4, v4, v1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->methodData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    const/16 v0, 0x18

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
