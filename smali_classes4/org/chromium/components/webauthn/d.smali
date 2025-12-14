.class public final synthetic Lorg/chromium/components/webauthn/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

.field public final synthetic b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field public final synthetic c:Lorg/chromium/url/Origin;

.field public final synthetic d:Lorg/chromium/url/Origin;

.field public final synthetic e:Lorg/chromium/blink/mojom/PaymentOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/d;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iput-object p2, p0, Lorg/chromium/components/webauthn/d;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p3, p0, Lorg/chromium/components/webauthn/d;->c:Lorg/chromium/url/Origin;

    iput-object p4, p0, Lorg/chromium/components/webauthn/d;->d:Lorg/chromium/url/Origin;

    iput-object p5, p0, Lorg/chromium/components/webauthn/d;->e:Lorg/chromium/blink/mojom/PaymentOptions;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    move-object v5, p1

    check-cast v5, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;

    iget-object v2, p0, Lorg/chromium/components/webauthn/d;->c:Lorg/chromium/url/Origin;

    iget-object v3, p0, Lorg/chromium/components/webauthn/d;->d:Lorg/chromium/url/Origin;

    iget-object v0, p0, Lorg/chromium/components/webauthn/d;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v1, p0, Lorg/chromium/components/webauthn/d;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v4, p0, Lorg/chromium/components/webauthn/d;->e:Lorg/chromium/blink/mojom/PaymentOptions;

    invoke-static/range {v0 .. v5}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->e(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;)V

    return-void
.end method
