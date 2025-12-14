.class public Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;


# instance fields
.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLastAuthenticationResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTabActivitySupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/TabActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mTabActivitySupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;ZLcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->lambda$authenticateForAccountChooser$2(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;ZLcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/tab/TabActivity;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->lambda$new$0()Lcom/sec/android/app/sbrowser/tab/TabActivity;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->lambda$authenticateForAutoSignin$1(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private isWebContentsVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mTabActivitySupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->isWebContentsVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$authenticateForAccountChooser$2(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;ZLcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-boolean v0, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mLastAuthenticationResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    :cond_1
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void
.end method

.method private static synthetic lambda$authenticateForAutoSignin$1(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-boolean v0, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p3, p2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->decryptPassword(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$new$0()Lcom/sec/android/app/sbrowser/tab/TabActivity;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    return-object v0
.end method

.method private requiresAuthentication()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isWebLoginEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public authenticateForAccountChooser(ILcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;)V
    .locals 4
    .param p2    # Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-nez p1, :cond_3

    invoke-interface {p2, v3}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->requiresAuthentication()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_4
    if-ne p1, v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->isWebContentsVisible()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;->call(Z)V

    return-void

    :cond_7
    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_8

    move v1, v3

    :cond_8
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p1

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v1, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-interface {v0, p1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void
.end method

.method public authenticateForAutoSignin(ILjava/lang/String;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    const-string v1, ""

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-interface {p3, v2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-interface {p3, v0, p2}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->requiresAuthentication()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p3, v2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3, v2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3, v2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->isWebContentsVisible()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p3, v2, v1}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;->call(ZLjava/lang/String;)V

    return-void

    :cond_5
    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_6

    move v2, v0

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v2, p2, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void
.end method

.method public decrypt(ILjava/lang/String;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->mLastAuthenticationResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->decryptPassword(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;->call(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p3, p2}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;->call(Ljava/lang/String;)V

    return-void
.end method
