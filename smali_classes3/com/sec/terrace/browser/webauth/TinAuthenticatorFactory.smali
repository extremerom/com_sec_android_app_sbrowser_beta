.class public Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/blink/mojom/Authenticator;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x22

    if-lt p0, p1, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->setGlobalWebauthnMode(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->setGlobalWebauthnMode(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createImpl()Lorg/chromium/blink/mojom/Authenticator;
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isWebAuthnPasskeyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoAuthenticator;

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoAuthenticator;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {v0}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :cond_4
    move-object v3, v1

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getMainFrame()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedOrigin()Lorg/chromium/url/Origin;

    move-result-object v8

    new-instance v1, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;

    new-instance v5, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;

    invoke-direct {v5, v0}, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V

    return-object v1
.end method

.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webauth/TinAuthenticatorFactory;->createImpl()Lorg/chromium/blink/mojom/Authenticator;

    move-result-object p0

    return-object p0
.end method
