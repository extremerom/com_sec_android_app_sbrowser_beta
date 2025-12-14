.class public abstract Lorg/chromium/content_public/browser/WebContentsObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/WebContentsObserver$Observable;,
        Lorg/chromium/content_public/browser/WebContentsObserver$ViewportFitType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .param p1    # Lorg/chromium/content_public/browser/WebContents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->observe(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didChangeThemeColor()V
    .locals 0

    return-void
.end method

.method public didChangeVisibleSecurityState()V
    .locals 0

    return-void
.end method

.method public didFailLoad(ZILorg/chromium/url/GURL;I)V
    .locals 0

    return-void
.end method

.method public didFinishLoadInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;Lorg/chromium/url/GURL;ZI)V
    .locals 0

    return-void
.end method

.method public didFinishNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    return-void
.end method

.method public didRedirectNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    return-void
.end method

.method public didStartLoading(Lorg/chromium/url/GURL;)V
    .locals 0

    return-void
.end method

.method public didStartNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    return-void
.end method

.method public didStopLoading(Lorg/chromium/url/GURL;Z)V
    .locals 0

    return-void
.end method

.method public didToggleFullscreenModeForTab(ZZ)V
    .locals 0

    return-void
.end method

.method public documentLoadedInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;I)V
    .locals 0

    return-void
.end method

.method public firstContentfulPaintInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;)V
    .locals 0

    return-void
.end method

.method public frameReceivedUserActivation()V
    .locals 0

    return-void
.end method

.method public hasEffectivelyFullscreenVideoChange(Z)V
    .locals 0

    return-void
.end method

.method public loadProgressChanged(F)V
    .locals 0

    return-void
.end method

.method public mediaSessionCreated(Lorg/chromium/content_public/browser/MediaSession;)V
    .locals 0

    return-void
.end method

.method public mediaStartedPlaying()V
    .locals 0

    return-void
.end method

.method public mediaStoppedPlaying()V
    .locals 0

    return-void
.end method

.method public navigationEntriesChanged()V
    .locals 0

    return-void
.end method

.method public navigationEntriesDeleted()V
    .locals 0

    return-void
.end method

.method public navigationEntryCommitted(Lorg/chromium/content_public/browser/LoadCommittedDetails;)V
    .locals 0

    return-void
.end method

.method public final observe(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver$Observable;

    invoke-interface {v0, p0}, Lorg/chromium/content_public/browser/WebContentsObserver$Observable;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    :cond_1
    iput-object p1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_2

    check-cast p1, Lorg/chromium/content_public/browser/WebContentsObserver$Observable;

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContentsObserver$Observable;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    :cond_2
    return-void
.end method

.method public onBackgroundColorChanged()V
    .locals 0

    return-void
.end method

.method public onTopLevelNativeWindowChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public onWebContentsFocused()V
    .locals 0

    return-void
.end method

.method public onWebContentsLostFocus()V
    .locals 0

    return-void
.end method

.method public primaryMainDocumentElementAvailable()V
    .locals 0

    return-void
.end method

.method public primaryMainFrameRenderProcessGone(I)V
    .locals 0

    return-void
.end method

.method public primaryPageChanged(Lorg/chromium/content_public/browser/Page;)V
    .locals 0

    return-void
.end method

.method public renderFrameCreated(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V
    .locals 0

    return-void
.end method

.method public renderFrameDeleted(Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;)V
    .locals 0

    return-void
.end method

.method public safeAreaConstraintChanged(Z)V
    .locals 0

    return-void
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public viewportFitChanged(I)V
    .locals 0

    return-void
.end method

.method public virtualKeyboardModeChanged(I)V
    .locals 0
    .param p1    # I
        .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
        .end annotation
    .end param

    return-void
.end method

.method public webContentsDestroyed()V
    .locals 0

    return-void
.end method
