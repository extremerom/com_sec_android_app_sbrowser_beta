.class Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeWebContentsObserverProxy:J

.field private mObserverCallsCurrentlyHandling:I

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/content_public/browser/WebContentsObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>()V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxyJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;->init(Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    new-instance p1, Lorg/chromium/base/ObserverList;

    invoke-direct {p1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserverCallsCurrentlyHandling:I

    return-void
.end method

.method private didFinishLoadInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;IILorg/chromium/url/GURL;ZI)V
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v2, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    invoke-direct {v2, p2, p3}, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->didFinishLoadInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;Lorg/chromium/url/GURL;ZI)V

    return-void
.end method

.method private documentLoadedInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;III)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    invoke-direct {v0, p2, p3}, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;-><init>(II)V

    invoke-virtual {p0, p1, v0, p4}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->documentLoadedInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;I)V

    return-void
.end method

.method private finishObserverCall()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserverCallsCurrentlyHandling:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserverCallsCurrentlyHandling:I

    return-void
.end method

.method private handleObserverCall()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserverCallsCurrentlyHandling:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserverCallsCurrentlyHandling:I

    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public didChangeThemeColor()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didChangeThemeColor()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didChangeVisibleSecurityState()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didChangeVisibleSecurityState()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didFailLoad(ZILorg/chromium/url/GURL;I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFailLoad(ZILorg/chromium/url/GURL;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didFinishLoadInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;Lorg/chromium/url/GURL;ZI)V
    .locals 8

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/chromium/content_public/browser/WebContentsObserver;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFinishLoadInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;Lorg/chromium/url/GURL;ZI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didFinishNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFinishNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFirstVisuallyNonEmptyPaint()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didRedirectNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didRedirectNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didStartLoading(Lorg/chromium/url/GURL;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStartLoading(Lorg/chromium/url/GURL;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didStartNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStartNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didStopLoading(Lorg/chromium/url/GURL;Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStopLoading(Lorg/chromium/url/GURL;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public didToggleFullscreenModeForTab(ZZ)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;->didToggleFullscreenModeForTab(ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public documentLoadedInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;I)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1, p2, p3}, Lorg/chromium/content_public/browser/WebContentsObserver;->documentLoadedInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public firstContentfulPaintInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->firstContentfulPaintInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public frameReceivedUserActivation()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->frameReceivedUserActivation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public hasEffectivelyFullscreenVideoChange(Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->hasEffectivelyFullscreenVideoChange(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public loadProgressChanged(F)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->loadProgressChanged(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public mediaSessionCreated(Lorg/chromium/content_public/browser/MediaSession;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->mediaSessionCreated(Lorg/chromium/content_public/browser/MediaSession;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public mediaStartedPlaying()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->mediaStartedPlaying()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public mediaStoppedPlaying()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->mediaStoppedPlaying()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public navigationEntriesChanged()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->navigationEntriesChanged()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public navigationEntriesDeleted()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->navigationEntriesDeleted()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public navigationEntryCommitted(Lorg/chromium/content_public/browser/LoadCommittedDetails;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->navigationEntryCommitted(Lorg/chromium/content_public/browser/LoadCommittedDetails;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public onBackgroundColorChanged()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->onBackgroundColorChanged()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public onTopLevelNativeWindowChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->onTopLevelNativeWindowChanged(Lorg/chromium/ui/base/WindowAndroid;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->onVisibilityChanged(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public onWebContentsFocused()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->onWebContentsFocused()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public onWebContentsLostFocus()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->onWebContentsLostFocus()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public primaryMainDocumentElementAvailable()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->primaryMainDocumentElementAvailable()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public primaryMainFrameRenderProcessGone(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->primaryMainFrameRenderProcessGone(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public primaryPageChanged(Lorg/chromium/content_public/browser/Page;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->primaryPageChanged(Lorg/chromium/content_public/browser/Page;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public renderFrameCreated(II)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    invoke-direct {v0, p1, p2}, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->renderFrameCreated(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V

    return-void
.end method

.method public renderFrameCreated(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->renderFrameCreated(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public renderFrameDeleted(II)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    invoke-direct {v0, p1, p2}, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->renderFrameDeleted(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V

    return-void
.end method

.method public renderFrameDeleted(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->renderFrameDeleted(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public safeAreaConstraintChanged(Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->safeAreaConstraintChanged(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->titleWasSet(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public viewportFitChanged(I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->viewportFitChanged(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public virtualKeyboardModeChanged(I)V
    .locals 2
    .param p1    # I
        .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->handleObserverCall()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->virtualKeyboardModeChanged(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->finishObserverCall()V

    return-void
.end method

.method public webContentsDestroyed()V
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->webContentsDestroyed()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/WebContentsObserver;->observe(Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    const-string v1, "These observers were not removed: "

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxyJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    invoke-interface {v0, v4, v5, p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;->destroy(JLorg/chromium/content/browser/webcontents/WebContentsObserverProxy;)V

    iput-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    :cond_2
    return-void
.end method
