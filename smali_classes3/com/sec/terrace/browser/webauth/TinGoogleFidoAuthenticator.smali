.class Lcom/sec/terrace/browser/webauth/TinGoogleFidoAuthenticator;
.super Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorImpl;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void
.end method


# virtual methods
.method public getAssertionInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V

    return-void
.end method

.method public getClientCapabilities(Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;)V
    .locals 0

    return-void
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "com.google.android.gms"

    invoke-static {p0}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Ljava/lang/String;)I

    move-result p0

    const p1, 0x101b890

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserVerifyingPlatformAuthenticatorAvailableInternal(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/content_public/browser/RenderFrameHost;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V

    return-void
.end method

.method public makeCredentialInternal(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V

    return-void
.end method

.method public report(Lorg/chromium/blink/mojom/PublicKeyCredentialReportOptions;Lorg/chromium/blink/mojom/Authenticator$Report_Response;)V
    .locals 0

    const/4 p0, 0x5

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lorg/chromium/blink/mojom/Authenticator$Report_Response;->call(ILorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    return-void
.end method
