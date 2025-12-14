.class public final synthetic Lorg/chromium/components/webauthn/cred_man/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

.field public final synthetic b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:[B

.field public final synthetic e:[B

.field public final synthetic f:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

.field public final synthetic g:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/b;->a:Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

    iput-object p2, p0, Lorg/chromium/components/webauthn/cred_man/b;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p3, p0, Lorg/chromium/components/webauthn/cred_man/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/webauthn/cred_man/b;->d:[B

    iput-object p5, p0, Lorg/chromium/components/webauthn/cred_man/b;->e:[B

    iput-object p6, p0, Lorg/chromium/components/webauthn/cred_man/b;->f:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iput-object p7, p0, Lorg/chromium/components/webauthn/cred_man/b;->g:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iput-boolean p8, p0, Lorg/chromium/components/webauthn/cred_man/b;->h:Z

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 9

    move-object v8, p1

    check-cast v8, Ljava/lang/Boolean;

    iget-object v5, p0, Lorg/chromium/components/webauthn/cred_man/b;->f:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iget-object v6, p0, Lorg/chromium/components/webauthn/cred_man/b;->g:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/b;->a:Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/b;->b:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v2, p0, Lorg/chromium/components/webauthn/cred_man/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/components/webauthn/cred_man/b;->d:[B

    iget-object v4, p0, Lorg/chromium/components/webauthn/cred_man/b;->e:[B

    iget-boolean v7, p0, Lorg/chromium/components/webauthn/cred_man/b;->h:Z

    invoke-static/range {v0 .. v8}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;ZLjava/lang/Boolean;)V

    return-void
.end method
