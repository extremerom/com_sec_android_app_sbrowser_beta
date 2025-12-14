.class Lcom/sec/terrace/Terrace$10;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->initializeWithContext(Lcom/sec/terrace/Terrace$TerraceClient;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didChangeThemeColor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->m(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->m(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getThemeColor()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceListenerCallback;->didChangeThemeColor(I)V

    :cond_0
    return-void
.end method

.method public didFailLoad(ZILorg/chromium/url/GURL;I)V
    .locals 1

    iget-object p4, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p4}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/sec/terrace/Terrace;->s(Lcom/sec/terrace/Terrace;Z)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/sec/terrace/TerraceListenerCallback;->didFailLoad(ZZILjava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->reportLoadFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public didFinishNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVirtualKeyboardMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/terrace/Terrace;->x(Lcom/sec/terrace/Terrace;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->hasCommitted()Z

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v2

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isPageActivation()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/terrace/TerraceListenerCallback;->onDidFinishNavigation(ZZZ)V

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->errorCode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->errorCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->reportLoadFail(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->w(Lcom/sec/terrace/Terrace;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->errorCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, v0, v2, p1}, Lcom/sec/terrace/TerraceListenerCallback;->didFailLoad(ZZILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v5

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->pageTransition()I

    move-result v7

    const-wide/16 v3, -0x1

    invoke-interface/range {v2 .. v7}, Lcom/sec/terrace/TerraceListenerCallback;->onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->w(Lcom/sec/terrace/Terrace;)V

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isPrimaryMainFrameFragmentNavigation()Z

    move-result v6

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->errorCode()I

    move-result v7

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/sec/terrace/TerraceListenerCallback;->didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    :cond_4
    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->didNavigateMainFrame(Z)V

    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->didFirstVisuallyNonEmptyPaint()V

    return-void
.end method

.method public didStartNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0, p1}, Lcom/sec/terrace/Terrace;->u(Lcom/sec/terrace/Terrace;Lorg/chromium/content_public/browser/NavigationHandle;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->didStartNavigation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isSameDocument()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/terrace/TerraceListenerCallback;->onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isSameDocument()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/terrace/Terrace;->i(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/Terrace$TerraceClient;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->i(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/Terrace$TerraceClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceStylusWritingController;->hideHandwritingToolbar()V

    :cond_2
    return-void
.end method

.method public mediaSessionCreated(Lorg/chromium/content_public/browser/MediaSession;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->makeTerraceMediaSession(Lorg/chromium/content_public/browser/MediaSession;)Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/terrace/Terrace;->r(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->mediaSessionCreated()V

    return-void
.end method

.method public primaryMainDocumentElementAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->primaryMainDocumentElementAvailable()V

    return-void
.end method

.method public primaryMainFrameRenderProcessGone(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->l(Lcom/sec/terrace/Terrace;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/terrace/Terrace;->s(Lcom/sec/terrace/Terrace;Z)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->g(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->g(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->setNeedsReload()V

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isShowing()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onReportCrash(ZI)V

    return-void
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "chrome://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chrome"

    const-string v1, "internet"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onUpdateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public virtualKeyboardModeChanged(I)V
    .locals 0
    .param p1    # I
        .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/terrace/Terrace$10;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0, p1}, Lcom/sec/terrace/Terrace;->x(Lcom/sec/terrace/Terrace;I)V

    return-void
.end method
