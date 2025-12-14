.class public Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/TabObserver;


# instance fields
.field private mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    return-void
.end method


# virtual methods
.method public onActivateContents()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onActivateContents()V

    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onBottomOffsetsForFullscreenChanged(F)V

    return-void
.end method

.method public onClearDisplayedGraphics()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onClearDisplayedGraphics()V

    return-void
.end method

.method public onCloseContents()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onCloseContents()V

    return-void
.end method

.method public onContentHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentHeightChanged()V

    return-void
.end method

.method public onContentViewIMEVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentViewIMEVisibilityChanged(Z)V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentViewSizeChanged()V

    return-void
.end method

.method public onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentViewTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentsZoomChange(Z)V

    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDidAccessInitialDocument()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidAccessInitialDocument()V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidFinishNavigation(ZZZ)V

    return-void
.end method

.method public onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidRetrieveWebState(Ljava/lang/String;)V

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public onDragEntered()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDragEntered()V

    return-void
.end method

.method public onEnableUiControl(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onEnableUiControl(IZ)V

    return-void
.end method

.method public onFaviconUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFaviconUpdated()V

    return-void
.end method

.method public onFindOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    return-void
.end method

.method public onFirstVisuallyNonEmptyPaint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFirstVisuallyNonEmptyPaint()V

    return-void
.end method

.method public onFullscreenModeChanged(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFullscreenModeChanged(ZZ)V

    return-void
.end method

.method public onHoverExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onHoverExit()V

    return-void
.end method

.method public onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onImageResourceLoadComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFailed(ZZILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadFailed(ZZILjava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadFinished(JLjava/lang/String;Z)V

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadProgressChanged(D)V

    return-void
.end method

.method public onLoadingStatusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadingStatusChanged(Z)V

    return-void
.end method

.method public onMouseWheelScrollStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onMouseWheelScrollStarted()V

    return-void
.end method

.method public onNavigationStateChangedUpdateTitle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onNavigationStateChangedUpdateTitle()V

    return-void
.end method

.method public onNavigationStateChangedUpdateUrl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onNavigationStateChangedUpdateUrl()V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onOffsetsForFullscreenChanged(FF)V

    return-void
.end method

.method public onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V

    return-void
.end method

.method public onPageSavedAs(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPageSavedAs(Ljava/lang/String;)V

    return-void
.end method

.method public onPrimaryMainDocumentElementAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPrimaryMainDocumentElementAvailable()V

    return-void
.end method

.method public onPullToRefresh()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPullToRefresh()V

    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onRecognizeArticleResult(Z)V

    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onRenderFrameHostChanged()V

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onReportCrash(ZI)V

    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onScrollEnded(II)V

    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onScrollStarted(II)V

    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onSurfaceCreated()V

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onTakeFocus(Z)V

    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onThemeColorChanged(I)V

    return-void
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onUpdateTargetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onUpdateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onUpdateUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onWebApkFinishedInstalled(I)V

    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onWebContentsCreated(Ljava/lang/String;)V

    return-void
.end method

.method public onWebSearch(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onWebSearch(Ljava/lang/String;)V

    return-void
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->mObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void
.end method
