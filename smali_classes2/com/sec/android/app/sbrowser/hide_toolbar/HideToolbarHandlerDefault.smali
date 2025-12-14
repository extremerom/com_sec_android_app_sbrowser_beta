.class Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;
.super Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V

    const-string p0, "HideToolbarHandlerDefault"

    const-string p1, "[onCreate]"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->lambda$startFindOnPage$0()V

    return-void
.end method

.method private synthetic lambda$startFindOnPage$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideBottomBar()V

    return-void
.end method


# virtual methods
.method public adjustToolbarScrollByBottomControls(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public adjustToolbarScrollByTopControls(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isTabBarAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getTranslationY()F

    move-result p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibleHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showTopBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->setTranslationY(F)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showBottomBar()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getTopControlsOffsetYPix()F

    move-result p1

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideBottomBar()V

    :cond_2
    :goto_0
    return-void
.end method

.method public deliverMotionEvent(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->deliverMotionEvent(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isGenericMotionEvent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isGenericMotionEvent(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getY()F

    move-result p1

    neg-float p1, p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldBottomBitmapLayerEnabled()Z

    move-result p0

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldTopBitmapLayerEnabled()Z

    move-result p0

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DEFAULT"

    return-object p0
.end method

.method public hideBottomControlView()V
    .locals 2

    const-string v0, "HideToolbarHandlerDefault"

    const-string v1, "[hideBottomControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideBottomBar()V

    return-void
.end method

.method public hideTopControlView()V
    .locals 2

    const-string v0, "HideToolbarHandlerDefault"

    const-string v1, "[hideTopControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideTopBar()V

    return-void
.end method

.method public onContentViewSizeChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZII)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->hideBottomControlView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->showBottomControlView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideTopBar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->resetTopControlViewPosition()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->resetBottomControlViewPosition()V

    :cond_1
    return-void
.end method

.method public onShow(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public onToolbarVisibilityChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public resetBottomControlViewPosition()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->resetBottomControlViewPosition()V

    return-void
.end method

.method public resetTopControlViewPosition()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->resetTopControlViewPosition()V

    return-void
.end method

.method public setBitmapFromBottomBar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldBottomBitmapLayerEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return v0
.end method

.method public setBitmapFromTopBar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldTopBitmapLayerEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return v0
.end method

.method public showBottomControlView()V
    .locals 2

    const-string v0, "HideToolbarHandlerDefault"

    const-string v1, "[showBottomControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showBottomBar()V

    return-void
.end method

.method public showTopControlView()V
    .locals 2

    const-string v0, "HideToolbarHandlerDefault"

    const-string v1, "[showTopControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showTopBar()V

    return-void
.end method

.method public startFindOnPage()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/b;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopControlsHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isBottomBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomControlsHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateControlsHeight] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopControlsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomControlsHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideToolbarHandlerDefault"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setTopControlsHeight(II)V

    return-void
.end method

.method public updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IIZ)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopControlsHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->isBottomBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomControlsHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateControlsHeight] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopControlsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomControlsHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideToolbarHandlerDefault"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public updateToolbarByBottomOffsetY(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public updateToolbarByOffsetY(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)Z
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    const-string v0, "HideToolbarHandlerDefault"

    const/4 v1, 0x1

    if-nez p3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p3

    if-eqz p3, :cond_0

    return v1

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[updateToolbarByOffsetY] show view toolbar,topControlsOffsetYPix = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->showBottomBar()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_7

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isLocationBarEditMode()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[updateToolbarByOffsetY] hide view toolbar,topControlsOffsetYPix = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;->hideBottomBar()V

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
