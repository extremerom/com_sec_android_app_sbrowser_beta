.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)LI/d;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-object v0
.end method

.method public static convertParams(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "consume.purchaseToken"

    invoke-static {v0, p0}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static createResponseBundle(I)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consume.responseCode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 1

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;->call(I)V

    return-void
.end method

.method public static returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;->call(I)V

    return-void
.end method
