.class public final Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromMojoPaymentCurrencyAmount(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;
    .locals 2
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;

    iget-object v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->currency:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromMojoPaymentDetailsModifier(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;
    .locals 2
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;

    iget-object v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    invoke-static {v1}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentItem(Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->methodData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-static {p0}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentMethodData(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;-><init>(Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;)V

    return-object v0
.end method

.method public static fromMojoPaymentDetailsModifierMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    invoke-static {v1}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentDetailsModifier(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromMojoPaymentItem(Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;
    .locals 1
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-static {p0}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentCurrencyAmount(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;-><init>(Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;)V

    return-object v0
.end method

.method public static fromMojoPaymentItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    invoke-static {v1}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentItem(Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromMojoPaymentMethodData(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;
    .locals 2
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

    iget-object v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedMethod:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->stringifiedData:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromMojoPaymentMethodDataMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-static {v1}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentMethodData(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromMojoPaymentOptions(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;
    .locals 7
    .param p0    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v5, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pickup"

    :cond_2
    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_3
    const-string v0, "delivery"

    goto :goto_0

    :cond_4
    const-string v0, "shipping"

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;

    iget-boolean v2, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    iget-boolean v3, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    iget-boolean v4, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;-><init>(ZZZZLjava/lang/String;)V

    return-object v0
.end method

.method public static fromPayerData(Lorg/chromium/components/payments/PayerData;)Lcom/sec/terrace/browser/payments/TerracePayerData;
    .locals 7
    .param p0    # Lorg/chromium/components/payments/PayerData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v6, Lcom/sec/terrace/browser/payments/TerracePayerData;

    iget-object v1, p0, Lorg/chromium/components/payments/PayerData;->payerName:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/components/payments/PayerData;->payerPhone:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/components/payments/PayerData;->payerEmail:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/components/payments/PayerData;->shippingAddress:Lorg/chromium/components/payments/Address;

    invoke-static {v0}, Lorg/chromium/components/payments/PaymentAddressTypeConverter;->convertAddressToMojoPaymentAddress(Lorg/chromium/components/payments/Address;)Lorg/chromium/payments/mojom/PaymentAddress;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lorg/chromium/payments/mojom/PaymentAddress;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/components/payments/PayerData;->selectedShippingOptionId:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/TerracePayerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;Ljava/lang/String;)V

    return-object v6
.end method
