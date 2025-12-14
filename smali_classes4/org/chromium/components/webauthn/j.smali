.class public final synthetic Lorg/chromium/components/webauthn/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

.field public final synthetic c:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field public final synthetic d:Lorg/chromium/url/Origin;

.field public final synthetic e:[B


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[BI)V
    .locals 0

    iput p5, p0, Lorg/chromium/components/webauthn/j;->a:I

    iput-object p1, p0, Lorg/chromium/components/webauthn/j;->b:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iput-object p2, p0, Lorg/chromium/components/webauthn/j;->c:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p3, p0, Lorg/chromium/components/webauthn/j;->d:Lorg/chromium/url/Origin;

    iput-object p4, p0, Lorg/chromium/components/webauthn/j;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lorg/chromium/components/webauthn/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/chromium/components/webauthn/j;->b:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v1, p0, Lorg/chromium/components/webauthn/j;->c:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v2, p0, Lorg/chromium/components/webauthn/j;->d:Lorg/chromium/url/Origin;

    iget-object p0, p0, Lorg/chromium/components/webauthn/j;->e:[B

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->t(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/j;->b:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v1, p0, Lorg/chromium/components/webauthn/j;->c:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v2, p0, Lorg/chromium/components/webauthn/j;->d:Lorg/chromium/url/Origin;

    iget-object p0, p0, Lorg/chromium/components/webauthn/j;->e:[B

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->s(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/chromium/components/webauthn/j;->b:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v1, p0, Lorg/chromium/components/webauthn/j;->c:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v2, p0, Lorg/chromium/components/webauthn/j;->d:Lorg/chromium/url/Origin;

    iget-object p0, p0, Lorg/chromium/components/webauthn/j;->e:[B

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->u(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;[B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
