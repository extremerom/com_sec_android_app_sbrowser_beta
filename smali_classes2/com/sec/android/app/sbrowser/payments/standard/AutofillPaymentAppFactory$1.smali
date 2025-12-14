.class Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;


# instance fields
.field final synthetic val$methodData:Ljava/util/Map;

.field final synthetic val$terrace:Lcom/sec/terrace/Terrace;


# virtual methods
.method public getMethodData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$1;->val$methodData:Ljava/util/Map;

    return-object p0
.end method

.method public getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawTotal()Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$1;->val$terrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public getUnmodifiableModifiers()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
