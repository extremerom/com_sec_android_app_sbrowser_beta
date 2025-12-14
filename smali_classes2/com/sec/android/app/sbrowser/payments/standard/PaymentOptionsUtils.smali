.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static requestAnyContactInformation(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z
    .locals 2
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static requestAnyInformation(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z
    .locals 2
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static requestPayerEmail(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestPayerName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestPayerPhone(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestShipping(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
