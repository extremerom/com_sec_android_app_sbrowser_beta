.class public final Lorg/chromium/payments/mojom/PaymentRequestEventData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public instrumentKey:Ljava/lang/String;

.field public methodData:[Lorg/chromium/payments/mojom/PaymentMethodData;

.field public modifiers:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

.field public paymentHandlerHost:Lorg/chromium/payments/mojom/PaymentHandlerHost;

.field public paymentOptions:Lorg/chromium/payments/mojom/PaymentOptions;

.field public paymentRequestId:Ljava/lang/String;

.field public paymentRequestOrigin:Lorg/chromium/url/mojom/Url;

.field public shippingOptions:[Lorg/chromium/payments/mojom/PaymentShippingOption;

.field public topOrigin:Lorg/chromium/url/mojom/Url;

.field public total:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentRequestEventData;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/payments/mojom/PaymentRequestEventData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;

    invoke-direct {v2, v1}, Lorg/chromium/payments/mojom/PaymentRequestEventData;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->topOrigin:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentRequestOrigin:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentRequestId:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/payments/mojom/PaymentMethodData;

    iput-object v7, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->methodData:[Lorg/chromium/payments/mojom/PaymentMethodData;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->methodData:[Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-static {v8}, Lorg/chromium/payments/mojom/PaymentMethodData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentMethodData;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->total:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    iput-object v7, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->modifiers:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    move v7, v3

    :goto_1
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->modifiers:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    invoke-static {v8}, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x38

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->instrumentKey:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/payments/mojom/PaymentOptions;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentOptions;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentOptions:Lorg/chromium/payments/mojom/PaymentOptions;

    const/16 v4, 0x48

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_3

    iput-object v0, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->shippingOptions:[Lorg/chromium/payments/mojom/PaymentShippingOption;

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/payments/mojom/PaymentShippingOption;

    iput-object v5, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->shippingOptions:[Lorg/chromium/payments/mojom/PaymentShippingOption;

    move v5, v3

    :goto_2
    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v7, :cond_4

    const/16 v7, 0x8

    invoke-static {v5, v7, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->shippingOptions:[Lorg/chromium/payments/mojom/PaymentShippingOption;

    invoke-static {v7}, Lorg/chromium/payments/mojom/PaymentShippingOption;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/payments/mojom/PaymentShippingOption;

    move-result-object v7

    aput-object v7, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sget-object v0, Lorg/chromium/payments/mojom/PaymentHandlerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v1, 0x50

    invoke-virtual {p0, v1, v6, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/payments/mojom/PaymentHandlerHost;

    iput-object v0, v2, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentHandlerHost:Lorg/chromium/payments/mojom/PaymentHandlerHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->topOrigin:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentRequestOrigin:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentRequestId:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->methodData:[Lorg/chromium/payments/mojom/PaymentMethodData;

    const/16 v3, 0x20

    const/4 v4, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->methodData:[Lorg/chromium/payments/mojom/PaymentMethodData;

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->total:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->modifiers:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    const/16 v3, 0x30

    if-nez v0, :cond_2

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_2
    iget-object v5, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->modifiers:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->instrumentKey:Ljava/lang/String;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentOptions:Lorg/chromium/payments/mojom/PaymentOptions;

    const/16 v3, 0x40

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->shippingOptions:[Lorg/chromium/payments/mojom/PaymentShippingOption;

    const/16 v3, 0x48

    if-nez v0, :cond_4

    invoke-virtual {p1, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_4
    iget-object v4, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->shippingOptions:[Lorg/chromium/payments/mojom/PaymentShippingOption;

    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v4, v4, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentRequestEventData;->paymentHandlerHost:Lorg/chromium/payments/mojom/PaymentHandlerHost;

    const/16 v0, 0x50

    sget-object v1, Lorg/chromium/payments/mojom/PaymentHandlerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
