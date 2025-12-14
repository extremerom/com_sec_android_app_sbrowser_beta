.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;
.super LI/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)LI/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "consume.response"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DigitalGoods"

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Wrong callback name given: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "No args provided."

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void

    :cond_1
    const-string p1, "consume.responseCode"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const-string p1, "Poorly formed args provided."

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->convertResponseCode(ILandroid/os/Bundle;)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;->call(I)V

    return-void
.end method
