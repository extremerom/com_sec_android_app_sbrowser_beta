.class public Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActivated(Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsActivated_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsActivated_Response;->call(Z)V

    return-void
.end method

.method public isPersonalDataSyncSet(Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsPersonalDataSyncSet_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService$IsPersonalDataSyncSet_Response;->call(Z)V

    return-void
.end method

.method public resetPersonalDataSyncSet()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->NATIVE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SECURE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method
