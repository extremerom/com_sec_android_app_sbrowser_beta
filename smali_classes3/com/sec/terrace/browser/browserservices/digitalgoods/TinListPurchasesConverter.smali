.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchasesConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)LI/d;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchasesConverter$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchasesConverter$1;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-object v0
.end method

.method public static convertPurchaseReference(Landroid/os/Bundle;)Lorg/chromium/payments/mojom/PurchaseReference;
    .locals 4

    const-string v0, "purchaseDetails.itemId"

    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->checkField(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "purchaseDetails.purchaseToken"

    invoke-static {p0, v2, v1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->checkField(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Lorg/chromium/payments/mojom/PurchaseReference;

    invoke-direct {v1}, Lorg/chromium/payments/mojom/PurchaseReference;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PurchaseReference;->itemId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/payments/mojom/PurchaseReference;->purchaseToken:Ljava/lang/String;

    return-object v1
.end method

.method public static createPurchaseReferenceBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "purchaseDetails.itemId"

    const-string v1, "purchaseDetails.purchaseToken"

    invoke-static {v0, p0, v1, p1}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createResponseBundle(I[Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listPurchases.responseCode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "listPurchases.purchasesList"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/payments/mojom/PurchaseReference;

    const/4 v1, 0x6

    invoke-interface {p0, v1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;->call(I[Lorg/chromium/payments/mojom/PurchaseReference;)V

    return-void
.end method

.method public static returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/payments/mojom/PurchaseReference;

    const/4 v1, 0x5

    invoke-interface {p0, v1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;->call(I[Lorg/chromium/payments/mojom/PurchaseReference;)V

    return-void
.end method
