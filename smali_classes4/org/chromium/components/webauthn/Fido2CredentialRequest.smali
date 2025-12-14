.class public Lorg/chromium/components/webauthn/Fido2CredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;
.implements Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;,
        Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Landroid/content/Intent;",
        ">;>;",
        "Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CREDENTIAL_EXISTS_ERROR_MSG:Ljava/lang/String; = "One of the excluded credentials exists on the local device"

.field static final LOW_LEVEL_ERROR_MSG:Ljava/lang/String; = "Low level error 0x6a80"

.field static final NON_EMPTY_ALLOWLIST_ERROR_MSG:Ljava/lang/String; = "Authentication request must have non-empty allowList"

.field static final NON_VALID_ALLOWED_CREDENTIALS_ERROR_MSG:Ljava/lang/String; = "Request doesn\'t have a valid list of allowed credentials."

.field static final NO_SCREENLOCK_ERROR_MSG:Ljava/lang/String; = "The device is not secured with any screen lock"


# instance fields
.field private mAppIdExtensionUsed:Z

.field private final mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

.field private mBarrier:Lorg/chromium/components/webauthn/Barrier;

.field protected mBrowserBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

.field private mClientDataJson:[B

.field private mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field private mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

.field private mEchoCredProps:Z

.field private mErrorCallback:Lorg/chromium/components/webauthn/FidoErrorResponseCallback;

.field private mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

.field private mGetAssertionErrorOutcome:I

.field private mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

.field private mMakeCredentialErrorOutcome:I

.field private final mPlayServicesAvailable:Z

.field private mRecordingCallback:Lorg/chromium/components/webauthn/RecordOutcomeCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    const/16 v0, 0x11

    iput v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    :try_start_0
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->arePlayServicesAvailable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    new-instance v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-direct {v0, v1, p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;-><init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;Z)V

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    new-instance p1, Lorg/chromium/components/webauthn/Barrier;

    new-instance v0, Lcom/sec/terrace/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0}, Lorg/chromium/components/webauthn/Barrier;-><init>(Lorg/chromium/base/Callback;)V

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$8(Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V

    return-void
.end method

.method private buildClientDataJsonAndComputeHash(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)[B
    .locals 0

    invoke-static/range {p1 .. p7}, Lorg/chromium/content_public/browser/ClientDataJson;->buildClientDataJson(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    :try_start_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static synthetic c(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$handleIsUserVerifyingPlatformAuthenticatorAvailableRequest$9(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Boolean;)V

    return-void
.end method

.method private checkForMatchingCredentials(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v2

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object v6

    iget-object v7, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    iget-object v8, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    new-instance v9, LEa/a;

    invoke-direct {v9, p0, p1, p2, p3}, LEa/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;)V

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokeFido2GetCredentials(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Ljava/lang/String;LR5/e;LR5/d;)V

    return-void
.end method

.method private checkForMatchingCredentialsReceived(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/util/List;)V
    .locals 14
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;",
            "Lorg/chromium/url/Origin;",
            "[B",
            "Ljava/util/List<",
            "Lorg/chromium/components/webauthn/WebauthnCredentialDetails;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v8

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v9, 0x1

    const-string v2, "WebAuthentication.Android.NonDiscoverableCredentialsFound"

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;

    sget-object v3, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v8, v3, :cond_0

    iget-boolean v3, v1, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsDiscoverable:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v7, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    array-length v4, v3

    :goto_1
    if-ge v10, v4, :cond_3

    aget-object v5, v3, v10

    iget v11, v5, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    if-eqz v11, :cond_2

    :cond_1
    move-object/from16 v11, p3

    goto :goto_2

    :cond_2
    iget-object v5, v5, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    iget-object v11, v1, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    invoke-static {v5, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2, v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    invoke-static/range {p2 .. p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v11, p3

    invoke-direct {p0, p1, v0, v11, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v11, p3

    goto :goto_0

    :cond_4
    move-object/from16 v11, p3

    invoke-static {v2, v10}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    iget-object v12, v6, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    new-instance v13, Lorg/chromium/components/webauthn/j;

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/webauthn/j;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BI)V

    invoke-virtual {v12, v13}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->setNoCredentialsFallback(Ljava/lang/Runnable;)V

    iget-object v0, v6, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static/range {p2 .. p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v6, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    new-instance v12, Lorg/chromium/components/webauthn/g;

    invoke-direct {v12, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v8, v1, :cond_5

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    move-object v1, p1

    move-object/from16 v4, p3

    move-object v6, v12

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I

    return-void
.end method

.method private continueGetAssertionRequestAfterRpIdValidation(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Z)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v8, p2

    iget-object v0, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v1

    :goto_0
    if-nez v12, :cond_1

    iget-object v0, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->userVerificationMethods:Z

    :cond_1
    iget-object v0, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v0, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->appid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-boolean v11, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAppIdExtensionUsed:Z

    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0, v11}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_6

    const-string v0, "WebAuthenticationRemoteDesktopAllowedOriginsPolicy"

    invoke-static {v0}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v0, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    if-eqz v0, :cond_3

    new-instance v1, Lorg/chromium/url/Origin;

    iget-object v0, v0, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->origin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-direct {v1, v0}, Lorg/chromium/url/Origin;-><init>(Lorg/chromium/url/internal/mojom/Origin;)V

    invoke-static {v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v1, v1, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    iget-boolean v1, v1, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->sameOriginWithAncestors:Z

    xor-int/2addr v1, v11

    move-object v2, v0

    move v4, v1

    goto :goto_1

    :cond_3
    move/from16 v4, p5

    move-object v2, v13

    :goto_1
    const/4 v15, 0x2

    if-eqz p4, :cond_4

    move v1, v15

    goto :goto_2

    :cond_4
    move v1, v11

    :goto_2
    iget-object v3, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challenge:[B

    iget-object v6, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->buildClientDataJsonAndComputeHash(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)[B

    move-result-object v0

    if-nez v0, :cond_5

    invoke-direct {v9, v15}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_5
    move-object v15, v0

    goto :goto_3

    :cond_6
    move-object v15, v14

    :goto_3
    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    const/16 v1, 0x1e

    const-string v2, "Fido2Request"

    const/4 v3, 0x5

    if-nez v0, :cond_b

    iget v0, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v0, v11, :cond_7

    invoke-direct {v9, v3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_7
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getCredManSupportForWebView()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    iget-boolean v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-nez v0, :cond_8

    const-string v0, "Google Play Services\' Fido2 Api is not available."

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_8
    invoke-direct {v9, v10, v13, v15, v14}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void

    :cond_9
    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget-object v3, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    new-instance v6, Lorg/chromium/components/webauthn/g;

    invoke-direct {v6, v9}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v4, v15

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v9, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x3

    if-nez p4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v4

    sget-object v5, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v4, v5, :cond_11

    iget v1, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v1, v11, :cond_c

    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {v0, v5}, Lorg/chromium/components/webauthn/Barrier;->resetAndSetWaitStatus(Lorg/chromium/components/webauthn/Barrier$Mode;)V

    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static/range {p2 .. p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    new-instance v6, Lorg/chromium/components/webauthn/g;

    invoke-direct {v6, v9}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    iget-object v7, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object v4, v15

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startPrefetchRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/components/webauthn/Barrier;Z)V

    goto/16 :goto_5

    :cond_c
    if-eqz v12, :cond_e

    iget-boolean v1, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-eqz v1, :cond_e

    iget-object v1, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v6, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    new-instance v7, Lorg/chromium/components/webauthn/j;

    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/webauthn/j;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BI)V

    invoke-virtual {v6, v7}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->setNoCredentialsFallback(Ljava/lang/Runnable;)V

    :cond_d
    invoke-direct {v9, v10, v8, v15}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->checkForMatchingCredentials(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    goto :goto_5

    :cond_e
    iget-object v1, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v6, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    new-instance v7, Lorg/chromium/components/webauthn/j;

    const/4 v5, 0x2

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/webauthn/j;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BI)V

    invoke-virtual {v6, v7}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->setNoCredentialsFallback(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_f
    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-virtual {v0, v14}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->setNoCredentialsFallback(Ljava/lang/Runnable;)V

    :goto_4
    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static/range {p2 .. p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    new-instance v6, Lorg/chromium/components/webauthn/g;

    invoke-direct {v6, v9}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object v4, v15

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {v9, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    :cond_10
    :goto_5
    return-void

    :cond_11
    iget-boolean v4, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-nez v4, :cond_12

    const-string v0, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_12
    iget-object v1, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iget v2, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v2, v11, :cond_13

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {v9, v3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_13
    iget v2, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-eq v2, v11, :cond_15

    const-string v2, "WebAuthnTouchToFillCredentialSelection"

    invoke-static {v2}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v12, :cond_14

    goto :goto_6

    :cond_14
    move-object v2, v10

    goto/16 :goto_8

    :cond_15
    :goto_6
    invoke-static {v1, v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v0, v1, :cond_16

    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/Barrier;->resetAndSetWaitStatus(Lorg/chromium/components/webauthn/Barrier$Mode;)V

    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget-object v3, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    new-instance v6, Lorg/chromium/components/webauthn/g;

    invoke-direct {v6, v9}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    iget-object v7, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v4, v15

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startPrefetchRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/components/webauthn/Barrier;Z)V

    goto :goto_7

    :cond_16
    iget-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/Barrier;->resetAndSetWaitStatus(Lorg/chromium/components/webauthn/Barrier$Mode;)V

    :goto_7
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-string v0, "WebAuthenticationAndroidUsePasskeyCache"

    invoke-static {v0}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v0, "google.com"

    iget-object v1, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$Factory;->get(Z)Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    move-result-object v14

    :cond_17
    invoke-static {v14}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object v8

    iget-object v6, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    iget-object v5, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    new-instance v4, Lorg/chromium/components/webauthn/e;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v7

    move-object v3, v14

    move-object v10, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v15

    move v15, v7

    move-object/from16 v17, v8

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lorg/chromium/components/webauthn/e;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BJ)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;

    const/4 v1, 0x3

    invoke-direct {v0, v9, v15, v14, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    invoke-virtual {v1, v13, v2, v10, v0}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokeFido2GetCredentials(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Ljava/lang/String;LR5/e;LR5/d;)V

    if-eqz v15, :cond_18

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object v0

    iget-object v1, v9, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    move-object/from16 v2, p1

    iget-object v2, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    new-instance v3, LO4/e;

    const/4 v4, 0x4

    invoke-direct {v3, v11, v12, v14, v4}, LO4/e;-><init>(JLjava/lang/Object;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v5, 0x16

    invoke-direct {v4, v5, v14}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokePasskeyCacheGetCredentials(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Ljava/lang/String;LR5/e;LR5/d;)V

    :cond_18
    return-void

    :goto_8
    if-eqz v12, :cond_19

    iget v0, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-eq v0, v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v0, v1, :cond_19

    invoke-direct {v9, v2, v8, v15}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->checkForMatchingCredentials(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void

    :cond_19
    invoke-direct {v9, v2, v13, v15, v14}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method

.method private continueMakeCredentialRequestAfterRpIdValidation(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Z)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    iget-object v0, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->residentKey:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v9, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v1

    :goto_1
    iget-boolean v0, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->credProps:Z

    iput-boolean v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mEchoCredProps:Z

    iget-object v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static/range {p3 .. p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WebAuthenticationRemoteDesktopAllowedOriginsPolicy"

    invoke-static {v3}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    if-eqz v3, :cond_2

    new-instance v0, Lorg/chromium/url/Origin;

    iget-object v3, v3, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->origin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-direct {v0, v3}, Lorg/chromium/url/Origin;-><init>(Lorg/chromium/url/internal/mojom/Origin;)V

    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    iget-boolean v3, v3, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->sameOriginWithAncestors:Z

    xor-int/2addr v1, v3

    move-object v3, v0

    move v4, v1

    goto :goto_2

    :cond_2
    move/from16 v4, p6

    move-object v3, v0

    :goto_2
    iget-object v5, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->challenge:[B

    iget-boolean v0, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    if-eqz v0, :cond_3

    move-object/from16 v6, p5

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    iget-object v0, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    iget-object v7, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->name:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->buildClientDataJsonAndComputeHash(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)[B

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_4
    move-object v13, v0

    goto :goto_4

    :cond_5
    move-object v13, v2

    :goto_4
    iget-object v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/16 v3, 0x1e

    const-string v4, "Fido2Request"

    if-nez v0, :cond_9

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getCredManSupportForWebView()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_7

    iget-boolean v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-nez v0, :cond_6

    const-string v0, "Google Play Services\' Fido2 API is not available."

    invoke-static {v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_6
    :try_start_0
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object v9

    iget-object v10, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-static/range {p3 .. p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getMaybeResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v15

    new-instance v0, Lorg/chromium/components/webauthn/g;

    invoke-direct {v0, v8}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    new-instance v3, Lorg/chromium/components/webauthn/g;

    invoke-direct {v3, v8}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v9 .. v17}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokeFido2MakeCredential(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;LR5/e;LR5/d;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput v2, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    invoke-direct {v8, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_7
    iget-object v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static/range {p3 .. p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    new-instance v6, Lorg/chromium/components/webauthn/g;

    invoke-direct {v6, v8}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    move-object/from16 v1, p1

    move-object v4, v13

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startMakeRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {v8, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    :cond_8
    return-void

    :cond_9
    if-nez v9, :cond_b

    iget-boolean v0, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    sget-object v5, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v0, v5, :cond_b

    iget-object v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static/range {p3 .. p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v5, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    new-instance v6, Lorg/chromium/components/webauthn/g;

    invoke-direct {v6, v8}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    move-object/from16 v1, p1

    move-object v4, v13

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startMakeRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;)I

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v8, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    :cond_a
    return-void

    :cond_b
    iget-boolean v0, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-nez v0, :cond_c

    const-string v0, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_c
    :try_start_1
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object v9

    iget-object v10, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-static/range {p3 .. p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getMaybeResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v15

    new-instance v0, Lorg/chromium/components/webauthn/g;

    invoke-direct {v0, v8}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    new-instance v3, Lorg/chromium/components/webauthn/g;

    invoke-direct {v3, v8}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v9 .. v17}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokeFido2MakeCredential(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;LR5/e;LR5/d;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    iput v2, v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    invoke-direct {v8, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method private static convertError(Landroid/util/Pair;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x9

    const/16 v2, 0xb

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1e

    const/4 v3, 0x2

    if-eq v0, v2, :cond_6

    const/16 v4, 0x12

    if-eq v0, v4, :cond_5

    const/16 v4, 0x17

    if-eq v0, v4, :cond_4

    const/16 v4, 0x23

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "The device is not secured with any screen lock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    return v1

    :cond_1
    const-string v0, "Authentication request must have non-empty allowList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Request doesn\'t have a valid list of allowed credentials."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    const/16 p0, 0xa

    return p0

    :cond_4
    return v3

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    const-string v0, "One of the excluded credentials exists on the local device"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x4

    return p0

    :cond_7
    :pswitch_1
    const-string v0, "Low level error 0x6a80"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v3

    :cond_8
    :goto_1
    return v1

    :cond_9
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getPort()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/net/GURLUtils;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/chromium/components/webauthn/Fido2CredentialRequest;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$handleGetMatchingCredentialIdsRequest$11([[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;Ljava/util/List;)V

    return-void
.end method

.method private dispatchHybridGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->REQUEST_SENT_TO_PLATFORM:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne v0, v1, :cond_0

    const-string p0, "Fido2Request"

    const-string p1, "Received a second credential selection while the first still in progress."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getFido2ApiCallParams(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall;

    iget-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v2}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;-><init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V

    invoke-virtual {v1}, Lorg/chromium/components/webauthn/Fido2ApiCall;->start()Landroid/os/Parcel;

    move-result-object v2

    iget-object v0, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mCallbackDescriptor:Ljava/lang/String;

    new-instance v9, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;

    invoke-direct {v9, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p3

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lorg/chromium/components/webauthn/Fido2Api;->appendBrowserGetAssertionOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V

    const/16 p1, 0x1542

    const/4 p2, 0x5

    invoke-virtual {v1, p1, p2, v2, v9}, Lorg/chromium/components/webauthn/Fido2ApiCall;->run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;

    move-result-object p1

    new-instance p2, Lorg/chromium/components/webauthn/g;

    invoke-direct {p2, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    invoke-virtual {p1, p2}, LR5/h;->e(LR5/e;)LR5/p;

    new-instance p2, Lorg/chromium/components/webauthn/g;

    invoke-direct {p2, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    invoke-virtual {p1, p2}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method

.method public static synthetic e(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$handleGetAssertionRequest$1(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$6(ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic g(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/components/webauthn/Barrier$Mode;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/lang/Exception;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$checkForMatchingCredentials$15(Lorg/chromium/components/webauthn/Barrier$Mode;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/lang/Exception;)V

    return-void
.end method

.method private getMaybeResultReceiver()Landroid/os/ResultReceiver;
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$1;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static synthetic h(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$handleMakeCredentialRequest$0(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V

    return-void
.end method

.method private handleFido2Response(ILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v2, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v3, ""

    const-string v4, " "

    const-string v5, "FIDO2 API call resulted in error: "

    const-string v6, "Fido2Request"

    if-eq v1, v2, :cond_5

    if-eqz p2, :cond_1

    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    check-cast p2, Landroid/util/Pair;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertError(Landroid/util/Pair;)I

    :cond_3
    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object p2, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne p1, p2, :cond_4

    iput-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onFido2ApiCancelled()V

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_1
    return-void

    :cond_5
    :goto_2
    if-nez p2, :cond_6

    goto/16 :goto_3

    :cond_6
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_9

    check-cast p2, Landroid/util/Pair;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_7

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertError(Landroid/util/Pair;)I

    move-result p1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getAssertionOutcomeCodeFromFidoError(Landroid/util/Pair;)I

    move-result p2

    iput p2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->makeCredentialOutcomeCodeFromFidoError(Landroid/util/Pair;)I

    move-result p2

    iput p2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    instance-of v0, p2, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    if-eqz v0, :cond_e

    check-cast p2, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    iget-boolean p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mEchoCredProps:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p2, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoCredProps:Z

    :cond_a
    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    if-eqz p1, :cond_b

    iget-object v0, p2, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    iput-object p1, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    :cond_b
    invoke-interface {v1, v3, p2}, Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;->onRegisterResponse(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V

    iput-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    return-void

    :cond_c
    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    if-eqz v1, :cond_e

    instance-of v1, p2, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    if-eqz v1, :cond_e

    check-cast p2, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    if-eqz p1, :cond_d

    iget-object v1, p2, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    iput-object p1, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->notifyWebAuthnAssertionRequestSucceeded()V

    :cond_d
    iget-object p1, p2, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAppIdExtensionUsed:Z

    iput-boolean v0, p1, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoAppidExtension:Z

    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    invoke-interface {p1, v3, p2}, Lorg/chromium/components/webauthn/GetAssertionResponseCallback;->onSignResponse(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V

    iput-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    return-void

    :cond_e
    :goto_3
    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method public static synthetic i(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->onBinderCallException(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic j(JLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/util/List;)V
    .locals 1

    const-string v0, "WebAuthentication.CredentialFetchDuration.GmsCorePasskeyCache"

    invoke-static {v0, p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$7(Ljava/lang/String;JLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$onWebauthnCredentialDetailsListReceived$13(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method

.method public static synthetic l(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->setOutcomeAndReturnError(ILjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$checkForMatchingCredentials$14(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->checkForMatchingCredentialsReceived(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$checkForMatchingCredentials$15(Lorg/chromium/components/webauthn/Barrier$Mode;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/lang/Exception;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIDO2 call to enumerate credentials failed. Dispatching to CredMan. Barrier.Mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fido2Request"

    invoke-static {v1, v0, p5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mClientDataJson:[B

    iget-object v7, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    new-instance v8, Lorg/chromium/components/webauthn/g;

    invoke-direct {v8, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v9, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v9}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I

    return-void
.end method

.method private synthetic lambda$checkForMatchingCredentialsReceived$16(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 1

    invoke-static {p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method

.method private synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$2(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 1

    invoke-static {p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method

.method private synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$3(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 1

    invoke-static {p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->convertOriginToString(Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method

.method private synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$4(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->onWebauthnCredentialDetailsListReceived(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V

    return-void
.end method

.method private synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$5(ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BJLjava/util/List;)V
    .locals 11

    if-eqz p1, :cond_0

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    move-object v1, p2

    invoke-virtual {p2, v0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->onGetCredentialsSuccessful(I)V

    :cond_0
    move-object v0, p0

    iget-object v9, v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    new-instance v10, Lorg/chromium/components/webauthn/f;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/chromium/components/webauthn/f;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V

    invoke-virtual {v9, v10}, Lorg/chromium/components/webauthn/Barrier;->onFido2ApiSuccessful(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$6(ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->onGetCredentialsFailed()V

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/Barrier;->onFido2ApiFailed(I)V

    return-void
.end method

.method private static synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$7(Ljava/lang/String;JLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/util/List;)V
    .locals 2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->onCachedGetCredentialsSuccessful(I)V

    return-void
.end method

.method private static synthetic lambda$continueGetAssertionRequestAfterRpIdValidation$8(Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->onCachedGetCredentialsFailed()V

    return-void
.end method

.method private synthetic lambda$handleGetAssertionRequest$1(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING_RP_ID_VALIDATION_COMPLETE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne v0, v1, :cond_0

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget v0, p5, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;->securityCheckResult:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    invoke-direct {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_1
    iget-boolean v6, p5, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;->isCrossOrigin:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->continueGetAssertionRequestAfterRpIdValidation(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Z)V

    return-void
.end method

.method private synthetic lambda$handleGetMatchingCredentialIdsRequest$11([[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p4, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->onGetMatchingCredentialIdsListReceived(Ljava/util/List;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;)V

    return-void
.end method

.method private static synthetic lambda$handleIsUserVerifyingPlatformAuthenticatorAvailableRequest$10(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Fido2Request"

    const-string v1, "FIDO2 API call failed"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    return-void
.end method

.method private static synthetic lambda$handleIsUserVerifyingPlatformAuthenticatorAvailableRequest$9(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    return-void
.end method

.method private synthetic lambda$handleMakeCredentialRequest$0(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V
    .locals 8

    iget v0, p6, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;->securityCheckResult:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    invoke-direct {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_0
    iget-boolean v7, p6, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;->isCrossOrigin:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->continueMakeCredentialRequestAfterRpIdValidation(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Z)V

    return-void
.end method

.method private synthetic lambda$onWebauthnCredentialDetailsListReceived$12(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->dispatchHybridGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V

    return-void
.end method

.method private synthetic lambda$onWebauthnCredentialDetailsListReceived$13(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method

.method public static synthetic m(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$onWebauthnCredentialDetailsListReceived$12(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V

    return-void
.end method

.method private maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->REQUEST_SENT_TO_PLATFORM:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v2, "Fido2Request"

    if-ne v0, v1, :cond_0

    const-string p0, "Received a second credential selection while the first still in progress."

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    array-length v3, p4

    if-nez v3, :cond_2

    iget p1, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne p1, v0, :cond_1

    const-string p1, "Empty credential ID from account selection."

    invoke-static {v2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {p2}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_2
    new-instance v2, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-direct {v2}, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    iput-object p4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    const/4 p4, 0x4

    filled-new-array {p4}, [I

    move-result-object p4

    iput-object p4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    filled-new-array {v2}, [Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    move-result-object p4

    iput-object p4, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    :cond_3
    iget p4, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne p4, v0, :cond_4

    iput-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :cond_4
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getMaybeResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v7

    new-instance v8, Lorg/chromium/components/webauthn/g;

    invoke-direct {v8, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    new-instance v9, Lorg/chromium/components/webauthn/g;

    invoke-direct {v9, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v9}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokeFido2GetAssertion(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[BLandroid/os/ResultReceiver;LR5/e;LR5/d;)V

    return-void
.end method

.method public static synthetic n(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$handleIsUserVerifyingPlatformAuthenticatorAvailableRequest$10(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic o(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$4(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V

    return-void
.end method

.method private onBinderCallException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Fido2Request"

    const-string v1, "FIDO2 API call failed"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method private onGetMatchingCredentialIdsListReceived(Ljava/util/List;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/webauthn/WebauthnCredentialDetails;",
            ">;[[BZ",
            "Lorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;

    if-eqz p3, :cond_1

    iget-boolean v1, v0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsPayment:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    iget-object v4, v0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p4, p0}, Lorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method private onGotPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3

    const/16 v0, 0x1e

    const-string v1, "Fido2Request"

    if-nez p1, :cond_0

    const-string p1, "Didn\'t receive a pending intent."

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v2}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getIntentSender()Lorg/chromium/components/webauthn/FidoIntentSender;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Lorg/chromium/components/webauthn/FidoIntentSender;->showIntent(Landroid/app/PendingIntent;Lorg/chromium/base/Callback;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Failed to send intent to FIDO API"

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    :cond_1
    return-void
.end method

.method private onResultReceiverResult(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "FIDO2_CREDENTIAL_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/chromium/components/webauthn/Fido2Api;->parseResponse([B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Fido2Request"

    const-string v2, "Failed to parse FIDO2 API response from ResultReceiver"

    invoke-static {v1, v2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/16 p1, 0x1e

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleFido2Response(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BJLjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$5(ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BJLjava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lorg/chromium/components/webauthn/Fido2CredentialRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method public static synthetic r(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$checkForMatchingCredentials$14(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BLjava/util/List;)V

    return-void
.end method

.method private recordOutcomeMetric()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mRecordingCallback:Lorg/chromium/components/webauthn/RecordOutcomeCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    :goto_0
    invoke-interface {v0, v1}, Lorg/chromium/components/webauthn/RecordOutcomeCallback;->record(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mRecordingCallback:Lorg/chromium/components/webauthn/RecordOutcomeCallback;

    :cond_1
    return-void
.end method

.method private returnErrorAndResetCallback(I)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->recordOutcomeMetric()V

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mErrorCallback:Lorg/chromium/components/webauthn/FidoErrorResponseCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/chromium/components/webauthn/FidoErrorResponseCallback;->onError(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mErrorCallback:Lorg/chromium/components/webauthn/FidoErrorResponseCallback;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    return-void
.end method

.method public static synthetic s(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$2(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void
.end method

.method private setOutcomeAndReturnError(ILjava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void
.end method

.method public static synthetic t(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$continueGetAssertionRequestAfterRpIdValidation$3(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void
.end method

.method public static synthetic u(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->lambda$checkForMatchingCredentialsReceived$16(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void
.end method

.method public static synthetic v(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->onGotPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic w(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->onResultReceiverResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public cancelConditionalGetAssertion()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-virtual {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->cancelConditionalGetAssertion()V

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$2;->$SwitchMap$org$chromium$components$webauthn$Fido2CredentialRequest$ConditionalUiState:[I

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onFido2ApiCancelled()V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onFido2ApiCancelled()V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING_RP_ID_VALIDATION_COMPLETE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_0
    return-void
.end method

.method public destroyBridge()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBrowserBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBrowserBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    return-void
.end method

.method public getAssertionOutcomeCodeFromFidoError(Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x12

    if-eq p0, v0, :cond_8

    const/16 v0, 0x17

    if-eq p0, v0, :cond_7

    const/16 v0, 0x23

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1c

    const/16 v1, 0xe

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "The device is not secured with any screen lock"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    return v1

    :cond_2
    const-string p0, "Low level error 0x6a80"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    const-string p0, "Authentication request must have non-empty allowList"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "Request doesn\'t have a valid list of allowed credentials."

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/16 p0, 0x9

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x5

    return p0

    :cond_7
    const/16 p0, 0xd

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getCredManSupport()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object p0

    :cond_0
    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object p0

    :cond_2
    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object p0

    :cond_3
    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object p0
.end method

.method public getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBrowserBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBrowserBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mBrowserBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    return-object p0
.end method

.method public handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V
    .locals 11

    move-object v1, p0

    move-object v2, p1

    iget-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v6

    move-object/from16 v0, p5

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    move-object/from16 v0, p6

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mErrorCallback:Lorg/chromium/components/webauthn/FidoErrorResponseCallback;

    move-object/from16 v0, p7

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mRecordingCallback:Lorg/chromium/components/webauthn/RecordOutcomeCallback;

    iget-object v0, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challenge:[B

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_0
    const-string v0, "WebAuthenticationRemoteDesktopAllowedOriginsPolicy"

    invoke-static {v0}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v0, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/chromium/url/Origin;

    iget-object v3, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v3, v3, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    iget-object v3, v3, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->origin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-direct {v0, v3}, Lorg/chromium/url/Origin;-><init>(Lorg/chromium/url/internal/mojom/Origin;)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_RP_ID_VALIDATION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-object v8, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v9, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    new-instance v10, Lorg/chromium/components/webauthn/d;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/webauthn/d;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;)V

    move-object v1, v6

    move-object v2, v8

    move v4, v9

    move-object v5, v7

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Lorg/chromium/content_public/browser/RenderFrameHost;->performGetAssertionWebAuthSecurityChecks(Ljava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public handleGetMatchingCredentialIdsRequest(Ljava/lang/String;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;)V
    .locals 2

    iput-object p5, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mErrorCallback:Lorg/chromium/components/webauthn/FidoErrorResponseCallback;

    iget-boolean p5, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-nez p5, :cond_0

    const-string p1, "Fido2Request"

    const-string p2, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {p1, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->returnErrorAndResetCallback(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    move-result-object p5

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;)V

    new-instance p2, Lorg/chromium/components/webauthn/g;

    invoke-direct {p2, p0}, Lorg/chromium/components/webauthn/g;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V

    invoke-virtual {p5, v0, p1, v1, p2}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->invokeFido2GetCredentials(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Ljava/lang/String;LR5/e;LR5/d;)V

    return-void
.end method

.method public handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getCredManSupportForWebView()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mPlayServicesAvailable:Z

    if-nez v0, :cond_3

    const-string p0, "Fido2Request"

    const-string v0, "Google Play Services\' Fido2PrivilegedApi is not available."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    return-void

    :cond_3
    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getFido2ApiCallParams(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {p0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;-><init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V

    new-instance p0, Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;-><init>()V

    invoke-virtual {v1}, Lorg/chromium/components/webauthn/Fido2ApiCall;->start()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mIsUserVerifyingPlatformAuthenticatorAvailableMethodId:I

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3, v2, p0}, Lorg/chromium/components/webauthn/Fido2ApiCall;->run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;

    move-result-object p0

    new-instance v0, Lorg/chromium/components/webauthn/i;

    invoke-direct {v0, p1}, Lorg/chromium/components/webauthn/i;-><init>(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V

    invoke-virtual {p0, v0}, LR5/h;->e(LR5/e;)LR5/p;

    new-instance v0, Lorg/chromium/components/webauthn/i;

    invoke-direct {v0, p1}, Lorg/chromium/components/webauthn/i;-><init>(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V

    invoke-virtual {p0, v0}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method

.method public handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    iget-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v7

    move-object/from16 v0, p6

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    move-object/from16 v0, p7

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mErrorCallback:Lorg/chromium/components/webauthn/FidoErrorResponseCallback;

    move-object/from16 v0, p8

    iput-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mRecordingCallback:Lorg/chromium/components/webauthn/RecordOutcomeCallback;

    const-string v0, "WebAuthenticationRemoteDesktopAllowedOriginsPolicy"

    invoke-static {v0}, Lorg/chromium/device/DeviceFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->isChrome(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/url/Origin;

    iget-object v3, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    iget-object v3, v3, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->origin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-direct {v0, v3}, Lorg/chromium/url/Origin;-><init>(Lorg/chromium/url/internal/mojom/Origin;)V

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    iget-object v9, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->id:Ljava/lang/String;

    iget-boolean v10, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    new-instance v11, Lorg/chromium/components/webauthn/k;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/components/webauthn/k;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;)V

    move-object v1, v7

    move-object v2, v9

    move-object v3, p3

    move v4, v10

    move-object v5, v8

    move-object v6, v11

    invoke-interface/range {v1 .. v6}, Lorg/chromium/content_public/browser/RenderFrameHost;->performMakeCredentialWebAuthSecurityChecks(Ljava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public makeCredentialOutcomeCodeFromFidoError(Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xb

    const/16 v1, 0x11

    if-eq p0, v0, :cond_7

    const/16 v0, 0x12

    if-eq p0, v0, :cond_6

    const/16 v0, 0x17

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Authentication request must have non-empty allowList"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Request doesn\'t have a valid list of allowed credentials."

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x5

    return p0

    :cond_3
    const-string p0, "The device is not secured with any screen lock"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    return v1

    :cond_5
    const/16 p0, 0x10

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    const-string p0, "One of the excluded credentials exists on the local device"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    :goto_1
    return v1
.end method

.method public onResult(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/16 v3, 0x1e

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "FIDO2 PendingIntent resulted in code: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fido2Request"

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    if-eqz p1, :cond_1

    iput v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mGetAssertionErrorOutcome:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    if-eqz p1, :cond_4

    iput v2, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mMakeCredentialErrorOutcome:I

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {p1}, Lorg/chromium/components/webauthn/Fido2Api;->parseIntentResponse(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0, v2, v4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleFido2Response(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->onResult(Landroid/util/Pair;)V

    return-void
.end method

.method public onWebauthnCredentialDetailsListReceived(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lorg/chromium/components/webauthn/WebauthnCredentialDetails;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p5

    const-string p5, "WebAuthentication.CredentialFetchDuration.GmsCore"

    invoke-static {p5, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    :cond_2
    iget-object p5, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object p6, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne p5, p6, :cond_3

    sget-object p1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return-void

    :cond_3
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;

    iget-boolean v3, p6, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsDiscoverable:Z

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget-object v7, p6, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    iget-object v6, v6, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const/4 p4, 0x0

    if-nez v1, :cond_9

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_9

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object p6

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-eq p6, v0, :cond_9

    sget-object p5, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object p5, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->maybeDispatchGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void

    :cond_9
    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isHybridClientApiSupported()Z

    move-result p6

    if-eqz p6, :cond_a

    new-instance p4, LH6/a;

    const/16 v7, 0xa

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_a
    move-object p6, p4

    sget-object p4, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object p4, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object p4

    invoke-static {p4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object p4

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v0

    new-instance v2, Lorg/chromium/components/webauthn/h;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/chromium/components/webauthn/h;-><init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V

    move-object p0, p4

    move-object p1, v0

    move-object p2, p5

    move p3, v1

    move-object p4, v2

    move-object p5, p6

    invoke-virtual/range {p0 .. p5}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->onCredentialsDetailsListReceived(Lorg/chromium/content_public/browser/RenderFrameHost;Ljava/util/List;ZLorg/chromium/base/Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCredManHelperForTesting(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->mCredManHelper:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    return-void
.end method
