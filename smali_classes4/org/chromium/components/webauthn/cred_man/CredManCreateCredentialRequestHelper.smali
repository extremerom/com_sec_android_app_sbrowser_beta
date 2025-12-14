.class Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstanceForTesting:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;


# instance fields
.field private mClientDataHash:[B

.field private mOrigin:Ljava/lang/String;

.field private mRequestAsJson:Ljava/lang/String;

.field private mUserId:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;[B)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mClientDataHash:[B

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mRequestAsJson:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;[B)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mUserId:[B

    return-void
.end method

.method public static bridge synthetic e()Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getInstance()Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    move-result-object v0

    return-object v0
.end method

.method private getBaseCreateCredentialRequestBundle()Landroid/os/Bundle;
    .locals 3

    const-string v0, "androidx.credentials.BUNDLE_KEY_SUBTYPE"

    const-string v1, "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST"

    invoke-static {v0, v1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.credentials.BUNDLE_KEY_REQUEST_JSON"

    iget-object v2, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mRequestAsJson:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH"

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mClientDataHash:[B

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private getBundleForRequest(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getBaseCreateCredentialRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updateCreateCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V

    :cond_0
    return-object v0
.end method

.method private static getInstance()Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->sInstanceForTesting:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCreateCredentialRequest(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/CreateCredentialRequest;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getBundleForRequest(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v0}, Lorg/chromium/components/autofill/b;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/credentials/CreateCredentialRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/autofill/b;->b(Landroid/credentials/CreateCredentialRequest$Builder;)Landroid/credentials/CreateCredentialRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;->updateCreateCredentialRequestBuilder(Landroid/credentials/CreateCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V

    :cond_0
    invoke-static {v0}, Lorg/chromium/components/autofill/b;->d(Landroid/credentials/CreateCredentialRequest$Builder;)Landroid/credentials/CreateCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->mUserId:[B

    return-object p0
.end method
