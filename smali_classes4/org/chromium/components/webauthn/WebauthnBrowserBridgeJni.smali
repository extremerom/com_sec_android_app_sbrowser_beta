.class Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;


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

.method public static get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cleanupCredManRequest(JLorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MeDnmJHP(JLjava/lang/Object;)V

    return-void
.end method

.method public cleanupRequest(JLorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MSQn0IUl(JLjava/lang/Object;)V

    return-void
.end method

.method public createNativeWebauthnBrowserBridge(Lorg/chromium/components/webauthn/WebauthnBrowserBridge;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MnTu6aJV(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MZ3ZKy8M(J)V

    return-void
.end method

.method public onCredManConditionalRequestPending(JLorg/chromium/content_public/browser/RenderFrameHost;ZLorg/chromium/base/Callback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mtvht8ns(JLjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public onCredManUiClosed(JLorg/chromium/content_public/browser/RenderFrameHost;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MlW_PkdL(JLjava/lang/Object;Z)V

    return-void
.end method

.method public onCredentialsDetailsListReceived(JLorg/chromium/components/webauthn/WebauthnBrowserBridge;[Lorg/chromium/components/webauthn/WebauthnCredentialDetails;Lorg/chromium/content_public/browser/RenderFrameHost;ZLorg/chromium/base/Callback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->M41xBp80(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onPasswordCredentialReceived(JLorg/chromium/content_public/browser/RenderFrameHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MVC995WP(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
