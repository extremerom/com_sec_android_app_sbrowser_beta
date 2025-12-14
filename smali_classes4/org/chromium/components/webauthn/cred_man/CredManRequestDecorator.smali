.class public interface abstract Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract updateCreateCredentialRequestBuilder(Landroid/credentials/CreateCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V
.end method

.method public abstract updateCreateCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V
.end method

.method public abstract updateGetCredentialRequestBuilder(Landroid/credentials/GetCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
.end method

.method public abstract updateGetCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
.end method

.method public abstract updatePasswordCredentialOptionBuilder(Landroid/credentials/CredentialOption$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
.end method

.method public abstract updatePasswordCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
.end method

.method public abstract updatePublicKeyCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
.end method
