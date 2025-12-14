.class Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->k()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->h(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {p1, p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;[B)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {p1, p3}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->f(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {p1, p4}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->a(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->i(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->j()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->j()Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    return-object p0
.end method

.method public setIgnoreGpm(Z)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->d(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlayServicesAvailable(Z)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Z)V

    return-object p0
.end method

.method public setRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper$Builder;->mHelper:Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->g(Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-object p0
.end method
