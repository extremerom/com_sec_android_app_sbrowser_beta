.class Lorg/chromium/components/webauthn/Fido2CredentialRequest$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getMaybeResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/webauthn/Fido2CredentialRequest;


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$1;->this$0:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$1;->this$0:Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-static {p0, p2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->w(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Landroid/os/Bundle;)V

    return-void
.end method
