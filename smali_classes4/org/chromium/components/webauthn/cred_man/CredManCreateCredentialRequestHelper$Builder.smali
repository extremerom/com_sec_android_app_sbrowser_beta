.class Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHelper:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->e()Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    invoke-static {p0, p2}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->a(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;[B)V

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUserId([B)Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->d(Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;[B)V

    return-object p0
.end method
