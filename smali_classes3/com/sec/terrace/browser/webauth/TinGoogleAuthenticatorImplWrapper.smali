.class public Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;
.super Lorg/chromium/components/webauthn/AuthenticatorImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/Authenticator;


# static fields
.field private static sFido2CredentialRequestOverrideForTesting:Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;


# instance fields
.field private mIntentSender:Lorg/chromium/components/webauthn/FidoIntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 0
    .param p4    # Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lorg/chromium/components/webauthn/AuthenticatorImpl;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V

    iput-object p3, p0, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;->mIntentSender:Lorg/chromium/components/webauthn/FidoIntentSender;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;->sFido2CredentialRequestOverrideForTesting:Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;->cleanup()V

    sput-object v1, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;->sFido2CredentialRequestOverrideForTesting:Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;

    :cond_0
    invoke-super {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->close()V

    iput-object v1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;->mIntentSender:Lorg/chromium/components/webauthn/FidoIntentSender;

    return-void
.end method

.method public getFido2CredentialRequest()Lorg/chromium/components/webauthn/Fido2CredentialRequest;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webauth/TinGoogleAuthenticatorImplWrapper;->sFido2CredentialRequestOverrideForTesting:Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;-><init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;)V

    return-object v0
.end method
