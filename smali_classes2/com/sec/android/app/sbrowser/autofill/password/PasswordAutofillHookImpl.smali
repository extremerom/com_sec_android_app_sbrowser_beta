.class Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordAutofillHook;


# instance fields
.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mAutoSigninStateChecker:Lcom/sec/android/app/sbrowser/common/function/Supplier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMigrationDialog:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;Lcom/sec/android/app/sbrowser/authentication/Authenticator;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/authentication/Authenticator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;",
            "Lcom/sec/android/app/sbrowser/authentication/Authenticator;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mMigrationDialog:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mAutoSigninStateChecker:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->lambda$onFillPasswordForm$0(ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private createEmptyHookResult()Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    invoke-direct {p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;-><init>()V

    return-object p0
.end method

.method private createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createEmptyHookResult()Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    move-result-object v0

    iput-boolean p2, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;->isSuccess:Z

    if-eqz p2, :cond_0

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;->password:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mAutoSigninStateChecker:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;->shouldSubmit:Z

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createHookResult(): isSuccess = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;->isSuccess:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", shouldSubmit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;->shouldSubmit:Z

    const-string p2, "PasswordAutofillHookImpl"

    invoke-static {p2, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-object v0
.end method

.method private createOptionBy(I)Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onFillPasswordForm$0(ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 3

    iget-boolean v0, p4, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    const-string v1, "201"

    if-eqz v0, :cond_0

    const-string v0, "9262"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p4, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-static {p4, p2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->decryptPassword(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p4, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;->call(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;)V

    const-string p0, "9143"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;->call(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;)V

    return-void
.end method


# virtual methods
.method public onFillPasswordForm(ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;)V
    .locals 5
    .param p3    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onFillPasswordForm(): passwordAutofillType = "

    const-string v1, "PasswordAutofillHookImpl"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "onFillPasswordForm unknown autofill type"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createEmptyHookResult()Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;->call(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v3, "Pass"

    goto :goto_0

    :cond_1
    const-string v3, "Local"

    :goto_0
    const-string v4, "Det"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "201"

    const-string v4, "9261"

    invoke-static {v3, v4, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;->call(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;)V

    const-string p0, "9262"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "onFillPasswordForm(): Authenticator is already running"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createEmptyHookResult()Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;->call(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHookResult;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->createOptionBy(I)Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v0

    if-ne p1, v2, :cond_4

    const-string v1, "9142"

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/password/l;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/l;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;)V

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void
.end method

.method public showMigrationPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->mMigrationDialog:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialog;->showIfNeeded()V

    return-void
.end method
