.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchaseHistoryConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)LI/d;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchaseHistoryConverter$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchaseHistoryConverter$1;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-object v0
.end method

.method public static varargs createResponseBundle(I[Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listPurchaseHistory.responseCode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "listPurchaseHistory.purchasesList"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/payments/mojom/PurchaseReference;

    const/4 v1, 0x6

    invoke-interface {p0, v1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;->call(I[Lorg/chromium/payments/mojom/PurchaseReference;)V

    return-void
.end method

.method public static returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/payments/mojom/PurchaseReference;

    const/4 v1, 0x5

    invoke-interface {p0, v1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;->call(I[Lorg/chromium/payments/mojom/PurchaseReference;)V

    return-void
.end method
