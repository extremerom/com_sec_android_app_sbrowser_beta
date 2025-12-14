.class public Lorg/chromium/components/webauthn/MockFido2CredentialRequest;
.super Lorg/chromium/components/webauthn/Fido2CredentialRequest;
.source "SourceFile"


# static fields
.field private static final STUB_PROVIDER:Lorg/chromium/components/webauthn/AuthenticationContextProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/webauthn/MockFido2CredentialRequest$1;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/MockFido2CredentialRequest$1;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/MockFido2CredentialRequest;->STUB_PROVIDER:Lorg/chromium/components/webauthn/AuthenticationContextProvider;

    return-void
.end method


# virtual methods
.method public handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V
    .locals 0

    const/4 p0, 0x5

    invoke-interface {p6, p0}, Lorg/chromium/components/webauthn/FidoErrorResponseCallback;->onError(I)V

    return-void
.end method

.method public handleIsUserVerifyingPlatformAuthenticatorAvailableRequest(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;->onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V

    return-void
.end method

.method public handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V
    .locals 0

    const/4 p0, 0x5

    invoke-interface {p7, p0}, Lorg/chromium/components/webauthn/FidoErrorResponseCallback;->onError(I)V

    return-void
.end method
