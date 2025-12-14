.class public final synthetic Lorg/chromium/components/webauthn/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

.field public final synthetic b:Z

.field public final synthetic c:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

.field public final synthetic d:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[B

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/e;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iput-boolean p2, p0, Lorg/chromium/components/webauthn/e;->b:Z

    iput-object p3, p0, Lorg/chromium/components/webauthn/e;->c:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    iput-object p4, p0, Lorg/chromium/components/webauthn/e;->d:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p5, p0, Lorg/chromium/components/webauthn/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/components/webauthn/e;->f:[B

    iput-wide p7, p0, Lorg/chromium/components/webauthn/e;->g:J

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    iget-object v4, p0, Lorg/chromium/components/webauthn/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/components/webauthn/e;->f:[B

    iget-object v0, p0, Lorg/chromium/components/webauthn/e;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-boolean v1, p0, Lorg/chromium/components/webauthn/e;->b:Z

    iget-object v2, p0, Lorg/chromium/components/webauthn/e;->c:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    iget-object v3, p0, Lorg/chromium/components/webauthn/e;->d:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-wide v6, p0, Lorg/chromium/components/webauthn/e;->g:J

    invoke-static/range {v0 .. v8}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->p(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BJLjava/util/List;)V

    return-void
.end method
