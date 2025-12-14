.class Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getLastCommittedOrigin(J)Lorg/chromium/url/Origin;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mcdslkop(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/url/Origin;

    return-object p0
.end method

.method public getLastCommittedURL(J)Lorg/chromium/url/GURL;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MBg$jIAu(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public notifyWebAuthnAssertionRequestSucceeded(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MJy0ZReE(J)V

    return-void
.end method

.method public performGetAssertionWebAuthSecurityChecks(JLjava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M5dgGNo$(JLjava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public performMakeCredentialWebAuthSecurityChecks(JLjava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M2ouq_qG(JLjava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
