.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinAcknowledgeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)LI/d;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinAcknowledgeConverter$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinAcknowledgeConverter$1;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-object v0
.end method

.method public static convertParams(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "acknowledge.purchaseToken"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "acknowledge.makeAvailableAgain"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createResponseBundle(I)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "acknowledge.responseCode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
