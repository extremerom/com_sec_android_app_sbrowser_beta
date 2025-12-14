.class Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstanceForTesting:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;


# instance fields
.field private mAllowAutoSelect:Z

.field private mClientDataHash:[B

.field private mIgnoreGpm:Z

.field private mOrigin:Ljava/lang/String;

.field private mPlayServicesAvailable:Z

.field private mPreferImmediatelyAvailable:Z

.field private mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field private mRequestAsJson:Ljava/lang/String;

.field private mRequestPasswords:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mAllowAutoSelect:Z

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;[B)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mClientDataHash:[B

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mIgnoreGpm:Z

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mPlayServicesAvailable:Z

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mPreferImmediatelyAvailable:Z

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method

.method private getBaseGetCredentialRequestBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mPreferImmediatelyAvailable:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getBasePublicKeyCredentialOptionBundle()Landroid/os/Bundle;
    .locals 3

    const-string v0, "androidx.credentials.BUNDLE_KEY_SUBTYPE"

    const-string v1, "androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION"

    invoke-static {v0, v1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.credentials.BUNDLE_KEY_REQUEST_JSON"

    iget-object v2, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mRequestAsJson:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH"

    iget-object v2, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mClientDataHash:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mAllowAutoSelect:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getGetCredentialRequestBundle(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getBaseGetCredentialRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updateGetCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V

    :cond_0
    return-object v0
.end method

.method private static getInstance()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->sInstanceForTesting:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;-><init>()V

    return-object v0
.end method

.method private getPasswordCredentialOption(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/CredentialOption;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mRequestPasswords:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updatePasswordCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V

    :cond_1
    invoke-static {v0, v0}, Lorg/chromium/components/autofill/b;->A(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/credentials/CredentialOption$Builder;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updatePasswordCredentialOptionBuilder(Landroid/credentials/CredentialOption$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V

    :cond_2
    invoke-static {v0}, Lorg/chromium/components/autofill/b;->i(Landroid/credentials/CredentialOption$Builder;)Landroid/credentials/CredentialOption;

    move-result-object p0

    return-object p0
.end method

.method private getPublicKeyCredentialOption(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/CredentialOption;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getBasePublicKeyCredentialOptionBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updatePublicKeyCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V

    :cond_0
    invoke-static {v0, v0}, Lorg/chromium/components/autofill/b;->h(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/credentials/CredentialOption$Builder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/autofill/b;->i(Landroid/credentials/CredentialOption$Builder;)Landroid/credentials/CredentialOption;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mRequestAsJson:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mRequestPasswords:Z

    return-void
.end method

.method public static bridge synthetic j()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->sInstanceForTesting:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    return-object v0
.end method

.method public static bridge synthetic k()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getInstance()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGetCredentialRequest(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/GetCredentialRequest;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getGetCredentialRequestBundle(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/autofill/b;->k(Landroid/os/Bundle;)Landroid/credentials/GetCredentialRequest$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getPublicKeyCredentialOption(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/CredentialOption;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getPasswordCredentialOption(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/CredentialOption;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updateGetCredentialRequestBuilder(Landroid/credentials/GetCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V

    :cond_0
    invoke-static {v0, v1}, Lorg/chromium/components/autofill/b;->x(Landroid/credentials/GetCredentialRequest$Builder;Landroid/credentials/CredentialOption;)V

    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Lorg/chromium/components/autofill/b;->x(Landroid/credentials/GetCredentialRequest$Builder;Landroid/credentials/CredentialOption;)V

    :cond_1
    invoke-static {v0}, Lorg/chromium/components/autofill/b;->l(Landroid/credentials/GetCredentialRequest$Builder;)Landroid/credentials/GetCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public getIgnoreGpm()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mIgnoreGpm:Z

    return p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayServicesAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mPlayServicesAvailable:Z

    return p0
.end method

.method public getPreferImmediatelyAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mPreferImmediatelyAvailable:Z

    return p0
.end method

.method public getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-object p0
.end method
