.class Lcom/sec/terrace/browser/webauth/TinSamsungFidoAuthenticator;
.super Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;
.source "SourceFile"


# virtual methods
.method public getAssertionInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;->handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V

    return-void
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUserVerifyingPlatformAuthenticatorAvailableInternal(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;->handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/content_public/browser/RenderFrameHost;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V

    return-void
.end method

.method public makeCredentialInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;->handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V

    return-void
.end method

.method public report(Lorg/chromium/blink/mojom/PublicKeyCredentialReportOptions;Lorg/chromium/blink/mojom/Authenticator$Report_Response;)V
    .locals 0

    const/4 p0, 0x5

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lorg/chromium/blink/mojom/Authenticator$Report_Response;->call(ILorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    return-void
.end method
