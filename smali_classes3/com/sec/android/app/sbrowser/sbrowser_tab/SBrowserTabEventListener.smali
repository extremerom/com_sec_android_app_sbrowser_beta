.class public interface abstract Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->EMPTY:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    return-void
.end method


# virtual methods
.method public activateContents(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onBackForwardUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    return-void
.end method

.method public onBitmapReceived(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onBookmarkStatusChanged()V
    .locals 0

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 0

    return-void
.end method

.method public onBottombarShadowVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onCloseTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onClosed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onContentHeightChanged()V
    .locals 0

    return-void
.end method

.method public onContentViewIMEVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 0

    return-void
.end method

.method public onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 0

    return-void
.end method

.method public onContextMenuShown()V
    .locals 0

    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onDeepLinkStatusChanged()V
    .locals 0

    return-void
.end method

.method public onDidAccessInitialDocument()V
    .locals 0

    return-void
.end method

.method public onDidChangeThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;JZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    return-void
.end method

.method public onDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onDragEntered()V
    .locals 0

    return-void
.end method

.method public onExtractionSuccess(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V
    .locals 0

    return-void
.end method

.method public onHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onHoverExit()V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNativePageEditModeChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onNativePageIsReady(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onNotifyClearDisplay(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onNotifyPageReload(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 0

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPWAStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onPageSavedAs(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V
    .locals 0

    return-void
.end method

.method public onReaderModeFailed()V
    .locals 0

    return-void
.end method

.method public onReaderPageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
    .locals 0

    return-void
.end method

.method public onRecognizeArticleResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 0

    return-void
.end method

.method public onRequestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0

    return-void
.end method

.method public onSaveWebPage()V
    .locals 0

    return-void
.end method

.method public onScrollEnded()V
    .locals 0

    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    return-void
.end method

.method public onShow(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onShowTabGroupList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onStartContentIntent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    return-void
.end method

.method public onTabCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onTabGroupChanged(I)V
    .locals 0

    return-void
.end method

.method public onTabIsLocked(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    return-void
.end method

.method public onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
    .locals 0

    return-void
.end method

.method public onToolbarShadowVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onToolbarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onUrlChangedWithPrevUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onZoomValueChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;DZ)V
    .locals 0

    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTranslationBottomBarY(FZ)V
    .locals 0

    return-void
.end method

.method public setTranslationToolBarY(FZ)V
    .locals 0

    return-void
.end method

.method public setZoomButtonVisibility(Z)V
    .locals 0

    return-void
.end method

.method public showReloadTipCardIfNeeded()V
    .locals 0

    return-void
.end method
