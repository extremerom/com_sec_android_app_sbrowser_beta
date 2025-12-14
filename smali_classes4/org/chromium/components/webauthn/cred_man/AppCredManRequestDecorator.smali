.class public Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;->sInstance:Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;->sInstance:Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;->sInstance:Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;

    return-object v0
.end method


# virtual methods
.method public updateCreateCredentialRequestBuilder(Landroid/credentials/CreateCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V
    .locals 0

    return-void
.end method

.method public updateCreateCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V
    .locals 0

    return-void
.end method

.method public updateGetCredentialRequestBuilder(Landroid/credentials/GetCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0

    return-void
.end method

.method public updateGetCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0

    return-void
.end method

.method public updatePasswordCredentialOptionBuilder(Landroid/credentials/CredentialOption$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0

    return-void
.end method

.method public updatePasswordCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0

    return-void
.end method

.method public updatePublicKeyCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0

    return-void
.end method
