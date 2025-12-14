.class public final synthetic Lorg/chromium/components/webauthn/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

.field public final synthetic b:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lorg/chromium/url/Origin;

.field public final synthetic e:Lorg/chromium/url/Origin;

.field public final synthetic f:Lorg/chromium/blink/mojom/PaymentOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/k;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iput-object p2, p0, Lorg/chromium/components/webauthn/k;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    iput-object p3, p0, Lorg/chromium/components/webauthn/k;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/chromium/components/webauthn/k;->d:Lorg/chromium/url/Origin;

    iput-object p5, p0, Lorg/chromium/components/webauthn/k;->e:Lorg/chromium/url/Origin;

    iput-object p6, p0, Lorg/chromium/components/webauthn/k;->f:Lorg/chromium/blink/mojom/PaymentOptions;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 7

    move-object v6, p1

    check-cast v6, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;

    iget-object v3, p0, Lorg/chromium/components/webauthn/k;->d:Lorg/chromium/url/Origin;

    iget-object v4, p0, Lorg/chromium/components/webauthn/k;->e:Lorg/chromium/url/Origin;

    iget-object v0, p0, Lorg/chromium/components/webauthn/k;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v1, p0, Lorg/chromium/components/webauthn/k;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    iget-object v2, p0, Lorg/chromium/components/webauthn/k;->c:Landroid/os/Bundle;

    iget-object v5, p0, Lorg/chromium/components/webauthn/k;->f:Lorg/chromium/blink/mojom/PaymentOptions;

    invoke-static/range {v0 .. v6}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->h(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V

    return-void
.end method
