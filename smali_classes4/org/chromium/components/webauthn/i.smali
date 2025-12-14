.class public final synthetic Lorg/chromium/components/webauthn/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;
.implements LR5/d;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/i;->a:Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/i;->a:Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->n(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/i;->a:Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->c(Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;Ljava/lang/Boolean;)V

    return-void
.end method
