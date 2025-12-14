.class public Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/RenderFrameHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDelegate:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

.field private final mIncognito:Z

.field private mNativeRenderFrameHostAndroid:J

.field private final mRenderFrameHostId:Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;


# direct methods
.method private constructor <init>(JLorg/chromium/content/browser/framehost/RenderFrameHostDelegate;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    iput-object p3, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mDelegate:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    iput-boolean p4, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mIncognito:Z

    new-instance p1, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    invoke-direct {p1, p5, p6}, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;-><init>(II)V

    iput-object p1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mRenderFrameHostId:Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    invoke-interface {p3, p0}, Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;->renderFrameCreated(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V

    return-void
.end method

.method private clearNativePtr()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    iget-object v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mDelegate:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;->renderFrameDeleted(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V

    return-void
.end method

.method private static create(JLorg/chromium/content/browser/framehost/RenderFrameHostDelegate;ZII)Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v7, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;-><init>(JLorg/chromium/content/browser/framehost/RenderFrameHostDelegate;ZII)V

    return-object v7
.end method

.method private static createWebAuthSecurityChecksResults(IZ)Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/blink/mojom/AuthenticatorStatus$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;-><init>(IZ)V

    return-object v0
.end method

.method private getNativePointer()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    return-wide v0
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLastCommittedOrigin()Lorg/chromium/url/Origin;
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;->get()Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;->getLastCommittedOrigin(J)Lorg/chromium/url/Origin;

    move-result-object p0

    return-object p0
.end method

.method public getLastCommittedURL()Lorg/chromium/url/GURL;
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;->get()Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;->getLastCommittedURL(J)Lorg/chromium/url/GURL;

    move-result-object p0

    return-object p0
.end method

.method public getRenderFrameHostDelegate()Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mDelegate:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    return-object p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mIncognito:Z

    return p0
.end method

.method public notifyWebAuthnAssertionRequestSucceeded()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;->get()Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;->notifyWebAuthnAssertionRequestSucceeded(J)V

    return-void
.end method

.method public performGetAssertionWebAuthSecurityChecks(Ljava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/url/Origin;",
            "Z",
            "Lorg/chromium/url/Origin;",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance p0, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;-><init>(IZ)V

    invoke-interface {p5, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;->get()Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;->performGetAssertionWebAuthSecurityChecks(JLjava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public performMakeCredentialWebAuthSecurityChecks(Ljava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/url/Origin;",
            "Z",
            "Lorg/chromium/url/Origin;",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance p0, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;-><init>(IZ)V

    invoke-interface {p5, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/RenderFrameHostImplJni;->get()Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->mNativeRenderFrameHostAndroid:J

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;->performMakeCredentialWebAuthSecurityChecks(JLjava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V

    return-void
.end method
