.class public final synthetic Lorg/chromium/components/webauthn/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

.field public final synthetic b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:[B


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/h;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iput-object p2, p0, Lorg/chromium/components/webauthn/h;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p3, p0, Lorg/chromium/components/webauthn/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/webauthn/h;->d:[B

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, [B

    iget-object v0, p0, Lorg/chromium/components/webauthn/h;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v1, p0, Lorg/chromium/components/webauthn/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/components/webauthn/h;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object p0, p0, Lorg/chromium/components/webauthn/h;->d:[B

    invoke-static {v2, v0, v1, p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->k(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[B)V

    return-void
.end method
