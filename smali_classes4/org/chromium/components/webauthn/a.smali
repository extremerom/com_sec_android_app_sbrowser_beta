.class public final synthetic Lorg/chromium/components/webauthn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;
.implements Lorg/chromium/components/webauthn/FidoErrorResponseCallback;
.implements Lorg/chromium/components/webauthn/GetAssertionResponseCallback;
.implements Lorg/chromium/components/webauthn/RecordOutcomeCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/AuthenticatorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/a;->a:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/webauthn/a;->a:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->onError(Ljava/lang/Integer;)V

    return-void
.end method

.method public onRegisterResponse(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/a;->a:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->onRegisterResponse(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V

    return-void
.end method

.method public onSignResponse(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/a;->a:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->onSignResponse(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V

    return-void
.end method

.method public record(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/a;->a:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->b(Lorg/chromium/components/webauthn/AuthenticatorImpl;I)V

    return-void
.end method
