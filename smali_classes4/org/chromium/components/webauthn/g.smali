.class public final synthetic Lorg/chromium/components/webauthn/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;
.implements LR5/d;
.implements Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/g;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/g;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->i(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(ILjava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/g;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-static {p0, p1, p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->l(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ILjava/lang/Integer;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/g;->a:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    check-cast p1, Landroid/app/PendingIntent;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->v(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Landroid/app/PendingIntent;)V

    return-void
.end method
