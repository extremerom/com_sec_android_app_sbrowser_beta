.class public Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toConvert(Lorg/chromium/payments/mojom/PaymentAddress;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lorg/chromium/payments/mojom/PaymentDetails;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lorg/chromium/payments/mojom/PaymentMethodData;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lorg/chromium/payments/mojom/PaymentOptions;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lorg/chromium/payments/mojom/PaymentValidationErrors;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)Lorg/chromium/payments/mojom/PayerDetail;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/payments/mojom/PayerDetail;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/payments/mojom/PayerDetail;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;)Lorg/chromium/payments/mojom/PaymentAddress;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/payments/mojom/PaymentAddress;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/payments/mojom/PaymentAddress;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Lorg/chromium/payments/mojom/PaymentDetails;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/payments/mojom/PaymentDetails;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/payments/mojom/PaymentDetails;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Lorg/chromium/payments/mojom/PaymentMethodData;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/payments/mojom/PaymentMethodData;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/payments/mojom/PaymentMethodData;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)Lorg/chromium/payments/mojom/PaymentResponse;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/payments/mojom/PaymentResponse;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/payments/mojom/PaymentResponse;

    move-result-object p0

    return-object p0
.end method

.method public static toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)Lorg/chromium/payments/mojom/PaymentValidationErrors;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/payments/mojom/PaymentValidationErrors;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/payments/mojom/PaymentValidationErrors;

    move-result-object p0

    return-object p0
.end method
