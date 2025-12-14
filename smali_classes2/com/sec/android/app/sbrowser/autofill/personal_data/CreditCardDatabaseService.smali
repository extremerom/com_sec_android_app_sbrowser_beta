.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;->lambda$getCreditCards$1(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;->lambda$getCreditCards$0(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method private concatenate([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;
    .locals 2
    .param p1    # [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length p0, p1

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    array-length p0, p2

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private synthetic lambda$getCreditCards$0(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;->concatenate([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method private synthetic lambda$getCreditCards$1(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;

    move-result-object v0

    new-instance v1, LM4/a;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2, p1, p2}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getVirtualCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V

    return-void
.end method


# virtual methods
.method public addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method public clearCreditCards()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->clearCreditCards()V

    return-void
.end method

.method public getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V

    return-void
.end method

.method public getCreditCards(ZLcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "virtual_card_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->getCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->getCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V

    :goto_0
    return-void
.end method

.method public removeCreditCard(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->removeCreditCard(Ljava/lang/String;)V

    return-void
.end method

.method public setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V

    return-void
.end method

.method public updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;->updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method
