.class public Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final REQUIRED_FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "itemDetails.currency"

    const-string v1, "itemDetails.value"

    const-string v2, "itemDetails.id"

    const-string v3, "itemDetails.title"

    const-string v4, "itemDetails.description"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->REQUIRED_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public static convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)LI/d;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter$1;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-object v0
.end method

.method public static convertItemDetails(Landroid/os/Bundle;)Lorg/chromium/payments/mojom/ItemDetails;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->REQUIRED_FIELDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Item does not contain field String "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DigitalGoods"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    invoke-direct {v0}, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;-><init>()V

    const-string v1, "itemDetails.currency"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->currency:Ljava/lang/String;

    const-string v1, "itemDetails.value"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->value:Ljava/lang/String;

    new-instance v1, Lorg/chromium/payments/mojom/ItemDetails;

    invoke-direct {v1}, Lorg/chromium/payments/mojom/ItemDetails;-><init>()V

    const-string v3, "itemDetails.id"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/payments/mojom/ItemDetails;->itemId:Ljava/lang/String;

    const-string v3, "itemDetails.title"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/payments/mojom/ItemDetails;->title:Ljava/lang/String;

    const-string v3, "itemDetails.description"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/payments/mojom/ItemDetails;->description:Ljava/lang/String;

    iput-object v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->price:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    const-string v0, "itemDetails.type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->convertItemType(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->type:I

    const-string v0, "itemDetails.url"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Lorg/chromium/url/mojom/Url;

    invoke-direct {v3}, Lorg/chromium/url/mojom/Url;-><init>()V

    iput-object v0, v3, Lorg/chromium/url/mojom/Url;->url:Ljava/lang/String;

    filled-new-array {v3}, [Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    goto :goto_1

    :cond_2
    new-array v0, v2, [Lorg/chromium/url/mojom/Url;

    iput-object v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->iconUrls:[Lorg/chromium/url/mojom/Url;

    :goto_1
    const-string v0, "itemDetails.subsPeriod"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->subscriptionPeriod:Ljava/lang/String;

    const-string v0, "itemDetails.freeTrialPeriod"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->freeTrialPeriod:Ljava/lang/String;

    const-string v0, "itemDetails.introPricePeriod"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPricePeriod:Ljava/lang/String;

    const-string v0, "itemDetails.introPriceCycles"

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPriceCycles:I

    const-string v0, "itemDetails.introPriceCurrency"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "itemDetails.introPriceValue"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    new-instance v2, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    invoke-direct {v2}, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;-><init>()V

    iput-object v0, v2, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->currency:Ljava/lang/String;

    iput-object p0, v2, Lorg/chromium/payments/mojom/PaymentCurrencyAmount;->value:Ljava/lang/String;

    iput-object v2, v1, Lorg/chromium/payments/mojom/ItemDetails;->introductoryPrice:Lorg/chromium/payments/mojom/PaymentCurrencyAmount;

    :cond_3
    return-object v1
.end method

.method public static convertItemType(Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "subs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "inapp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static convertParams([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "getDetails.itemIds"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createItemDetailsBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "itemDetails.id"

    const-string v1, "itemDetails.title"

    invoke-static {v0, p0, v1, p1}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "itemDetails.description"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.currency"

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.value"

    invoke-virtual {p0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createItemDetailsBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->createItemDetailsBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "itemDetails.type"

    invoke-virtual {p0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.url"

    invoke-virtual {p0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.subsPeriod"

    invoke-virtual {p0, p1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.freeTrialPeriod"

    invoke-virtual {p0, p1, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.introPriceCurrency"

    invoke-virtual {p0, p1, p9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.introPriceValue"

    invoke-virtual {p0, p1, p10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.introPricePeriod"

    invoke-virtual {p0, p1, p11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemDetails.introPriceCycles"

    invoke-virtual {p0, p1, p12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static varargs createResponseBundle(I[Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "getDetails.responseCode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "getDetails.detailsList"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/payments/mojom/ItemDetails;

    const/4 v1, 0x6

    invoke-interface {p0, v1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;->call(I[Lorg/chromium/payments/mojom/ItemDetails;)V

    return-void
.end method

.method public static returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/payments/mojom/ItemDetails;

    const/4 v1, 0x5

    invoke-interface {p0, v1, v0}, Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;->call(I[Lorg/chromium/payments/mojom/ItemDetails;)V

    return-void
.end method
