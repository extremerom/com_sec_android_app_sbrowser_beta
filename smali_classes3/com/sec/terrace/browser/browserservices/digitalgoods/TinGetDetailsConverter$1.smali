.class Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;
.super LI/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)LI/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "getDetails.response"

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

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "No args provided."

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void

    :cond_1
    const-class p1, Ljava/lang/Integer;

    const-string v0, "getDetails.responseCode"

    invoke-static {p2, v0, p1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->checkField(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p1, [Landroid/os/Parcelable;

    const-string v1, "getDetails.detailsList"

    invoke-static {p2, v1, p1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->checkField(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/browserservices/digitalgoods/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->convertParcelableArray([Landroid/os/Parcelable;Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter$Converter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/chromium/payments/mojom/ItemDetails;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/payments/mojom/ItemDetails;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsConverter;->convertResponseCode(ILandroid/os/Bundle;)I

    move-result p1

    invoke-interface {p0, p1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;->call(I[Lorg/chromium/payments/mojom/ItemDetails;)V

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;->val$callback:Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void
.end method
