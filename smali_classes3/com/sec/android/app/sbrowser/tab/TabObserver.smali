.class public interface abstract Lcom/sec/android/app/sbrowser/tab/TabObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab/TabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/TabObserver$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    return-void
.end method


# virtual methods
.method public onActivateContents()V
    .locals 0

    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(F)V
    .locals 0

    return-void
.end method

.method public onClearDisplayedGraphics()V
    .locals 0

    return-void
.end method

.method public onCloseContents()V
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

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 0

    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onDidAccessInitialDocument()V
    .locals 0

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    return-void
.end method

.method public onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    return-void
.end method

.method public onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onDragEntered()V
    .locals 0

    return-void
.end method

.method public onEnableUiControl(IZ)V
    .locals 0

    return-void
.end method

.method public onFaviconUpdated()V
    .locals 0

    return-void
.end method

.method public onFindOnPage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0

    return-void
.end method

.method public onFirstVisuallyNonEmptyPaint()V
    .locals 0

    return-void
.end method

.method public onFullscreenModeChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onHoverExit()V
    .locals 0

    return-void
.end method

.method public onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(ZZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 0

    return-void
.end method

.method public onLoadingStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMouseWheelScrollStarted()V
    .locals 0

    return-void
.end method

.method public onNavigationStateChangedUpdateTitle()V
    .locals 0

    return-void
.end method

.method public onNavigationStateChangedUpdateUrl()V
    .locals 0

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0

    return-void
.end method

.method public onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V
    .locals 0

    return-void
.end method

.method public onPageSavedAs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPrimaryMainDocumentElementAvailable()V
    .locals 0

    return-void
.end method

.method public onPullToRefresh()V
    .locals 0

    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 0

    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 0

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 0

    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0

    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 0

    return-void
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 0

    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebSearch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0

    return-void
.end method
