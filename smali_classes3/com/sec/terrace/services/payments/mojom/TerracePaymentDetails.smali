.class public final Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

.field public error:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

.field public shippingAddressErrors:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

.field public shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

.field public stringifiedPaymentMethodErrors:Ljava/lang/String;

.field public total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->error:Ljava/lang/String;

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    invoke-direct {v2, v1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iput-object v8, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move v8, v6

    :goto_0
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    invoke-static {v9}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_3

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    iput-object v8, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    move v8, v6

    :goto_2
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_4

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    invoke-static {v9}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_5

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    iput-object v5, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    move v5, v6

    :goto_4
    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v7, :cond_6

    const/16 v7, 0x8

    invoke-static {v5, v7, v1, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    invoke-static {v7}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    move-result-object v7

    aput-object v7, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->error:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingAddressErrors:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->id:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->stringifiedPaymentMethodErrors:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/16 v3, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v5

    :goto_0
    iget-object v6, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    array-length v7, v6

    if-ge v3, v7, :cond_1

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    const/16 v3, 0x18

    if-nez v0, :cond_2

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v5

    :goto_2
    iget-object v6, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    array-length v7, v6

    if-ge v3, v7, :cond_3

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    const/16 v3, 0x20

    if-nez v0, :cond_4

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v5

    :goto_4
    iget-object v4, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v4, v4, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->error:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingAddressErrors:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->id:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->stringifiedPaymentMethodErrors:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
