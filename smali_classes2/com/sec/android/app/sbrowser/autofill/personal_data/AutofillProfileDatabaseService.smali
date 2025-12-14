.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileDatabaseService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getAutofillProfileBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V

    return-void
.end method

.method public clearAutofillProfiles()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getAutofillProfileBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->clearAutofillProfiles()V

    return-void
.end method

.method public getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getAutofillProfileBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V

    return-void
.end method

.method public removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getAutofillProfileBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V

    return-void
.end method

.method public updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getAutofillProfileBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V

    return-void
.end method
