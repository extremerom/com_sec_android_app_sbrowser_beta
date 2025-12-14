.class final Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# instance fields
.field private mCanMakePayment:Z

.field private final mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

.field private mNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->createPaymentApps()Z

    move-result p0

    return p0
.end method

.method private createPaymentApps()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "basic-card"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/BasicCardUtils;->convertBasicCardToNetworks(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mNetworks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mCanMakePayment:Z

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardsToSuggest()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->createPaymentAppForCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v5, v4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public createPaymentAppForCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mCanMakePayment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mNetworks:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setBillingAddressId(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    const-string v2, "basic-card"

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Ljava/lang/String;)V

    return-object v1
.end method
