.class Lcom/sec/terrace/browser/webauth/TinSamsungFidoCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V
    .locals 0

    return-void
.end method

.method public handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/content_public/browser/RenderFrameHost;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V
    .locals 0

    return-void
.end method

.method public handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;Lcom/sec/terrace/browser/webauth/TinHandlerResponseCallback;)V
    .locals 0

    return-void
.end method
