.class Lcom/sec/android/app/sbrowser/autofill/password/PasswordModuleLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataMigrationService()Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;)V

    return-object v1
.end method

.method public getDataRemoveService()Lcom/sec/android/app/sbrowser/autofill/password/export/DataRemoveService;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;)V

    return-object v0
.end method

.method public getPasswordAutofillHook()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordAutofillHook;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/password/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/h;-><init>(I)V

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;Lcom/sec/android/app/sbrowser/authentication/Authenticator;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-object v1
.end method

.method public getPasswordDifferenceChecker()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordDifferenceChecker;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;)V

    return-object v0
.end method

.method public getPasswordStore()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordStore;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;)V

    return-object v1
.end method
