.class public Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceListenerCallback;


# instance fields
.field protected mCallback:Lcom/sec/terrace/TerraceListenerCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceListenerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->activateContents()V

    return-void
.end method

.method public addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public canExtractText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->canExtractText()Z

    move-result p0

    return p0
.end method

.method public clearBitmapData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->clearBitmapData()V

    return-void
.end method

.method public clearDisplayedGraphics()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->clearDisplayedGraphics()V

    return-void
.end method

.method public didAccessInitialDocument()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->didAccessInitialDocument()V

    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->didChangeThemeColor(I)V

    return-void
.end method

.method public didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/TerraceListenerCallback;->didFailLoad(ZZILjava/lang/String;)V

    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/TerraceListenerCallback;->didFinishLoad(JLjava/lang/String;Z)V

    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->didFirstVisuallyNonEmptyPaint()V

    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/TerraceListenerCallback;->didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public enableUiControl(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->enableUiControl(IZ)V

    return-void
.end method

.method public extractTextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->extractTextMenu()V

    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getBottomControlsHeightYPix()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->getBottomControlsHeightYPix()I

    move-result p0

    return p0
.end method

.method public getDisplayMode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->getDisplayMode()I

    move-result p0

    return p0
.end method

.method public getSemActionModeType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->getSemActionModeType()I

    move-result p0

    return p0
.end method

.method public hideClipboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->hideClipboard()V

    return-void
.end method

.method public isExtensionSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->isExtensionSupported()Z

    move-result p0

    return p0
.end method

.method public isHoverScrollEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->isHoverScrollEnabled()Z

    move-result p0

    return p0
.end method

.method public isInstalledWebappDelegateGeolocation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->isInstalledWebappDelegateGeolocation()Z

    move-result p0

    return p0
.end method

.method public isReadAloudToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->isReadAloudToolbarShowing()Z

    move-result p0

    return p0
.end method

.method public isReadArticleAloudToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->isReadArticleAloudToolbarShowing()Z

    move-result p0

    return p0
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->isSummarizedViewShowing()Z

    move-result p0

    return p0
.end method

.method public mediaSessionCreated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->mediaSessionCreated()V

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onBottomOffsetsForFullscreenChanged(F)V

    return-void
.end method

.method public onCloseContents()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onCloseContents()V

    return-void
.end method

.method public onContentHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentHeightChanged()V

    return-void
.end method

.method public onContentViewIMEVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentViewIMEVisibilityChanged(Z)V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentViewSizeChanged()V

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onContentsZoomChange(Z)V

    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCreateAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onCreateAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/TerraceListenerCallback;->onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceListenerCallback;->onDidFinishNavigation(ZZZ)V

    return-void
.end method

.method public onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onDidRetrieveWebState(Ljava/lang/String;)V

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/TerraceListenerCallback;->onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public onDragEntered()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->onDragEntered()V

    return-void
.end method

.method public onFaviconUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onFaviconUpdated()V

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    return-void
.end method

.method public onFinishRestoringWebState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onFinishRestoringWebState(Z)V

    return-void
.end method

.method public onHoverExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->onHoverExit()V

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onLoadProgressChanged(D)V

    return-void
.end method

.method public onLoadUrl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onLoadUrl()V

    return-void
.end method

.method public onMouseWheelScrollStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->onMouseWheelScrollStarted()V

    return-void
.end method

.method public onNavigationStateChangedUpdateTitle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onNavigationStateChangedUpdateTitle()V

    return-void
.end method

.method public onNavigationStateChangedUpdateUrl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onNavigationStateChangedUpdateUrl()V

    return-void
.end method

.method public onNumberOfBlockedElements(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onNumberOfBlockedElements(I)V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onOffsetsForFullscreenChanged(FF)V

    return-void
.end method

.method public onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/TerraceListenerCallback;->onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V

    return-void
.end method

.method public onPageSavedAs(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onPageSavedAs(Ljava/lang/String;)V

    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onRecognizeArticleResult(Z)V

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onReportCrash(ZI)V

    return-void
.end method

.method public onRequestDocumentDumpResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onRequestDocumentDumpResult(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceContentViewCallback;->onScrollEnded(II)V

    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceContentViewCallback;->onScrollStarted(II)V

    return-void
.end method

.method public onSingleTap(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->onSingleTap(Z)V

    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceListenerCallback;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onTakeFocus(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onTakeFocus(Z)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onUpdateTargetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onUpdateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onUpdateUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onWebApkFinishedInstalled(I)V

    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onWebContentsCreated(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method

.method public primaryMainDocumentElementAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->primaryMainDocumentElementAvailable()V

    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/TerraceListenerCallback;->processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method public registerClipboardPasteListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->registerClipboardPasteListener()V

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void
.end method

.method public runHapticFeedbackEffect(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->runHapticFeedbackEffect(I)V

    return-void
.end method

.method public runHapticFeedbackEffectForPullToRefresh(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->runHapticFeedbackEffectForPullToRefresh(Landroid/view/View;)V

    return-void
.end method

.method public runScrollbarVibrate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->runScrollbarVibrate()V

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->setIsLoading(Z)V

    return-void
.end method

.method public setSPenHoverIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->setSPenHoverIcon(I)V

    return-void
.end method

.method public shouldAllowAddToNote()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->shouldAllowAddToNote()Z

    move-result p0

    return p0
.end method

.method public shouldBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceContentViewCallback;->shouldBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)Z

    move-result p0

    return p0
.end method

.method public shouldExemptFromTrackingProtection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->shouldExemptFromTrackingProtection()Z

    move-result p0

    return p0
.end method

.method public shouldPerformPullToRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->shouldPerformPullToRefresh()Z

    move-result p0

    return p0
.end method

.method public showAutoSigninPrompt(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->showAutoSigninPrompt(Ljava/lang/String;)V

    return-void
.end method

.method public showClipboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->showClipboard()V

    return-void
.end method

.method public showRepostFormWarningDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->showRepostFormWarningDialog()V

    return-void
.end method

.method public showShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/TerraceListenerCallback;->showShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    return-void
.end method

.method public supportPullToRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->supportPullToRefresh()Z

    move-result p0

    return p0
.end method

.method public surfaceCreated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->surfaceCreated()V

    return-void
.end method

.method public toggleFullscreenModeForTab(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->toggleFullscreenModeForTab(ZZ)V

    return-void
.end method

.method public unregisterClipboardPasteListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->unregisterClipboardPasteListener()V

    return-void
.end method

.method public updateFrameInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->updateFrameInfo()V

    return-void
.end method

.method public webSearch(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->webSearch(Ljava/lang/String;)V

    return-void
.end method
