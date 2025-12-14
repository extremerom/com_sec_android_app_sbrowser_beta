.class abstract Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;
.super Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/Authenticator;


# instance fields
.field private mGetAssertionCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

.field private mIsOperationPending:Z

.field private mIsUserVerifyingPlatformAuthenticatorAvailableCallbackQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

.field private mOrigin:Lorg/chromium/url/Origin;

.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsUserVerifyingPlatformAuthenticatorAvailableCallbackQueue:Ljava/util/Queue;

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedOrigin()Lorg/chromium/url/Origin;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

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


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsOperationPending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    iput-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mGetAssertionCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    return-void
.end method

.method public abstract getAssertionInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
.end method

.method public getClientCapabilities(Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;)V
    .locals 0

    return-void
.end method

.method public getCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsOperationPending:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mGetAssertionCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->isSupported(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->onError(Ljava/lang/Integer;)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsOperationPending:Z

    iget-object p2, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->getAssertionInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V

    return-void
.end method

.method public isConditionalMediationAvailable(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;->call(Z)V

    return-void
.end method

.method public abstract isSupported(Landroid/content/Context;)Z
.end method

.method public isUserVerifyingPlatformAuthenticatorAvailable(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;->call(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;->call(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsUserVerifyingPlatformAuthenticatorAvailableCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->isUserVerifyingPlatformAuthenticatorAvailableInternal(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void
.end method

.method public abstract isUserVerifyingPlatformAuthenticatorAvailableInternal(Lorg/chromium/content_public/browser/RenderFrameHost;)V
.end method

.method public makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsOperationPending:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, v1, p0, p0}, Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;->call(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->isSupported(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->onError(Ljava/lang/Integer;)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsOperationPending:Z

    iget-object p2, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mOrigin:Lorg/chromium/url/Origin;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->makeCredentialInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V

    return-void
.end method

.method public abstract makeCredentialInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->close()V

    return-void
.end method

.method public onError(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, v1, v1}, Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;->call(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mGetAssertionCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->close()V

    return-void
.end method

.method public onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mIsUserVerifyingPlatformAuthenticatorAvailableCallbackQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;->call(Z)V

    return-void
.end method

.method public onRegisterResponse(Ljava/lang/Integer;Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mMakeCredentialCallback:Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;->call(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->close()V

    return-void
.end method

.method public onSignResponse(Ljava/lang/Integer;Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->mGetAssertionCallback:Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->getCredentialResponseForAssertion(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)Lorg/chromium/blink/mojom/GetCredentialResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;->call(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;->close()V

    return-void
.end method
