.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;
    }
.end annotation


# static fields
.field private static final sAutofillProfileBackendMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;",
            "Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCreditCardBackendMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;",
            "Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->sAutofillProfileBackendMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->DEFAULT:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->NATIVE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SAMSUNG_PASS:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->sCreditCardBackendMap:Ljava/util/EnumMap;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SECURE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAutofillProfileBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->sAutofillProfileBackendMap:Ljava/util/EnumMap;

    const-string v1, "autofill_profile_backend"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getStoredBackendType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;

    return-object v0
.end method

.method public static getCreditCardBackend()Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->sCreditCardBackendMap:Ljava/util/EnumMap;

    const-string v1, "credit_card_backend"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->getStoredBackendType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;

    return-object v0
.end method

.method private static getStoredBackendType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DEFAULT"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "getStoredBackendType(\""

    const-string v2, "\"): "

    invoke-static {v1, p0, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "BackendManager"

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->DEFAULT:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    return-object p0
.end method

.method public static setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V
    .locals 1

    const-string v0, "autofill_profile_backend"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->storeBackendType(Ljava/lang/String;Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    return-void
.end method

.method public static setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V
    .locals 1

    const-string v0, "credit_card_backend"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->storeBackendType(Ljava/lang/String;Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    return-void
.end method

.method private static storeBackendType(Ljava/lang/String;Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
