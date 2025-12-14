.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->changeDBBackend()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->lambda$migrateFromLocalToSamsungPass$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->lambda$migrateFromLocalToSamsungPass$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeDBBackend()V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SAMSUNG_PASS:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->removeAllLocalData()V

    return-void
.end method

.method public static synthetic e(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->lambda$migrateFromLocalToSamsungPass$0(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private static synthetic lambda$migrateFromLocalToSamsungPass$0(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->addPersonalDataWithOneTransaction([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method private static synthetic lambda$migrateFromLocalToSamsungPass$1(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$migrateFromLocalToSamsungPass$2(Ljava/lang/Runnable;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->getAutofillProfilesFromLocal()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->getCreditCardsFromLocal()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private removeAllLocalData()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->clearAutofillProfiles()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->clearCreditCards()V

    return-void
.end method


# virtual methods
.method public getAutofillProfilesFromLocal()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/f;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V

    return-object p0
.end method

.method public getCreditCardsFromLocal()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/f;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V

    return-object p0
.end method

.method public migrateFromLocalToSamsungPass(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
