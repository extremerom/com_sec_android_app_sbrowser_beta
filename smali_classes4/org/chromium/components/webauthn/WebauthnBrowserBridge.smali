.class public Lorg/chromium/components/webauthn/WebauthnBrowserBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;,
        Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Provider;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeWebauthnBrowserBridge:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getWebauthnCredentialDetailsCredentialId(Lorg/chromium/components/webauthn/WebauthnCredentialDetails;)[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    return-object p0
.end method

.method private static getWebauthnCredentialDetailsUserDisplayName(Lorg/chromium/components/webauthn/WebauthnCredentialDetails;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method private static getWebauthnCredentialDetailsUserId(Lorg/chromium/components/webauthn/WebauthnCredentialDetails;)[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserId:[B

    return-object p0
.end method

.method private static getWebauthnCredentialDetailsUserName(Lorg/chromium/components/webauthn/WebauthnCredentialDetails;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method private prepareNativeBrowserBridgeIfRequired()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->createNativeWebauthnBrowserBridge(Lorg/chromium/components/webauthn/WebauthnBrowserBridge;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupCredManRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 3

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->cleanupCredManRequest(JLorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void
.end method

.method public cleanupRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 3

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->cleanupRequest(JLorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    invoke-interface {v0, v4, v5}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->destroy(J)V

    iput-wide v2, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    return-void
.end method

.method public onCredManConditionalRequestPending(Lorg/chromium/content_public/browser/RenderFrameHost;ZLorg/chromium/base/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/RenderFrameHost;",
            "Z",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->prepareNativeBrowserBridgeIfRequired()V

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->onCredManConditionalRequestPending(JLorg/chromium/content_public/browser/RenderFrameHost;ZLorg/chromium/base/Callback;)V

    return-void
.end method

.method public onCredManUiClosed(Lorg/chromium/content_public/browser/RenderFrameHost;Z)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->prepareNativeBrowserBridgeIfRequired()V

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->onCredManUiClosed(JLorg/chromium/content_public/browser/RenderFrameHost;Z)V

    return-void
.end method

.method public onCredentialsDetailsListReceived(Lorg/chromium/content_public/browser/RenderFrameHost;Ljava/util/List;ZLorg/chromium/base/Callback;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/RenderFrameHost;",
            "Ljava/util/List<",
            "Lorg/chromium/components/webauthn/WebauthnCredentialDetails;",
            ">;Z",
            "Lorg/chromium/base/Callback<",
            "[B>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->prepareNativeBrowserBridgeIfRequired()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/components/webauthn/WebauthnCredentialDetails;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [Lorg/chromium/components/webauthn/WebauthnCredentialDetails;

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    move-object v3, p0

    move-object v5, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v0 .. v8}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->onCredentialsDetailsListReceived(JLorg/chromium/components/webauthn/WebauthnBrowserBridge;[Lorg/chromium/components/webauthn/WebauthnCredentialDetails;Lorg/chromium/content_public/browser/RenderFrameHost;ZLorg/chromium/base/Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPasswordCredentialReceived(Lorg/chromium/content_public/browser/RenderFrameHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->prepareNativeBrowserBridgeIfRequired()V

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnBrowserBridgeJni;->get()Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->mNativeWebauthnBrowserBridge:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge$Natives;->onPasswordCredentialReceived(JLorg/chromium/content_public/browser/RenderFrameHost;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
