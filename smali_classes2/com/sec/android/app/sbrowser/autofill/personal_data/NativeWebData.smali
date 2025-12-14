.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceNativeConnector;


# instance fields
.field private mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    return-object v0
.end method


# virtual methods
.method public addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V

    return-void
.end method

.method public clearAutofillProfiles()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->clearAutofillProfiles()V

    return-void
.end method

.method public getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    move-result-object p0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;

    return-void
.end method

.method public removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V

    return-void
.end method

.method public updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->mNativeBackend:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V

    return-void
.end method
