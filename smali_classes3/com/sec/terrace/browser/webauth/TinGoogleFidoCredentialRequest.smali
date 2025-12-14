.class Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequest;
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$RequestStatus;
    }
.end annotation


# instance fields
.field private mAppIdExtensionUsed:Z

.field private mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

.field private mFido2ApiClient:Lq5/b;

.field private mIntentListener:LR5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR5/e;"
        }
    .end annotation
.end field

.field private mIsUserVerifyingPlatformAuthenticatorAvailableCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

.field private mRequestStatus:I

.field private mStartTimeMs:J

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWindow:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;-><init>(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIntentListener:LR5/e;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->lambda$handleIsUserVerifyingPlatformAuthenticatorAvailableRequest$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-object p0
.end method

.method private convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/url/Origin;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/chromium/url/Origin;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/chromium/url/Origin;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/net/GURLUtils;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mStartTimeMs:J

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method private initFido2ApiClient()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mFido2ApiClient:Lq5/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lq5/b;

    sget-object v3, Lb5/c;->U:Lb5/b;

    new-instance v4, Lc5/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v5, Lq5/b;->a:Lb5/g;

    invoke-direct {v2, v0, v5, v3, v4}, Lb5/j;-><init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V

    iput-object v2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mFido2ApiClient:Lq5/b;

    return v1
.end method

.method private synthetic lambda$handleIsUserVerifyingPlatformAuthenticatorAvailableRequest$0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIsUserVerifyingPlatformAuthenticatorAvailableCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIsUserVerifyingPlatformAuthenticatorAvailableCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    return-void
.end method

.method private processErrorResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google Play Services FIDO2 API returned an error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fido2Request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->a:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertError(Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method private processIntentResult(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "FIDO2_CREDENTIAL_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->processPublicKeyCredential(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "FIDO2_ERROR_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, LG5/h3;->c([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->processErrorResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;)V

    goto :goto_0

    :cond_1
    const-string v0, "FIDO2_RESPONSE_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->processKeyResponse(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p1, "Fido2Request"

    const-string v0, "The response is missing FIDO2_KEY_RESPONSE_EXTRA and FIDO2_KEY_CREDENTIAL_EXTRA."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    :goto_0
    return-void
.end method

.method private processKeyResponse(Landroid/content/Intent;)V
    .locals 5

    iget v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mRequestStatus:I

    const/4 v1, 0x1

    const-string v2, "FIDO2_RESPONSE_EXTRA"

    const/4 v3, 0x0

    const-string v4, "Fido2Request"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Received a sign response from Google Play Services FIDO2 API"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, LG5/h3;->c([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    iget-boolean v2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mAppIdExtensionUsed:Z

    invoke-static {p1, v2}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toGetAssertionResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;Z)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onSignResponse(Ljava/lang/Integer;Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V

    goto :goto_0

    :cond_1
    const-string v0, "Received a register response from Google Play Services FIDO2 API"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, LG5/h3;->c([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    invoke-static {p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toMakeCredentialResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onRegisterResponse(Ljava/lang/Integer;Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    return-void
.end method

.method private processPublicKeyCredential(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "FIDO2_CREDENTIAL_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, LG5/h3;->c([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->b()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->processErrorResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toMakeCredentialResponse(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onRegisterResponse(Ljava/lang/Integer;Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V

    iput-object v2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mAppIdExtensionUsed:Z

    invoke-static {p1, v3}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toGetAssertionResponse(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;Z)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onSignResponse(Ljava/lang/Integer;Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V

    iput-object v2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    :cond_2
    :goto_0
    return-void
.end method

.method private returnErrorAndResetCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onError(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    return-void
.end method


# virtual methods
.method public handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V
    .locals 2

    iput-object p4, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    iget-object p4, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez p4, :cond_0

    invoke-static {p2}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    :cond_0
    const/4 p2, 0x2

    iput p2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mRequestStatus:I

    invoke-direct {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->initFido2ApiClient()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "Fido2Request"

    const-string p2, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_1
    iget-object p2, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object p2, p2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->appid:Ljava/lang/String;

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    iput-boolean p4, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mAppIdExtensionUsed:Z

    :cond_2
    invoke-static {p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toGetAssertionOptions(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    move p3, p4

    goto :goto_0

    :cond_3
    move p3, v0

    :goto_0
    const-string v1, "origin scheme must be non-empty"

    invoke-static {v1, p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move p4, v0

    :goto_1
    const-string p3, "origin authority must be non-empty"

    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    new-instance p3, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B)V

    const-string p1, "201"

    const-string p2, "9959"

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mFido2ApiClient:Lq5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object p2

    const/16 p4, 0x1527

    iput p4, p2, LG6/f;->c:I

    new-instance p4, LB3/c;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p3, p4, LB3/c;->a:Ljava/lang/Object;

    iput-object p4, p2, LG6/f;->d:Ljava/lang/Object;

    invoke-virtual {p2}, LG6/f;->a()Lc5/L;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIntentListener:LR5/e;

    invoke-virtual {p1, p0}, LR5/h;->e(LR5/e;)LR5/p;

    return-void
.end method

.method public handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/content_public/browser/RenderFrameHost;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V
    .locals 1

    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIsUserVerifyingPlatformAuthenticatorAvailableCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    iget-object p2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->initFido2ApiClient()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Fido2Request"

    const-string p2, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIsUserVerifyingPlatformAuthenticatorAvailableCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIsUserVerifyingPlatformAuthenticatorAvailableCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mFido2ApiClient:Lq5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object p2

    new-instance v0, LO7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, LG6/f;->d:Ljava/lang/Object;

    sget-object v0, Lo5/a;->a:Lcom/google/android/gms/common/Feature;

    filled-new-array {v0}, [Lcom/google/android/gms/common/Feature;

    move-result-object v0

    iput-object v0, p2, LG6/f;->e:Ljava/lang/Object;

    const/16 v0, 0x1528

    iput v0, p2, LG6/f;->c:I

    invoke-virtual {p2}, LG6/f;->a()Lc5/L;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    move-result-object p1

    new-instance p2, Lcom/sec/terrace/browser/webauth/a;

    invoke-direct {p2, p0}, Lcom/sec/terrace/browser/webauth/a;-><init>(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    invoke-virtual {p1, p2}, LR5/h;->e(LR5/e;)LR5/p;

    return-void
.end method

.method public handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V
    .locals 2

    iput-object p4, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mCallback:Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;

    iget-object p4, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez p4, :cond_0

    invoke-static {p2}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    :cond_0
    const/4 p2, 0x1

    iput p2, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mRequestStatus:I

    invoke-direct {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->initFido2ApiClient()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p1, "Fido2Request"

    const-string p2, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toMakeCredentialOptions(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p3}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    move p4, p2

    goto :goto_0

    :cond_2
    move p4, v0

    :goto_0
    const-string v1, "origin scheme must be non-empty"

    invoke-static {v1, p4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    const-string p4, "origin authority must be non-empty"

    invoke-static {p4, p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    new-instance p2, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[B)V

    const-string p1, "201"

    const-string p3, "9958"

    invoke-static {p1, p3}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mFido2ApiClient:Lq5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object p3

    const/16 p4, 0x1526

    iput p4, p3, LG6/f;->c:I

    new-instance p4, Lo3/f;

    invoke-direct {p4, p1, p2}, Lo3/f;-><init>(Lq5/b;Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions;)V

    iput-object p4, p3, LG6/f;->d:Ljava/lang/Object;

    invoke-virtual {p3}, LG6/f;->a()Lc5/L;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mIntentListener:LR5/e;

    invoke-virtual {p1, p0}, LR5/h;->e(LR5/e;)LR5/p;

    return-void

    :catch_0
    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "Fido2Request"

    if-nez p2, :cond_0

    const-string p1, "Received a null intent."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    const-string p2, "Failed with result code"

    invoke-static {p1, p2, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->returnErrorAndResetCallback(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->processIntentResult(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public setWebContentsForTesting(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method

.method public setWindowForTesting(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method
