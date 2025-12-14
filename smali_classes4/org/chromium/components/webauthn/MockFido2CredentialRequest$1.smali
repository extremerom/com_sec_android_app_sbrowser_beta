.class Lorg/chromium/components/webauthn/MockFido2CredentialRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/AuthenticationContextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/MockFido2CredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntentSender()Lorg/chromium/components/webauthn/FidoIntentSender;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
