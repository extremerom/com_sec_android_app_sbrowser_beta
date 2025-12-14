.class public Lorg/chromium/components/webauthn/cred_man/CredManHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final CRED_MAN_EXCEPTION_CREATE_CREDENTIAL_TYPE_INVALID_STATE_ERROR:Ljava/lang/String; = "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final CRED_MAN_PREFIX:Ljava/lang/String; = "androidx.credentials."

.field protected static final TYPE_PASSKEY:Ljava/lang/String; = "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"


# instance fields
.field private final mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

.field private mBarrier:Lorg/chromium/components/webauthn/Barrier;

.field private final mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

.field private mClientDataJson:[B

.field private mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field private mCredManRequestDecorator:Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;

.field private mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

.field private mNoCredentialsFallback:Ljava/lang/Runnable;

.field private mPlayServicesAvailable:Z

.field private mRequestPasswords:Z


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    iput-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    iput-boolean p3, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mPlayServicesAvailable:Z

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object p2

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getCredManRequestDecorator(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mCredManRequestDecorator:Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mClientDataJson:[B

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return-object p0
.end method

.method private buildGetCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BZZZ)Landroid/credentials/GetCredentialRequest;
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->getOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;

    move-object v2, p1

    move-object v4, p3

    move v5, p5

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;-><init>(Ljava/lang/String;[BZZZ)V

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->setOrigin(Ljava/lang/String;)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mPlayServicesAvailable:Z

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->setPlayServicesAvailable(Z)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->setIgnoreGpm(Z)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {p2}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->setRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->build()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mCredManRequestDecorator:Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;

    invoke-virtual {p1, p0}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getGetCredentialRequest(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/GetCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mNoCredentialsFallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->notifyBrowserOnCredManClosed(Z)V

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/mojo/bindings/DeserializationException;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->logDeserializationException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static logDeserializationException(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "CredManHelper"

    const-string v1, "Failed to parse Mojo object. If this is happening in a test, and authenticator.mojom was updated, then you\'ll need to update the fake Mojo structures in Fido2ApiTestHelper. Robolectric doesn\'t support JNI calls so the JNI calls to translate from JSON -> serialized Mojo are mocked out and the responses are hard-coded. If the Mojo structure is updated then the responses also need to be updated. Flip `kUpdateRobolectricTests` in `value_conversions_unittest.cc`, run `component_unittests --gtest_filter=\"WebAuthnentication*\"` and it\'ll print out updated Java literals for `Fido2ApiTestHelper.java`. Run against an Android target otherwise decoding may still fail in tests."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private notifyBrowserOnCredManClosed(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {p0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->onCredManUiClosed(Lorg/chromium/content_public/browser/RenderFrameHost;Z)V

    return-void
.end method


# virtual methods
.method public cancelConditionalGetAssertion()V
    .locals 2

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$4;->$SwitchMap$org$chromium$components$webauthn$Fido2CredentialRequest$ConditionalUiState:[I

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupCredManRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onCredManCancelled()V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onCredManCancelled()V

    :goto_0
    return-void
.end method

.method public setNoCredentialsFallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mNoCredentialsFallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setRequestPasswords(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mRequestPasswords:Z

    return-void
.end method

.method public shouldPreferImmediatelyAvailable(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lorg/chromium/blink/mojom/Mediation$EnumType;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {p0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->is(Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method public startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v0, p3

    iput-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mClientDataJson:[B

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v3

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/chromium/components/webauthn/Barrier;

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    new-instance v10, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v5, p6

    move-object v6, p1

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;-><init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/components/webauthn/Barrier;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;)V

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const/4 v7, 0x2

    const/4 v11, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CredManHelper"

    const-string v1, "Received a second credential selection while the first still in progress."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    iget-object v1, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v0, v11, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    return v7

    :cond_0
    iget v0, v9, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v0, v11, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_0
    iput-object v1, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-boolean v4, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mRequestPasswords:Z

    invoke-virtual {p0, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->shouldPreferImmediatelyAvailable(I)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->buildGetCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BZZZ)Landroid/credentials/GetCredentialRequest;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    iget-object v1, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v0, v11, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget v0, v9, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v0, v11, :cond_2

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_1
    iput-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return v7

    :cond_3
    iget-object v1, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "credential"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/components/autofill/b;->g(Ljava/lang/Object;)Landroid/credentials/CredentialManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v2, v1, v0, v3, v10}, Lorg/chromium/components/autofill/b;->v(Landroid/credentials/CredentialManager;Landroid/content/Context;Landroid/credentials/GetCredentialRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v0, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    iget-object v1, v8, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    return v2
.end method

.method public startMakeRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iput-object p3, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mClientDataJson:[B

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object p3

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->createOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;

    invoke-direct {v0, p0, p6, p1, p5}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;-><init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;)V

    new-instance p5, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;

    invoke-direct {p5, p3, p4}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;-><init>(Ljava/lang/String;[B)V

    iget-object p1, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->id:[B

    invoke-virtual {p5, p1}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->setUserId([B)Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->setOrigin(Ljava/lang/String;)Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->build()Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mCredManRequestDecorator:Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getCreateCredentialRequest(Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;)Landroid/credentials/CreateCredentialRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {p2}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "credential"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lorg/chromium/components/autofill/b;->g(Ljava/lang/Object;)Landroid/credentials/CredentialManager;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p4

    invoke-static {p3, p2, p1, p4, v0}, Lorg/chromium/components/autofill/b;->u(Landroid/credentials/CredentialManager;Landroid/content/Context;Landroid/credentials/CreateCredentialRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    return p1
.end method

.method public startPrefetchRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/components/webauthn/Barrier;Z)V
    .locals 17
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-object v15, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBarrier:Lorg/chromium/components/webauthn/Barrier;

    iget-object v0, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mBridgeProvider:Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;->getBridge()Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v0, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v0}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v4

    new-instance v11, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v16, v11

    move/from16 v11, p8

    invoke-direct/range {v0 .. v13}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;-><init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Barrier;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;ZJ)V

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->buildGetCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BZZZ)Landroid/credentials/GetCredentialRequest;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iput-object v0, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mConditionalUiState:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    iget-object v0, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredmanPrepareRequestHistogram(I)V

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lorg/chromium/components/webauthn/Barrier;->onCredManFailed(I)V

    return-void

    :cond_0
    iget-object v1, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mAuthenticationContextProvider:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    invoke-interface {v1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "credential"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/components/autofill/b;->g(Ljava/lang/Object;)Landroid/credentials/CredentialManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-static {v2, v0, v1, v3}, Lorg/chromium/components/autofill/b;->w(Landroid/credentials/CredentialManager;Landroid/credentials/GetCredentialRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v0, v14, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->mMetricsHelper:Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredmanPrepareRequestHistogram(I)V

    return-void
.end method
