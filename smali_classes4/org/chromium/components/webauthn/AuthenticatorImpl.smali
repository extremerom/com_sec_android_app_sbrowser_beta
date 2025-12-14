.class public Lorg/chromium/components/webauthn/AuthenticatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/Authenticator;
.implements Lorg/chromium/components/webauthn/AuthenticationContextProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sFido2CredentialRequestOverrideForTesting:Lorg/chromium/components/webauthn/Fido2CredentialRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCreateConfirmationUiDelegate:Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;

.field private mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

.field private final mIntentSender:Lorg/chromium/components/webauthn/FidoIntentSender;

.field private mIsConditionalRequest:Z

.field private mIsOperationPending:Z

.field private mIsPaymentRequest:Z

.field private mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

.field private mOrigin:Lorg/chromium/url/Origin;

.field private mPayment:Lorg/chromium/blink/mojom/PaymentOptions;

.field private mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field private mTopOrigin:Lorg/chromium/url/Origin;

.field private mUnclosedFido2CredentialRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/components/webauthn/Fido2CredentialRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mUnclosedFido2CredentialRequests:Ljava/util/Set;

    iput-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object p3, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIntentSender:Lorg/chromium/components/webauthn/FidoIntentSender;

    iput-object p5, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {p5}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedOrigin()Lorg/chromium/url/Origin;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

    iput-object p6, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mTopOrigin:Lorg/chromium/url/Origin;

    iput-object p4, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mCreateConfirmationUiDelegate:Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->lambda$isConditionalMediationAvailable$5(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;Z)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/webauthn/AuthenticatorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->recordOutcomeEvent(I)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/webauthn/AuthenticatorImpl;Ljava/util/ArrayList;Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->lambda$getClientCapabilities$4(Ljava/util/ArrayList;Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;Z)V

    return-void
.end method

.method private cleanupRequest()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    iput-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    iput-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    return-void
.end method

.method private continueMakeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V
    .locals 9

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->maybeCreateBrowserOptions()Landroid/os/Bundle;

    move-result-object v2

    iget-object v1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/chromium/url/Origin;

    iget-object v4, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mTopOrigin:Lorg/chromium/url/Origin;

    iget-object v5, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPayment:Lorg/chromium/blink/mojom/PaymentOptions;

    new-instance v6, Lorg/chromium/components/webauthn/a;

    invoke-direct {v6, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    new-instance v7, Lorg/chromium/components/webauthn/a;

    invoke-direct {v7, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    new-instance v8, Lorg/chromium/components/webauthn/a;

    invoke-direct {v8, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V

    return-void
.end method

.method private couldSupportConditionalMediation()Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isWebauthnSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private couldSupportUvpaa()Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isWebauthnSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isResultReceiverSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;
    .locals 0

    new-instance p0, Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    invoke-direct {p0}, Lorg/chromium/blink/mojom/WebAuthnClientCapability;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/WebAuthnClientCapability;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/chromium/blink/mojom/WebAuthnClientCapability;->supported:Z

    return-object p0
.end method

.method public static synthetic d(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->lambda$makeCredential$1()V

    return-void
.end method

.method public static synthetic e(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->lambda$isUserVerifyingPlatformAuthenticatorAvailable$2(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;Z)V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/components/webauthn/AuthenticatorImpl;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->lambda$makeCredential$0(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V

    return-void
.end method

.method private getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;
    .locals 1

    new-instance p0, Lorg/chromium/blink/mojom/GetCredentialResponse;

    invoke-direct {p0}, Lorg/chromium/blink/mojom/GetCredentialResponse;-><init>()V

    new-instance v0, Lorg/chromium/blink/mojom/GetAssertionResponse;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/GetAssertionResponse;-><init>()V

    iput-object p2, v0, Lorg/chromium/blink/mojom/GetAssertionResponse;->credential:Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    iput p1, v0, Lorg/chromium/blink/mojom/GetAssertionResponse;->status:I

    invoke-virtual {p0, v0}, Lorg/chromium/blink/mojom/GetCredentialResponse;->setGetAssertionResponse(Lorg/chromium/blink/mojom/GetAssertionResponse;)V

    return-object p0
.end method

.method public static synthetic h(Lorg/chromium/components/webauthn/b;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->lambda$isUserVerifyingPlatformAuthenticatorAvailable$3(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;Z)V

    return-void
.end method

.method private synthetic lambda$getClientCapabilities$4(Ljava/util/ArrayList;Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;Z)V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->couldSupportConditionalMediation()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "conditionalGet"

    invoke-direct {p0, v3, v0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->couldSupportUvpaa()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string p3, "userVerifyingPlatformAuthenticator"

    invoke-direct {p0, p3, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v2, [Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    invoke-interface {p2, p0}, Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;->call([Lorg/chromium/blink/mojom/WebAuthnClientCapability;)V

    return-void
.end method

.method private static synthetic lambda$isConditionalMediationAvailable$5(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;->call(Z)V

    return-void
.end method

.method private static synthetic lambda$isUserVerifyingPlatformAuthenticatorAvailable$2(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;Z)V
    .locals 1

    const-string v0, "WebAuthentication.IsUVPlatformAuthenticatorAvailable2"

    invoke-static {v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;->call(Z)V

    return-void
.end method

.method private static synthetic lambda$isUserVerifyingPlatformAuthenticatorAvailable$3(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;->call(Z)V

    return-void
.end method

.method private synthetic lambda$makeCredential$0(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->continueMakeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V

    return-void
.end method

.method private synthetic lambda$makeCredential$1()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->recordOutcomeEvent(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->onError(Ljava/lang/Integer;)V

    return-void
.end method

.method private maybeCreateBrowserOptions()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->createDefaultBrowserOptions()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addIncognitoExtraToOptions(Landroid/os/Bundle;Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-object v0
.end method

.method private recordOutcomeEvent(I)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    if-eqz v0, :cond_1

    const-string v0, "WebAuthn.SignCompletion"

    const-string v1, "SignCompletionResult"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    if-eqz v0, :cond_4

    const-string v0, "WebAuthn.RegisterCompletion"

    const-string v1, "RegisterCompletionResult"

    :goto_0
    iget-boolean v2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsConditionalRequest:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsPaymentRequest:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lorg/chromium/components/ukm/UkmRecorder;

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v3, p0, v0}, Lorg/chromium/components/ukm/UkmRecorder;-><init>(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1}, Lorg/chromium/components/ukm/UkmRecorder;->addMetric(Ljava/lang/String;I)Lorg/chromium/components/ukm/UkmRecorder;

    move-result-object p0

    const-string p1, "RequestMode"

    invoke-virtual {p0, p1, v2}, Lorg/chromium/components/ukm/UkmRecorder;->addMetric(Ljava/lang/String;I)Lorg/chromium/components/ukm/UkmRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/ukm/UkmRecorder;->record()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->cancelConditionalGetAssertion()V

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mUnclosedFido2CredentialRequests:Ljava/util/Set;

    new-instance v1, Lca/c;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lca/c;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mUnclosedFido2CredentialRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->cleanupRequest()V

    return-void
.end method

.method public getClientCapabilities(Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "relatedOrigins"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "hybridTransport"

    invoke-direct {p0, v1, v2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "passkeyPlatformAuthenticator"

    invoke-direct {p0, v1, v2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->couldSupportConditionalMediation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->couldSupportUvpaa()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "conditionalGet"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "userVerifyingPlatformAuthenticator"

    invoke-direct {p0, v1, v2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->createWebAuthnClientCapability(Ljava/lang/String;Z)Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v2, [Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/blink/mojom/WebAuthnClientCapability;

    invoke-interface {p1, p0}, Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;->call([Lorg/chromium/blink/mojom/WebAuthnClientCapability;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    move-result-object v1

    new-instance v2, LM4/a;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3, v0, p1}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;)V
    .locals 13

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    return-void

    :cond_0
    iget v0, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-ne v0, v3, :cond_1

    invoke-direct {p0, v4, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    return-void

    :cond_1
    iput-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    iput-boolean v2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    iget-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPayment:Lorg/chromium/blink/mojom/PaymentOptions;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsPaymentRequest:Z

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsConditionalRequest:Z

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isWebauthnSupported()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p2}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isResultReceiverSupported()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lorg/chromium/url/Origin;

    iget-object v8, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mTopOrigin:Lorg/chromium/url/Origin;

    iget-object v9, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPayment:Lorg/chromium/blink/mojom/PaymentOptions;

    new-instance v10, Lorg/chromium/components/webauthn/a;

    invoke-direct {v10, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    new-instance v11, Lorg/chromium/components/webauthn/a;

    invoke-direct {v11, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    new-instance v12, Lorg/chromium/components/webauthn/a;

    invoke-direct {v12, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V

    return-void

    :cond_5
    :goto_2
    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->recordOutcomeEvent(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->onError(Ljava/lang/Integer;)V

    return-void
.end method

.method public getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->sFido2CredentialRequestOverrideForTesting:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-direct {v0, p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;-><init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mUnclosedFido2CredentialRequests:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getIntentSender()Lorg/chromium/components/webauthn/FidoIntentSender;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIntentSender:Lorg/chromium/components/webauthn/FidoIntentSender;

    return-object p0
.end method

.method public getMatchingCredentialIds(Ljava/lang/String;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;)V
    .locals 6

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isGetMatchingCredentialIdsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4, p0}, Lorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;->onResponse(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    move-result-object v0

    new-instance v5, Lorg/chromium/components/webauthn/a;

    invoke-direct {v5, p0}, Lorg/chromium/components/webauthn/a;-><init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleGetMatchingCredentialIdsRequest(Ljava/lang/String;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;)V

    return-void
.end method

.method public getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-object p0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public isConditionalMediationAvailable(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->couldSupportConditionalMediation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;->call(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V

    return-void
.end method

.method public isUserVerifyingPlatformAuthenticatorAvailable(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/components/webauthn/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/chromium/components/webauthn/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->couldSupportUvpaa()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/chromium/components/webauthn/b;->call(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V

    return-void
.end method

.method public makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, v1, p0, p0}, Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;->call(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsPaymentRequest:Z

    iput-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    iput-boolean v1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isWebauthnSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p2}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isResultReceiverSupported()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mCreateConfirmationUiDelegate:Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0, v1}, Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;->show(Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->continueMakeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->continueMakeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->recordOutcomeEvent(I)V

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->onError(Ljava/lang/Integer;)V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->close()V

    return-void
.end method

.method public onError(Ljava/lang/Integer;)V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, v1, v1}, Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;->call(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPendingFido2CredentialRequest:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->destroyBridge()V

    :cond_3
    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->cleanupRequest()V

    return-void
.end method

.method public onRegisterResponse(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V
    .locals 2

    iget-boolean p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;->call(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->cleanupRequest()V

    return-void
.end method

.method public onSignResponse(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mIsOperationPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mGetCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    invoke-direct {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->cleanupRequest()V

    return-void
.end method

.method public report(Lorg/chromium/blink/mojom/PublicKeyCredentialReportOptions;Lorg/chromium/blink/mojom/Authenticator$Report_Response;)V
    .locals 0

    const/4 p0, 0x5

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lorg/chromium/blink/mojom/Authenticator$Report_Response;->call(ILorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    return-void
.end method

.method public setEffectiveOrigin(Lorg/chromium/url/Origin;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

    return-void
.end method

.method public setPaymentOptions(Lorg/chromium/blink/mojom/PaymentOptions;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;->mPayment:Lorg/chromium/blink/mojom/PaymentOptions;

    return-void
.end method
