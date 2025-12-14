.class Lcom/sec/android/app/sbrowser/ServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/ServiceManager;->lambda$registerAllServices$0()Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$registerAllServices$0()Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/c;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;

    return-object v0
.end method

.method public static registerAllServices()V
    .locals 5

    sget-object v0, Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/hello/mojom/TerraceHello;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceNativeConnector;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v0, Lcom/sec/terrace/services/samsungpass/mojom/TerraceSamsungPassService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lcom/sec/android/app/sbrowser/f;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v3, Lcom/sec/android/app/sbrowser/f;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/f;-><init>(I)V

    invoke-static {v2, v3}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v3, Lcom/sec/android/app/sbrowser/g;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/sbrowser/g;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;I)V

    invoke-static {v2, v3}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v3, Lcom/sec/android/app/sbrowser/g;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/sbrowser/g;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;I)V

    invoke-static {v2, v3}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v3, Lcom/sec/android/app/sbrowser/g;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/sbrowser/g;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;I)V

    invoke-static {v2, v3}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v2, Lcom/sec/android/app/sbrowser/h;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/sbrowser/h;-><init>(Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;I)V

    invoke-static {v1, v2}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    sget-object v1, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v2, Lcom/sec/android/app/sbrowser/h;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/sbrowser/h;-><init>(Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;I)V

    invoke-static {v1, v2}, Lcom/sec/terrace/services/TerraceServiceManager;->register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V

    :cond_1
    return-void
.end method
