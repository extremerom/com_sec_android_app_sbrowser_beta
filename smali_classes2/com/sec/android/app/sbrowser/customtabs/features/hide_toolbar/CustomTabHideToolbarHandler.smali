.class Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

.field private mBottomControlsHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

.field private final mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

.field private mTopControlsHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->lambda$startFindOnPage$0()V

    return-void
.end method

.method private hideBottomBar()V
    .locals 2

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[hideBottomBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setVisibility(I)V

    return-void
.end method

.method private hideTopBar()V
    .locals 2

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[hideTopBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setVisibility(I)V

    return-void
.end method

.method private isGenericMotionEvent(I)Z
    .locals 0

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$startFindOnPage$0()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomBar()V

    return-void
.end method

.method private showBottomBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[showBottomBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showTopBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldTopBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[showTopBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustToolbarScrollByTopControls(FF)V
    .locals 2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isLoading()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getTranslationY()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getTranslationY()F

    move-result p2

    neg-float p2, p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibleHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[adjustToolbarScrollByTopControls] setTranslationY view toolbar, topControlsOffsetYPix = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CustomTabHideToolbarHandler"

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopBar()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setTranslationY(F)V

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomBar()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getTopControlsOffsetYPix()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomBar()V

    :cond_2
    :goto_0
    return-void
.end method

.method public deliverMotionEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-object v1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne p2, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->isGenericMotionEvent(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne p2, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->isGenericMotionEvent(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getY()F

    move-result p2

    neg-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldBottomBarShow()Z

    move-result p0

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldTopBarShow()Z

    move-result p0

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public hideBottomControlView()V
    .locals 2

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[hideBottomControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomBar()V

    return-void
.end method

.method public hideTopControlView()V
    .locals 2

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[hideTopControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideTopBar()V

    return-void
.end method

.method public isBottomBarHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result p0

    return p0
.end method

.method public onContentViewSizeChanged(Lcom/sec/android/app/sbrowser/tab/Tab;ZII)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomControlView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShow(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public resetBottomControlViewPosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomBar()V

    :cond_1
    return-void
.end method

.method public resetTopControlViewPosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopBar()V

    :cond_1
    return-void
.end method

.method public setBitmapFromBottomBar(Lcom/sec/android/app/sbrowser/tab/Tab;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldBottomBarShow()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return v0
.end method

.method public setBitmapFromTopBar(Lcom/sec/android/app/sbrowser/tab/Tab;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldTopBarShow()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return v0
.end method

.method public setBottomControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[setTopControlsHeight] "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopControlsHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CustomTabHideToolbarHandler"

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopControlsHeight:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTopControlsHeight(II)V

    return-void
.end method

.method public showBottomControlView()V
    .locals 2

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[showBottomControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomBar()V

    :cond_0
    return-void
.end method

.method public showControlViewIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomBar()V

    :cond_0
    return-void
.end method

.method public showTopControlView()V
    .locals 2

    const-string v0, "CustomTabHideToolbarHandler"

    const-string v1, "[showTopControlView]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldTopBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopBar()V

    :cond_0
    return-void
.end method

.method public startFindOnPage()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopControlsHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->isBottomBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateControlsHeight] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopControlsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CustomTabHideToolbarHandler"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTopControlsHeight(II)V

    return-void
.end method

.method public updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;IIZ)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopControlsHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->isBottomBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateControlsHeight] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopControlsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomControlsHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CustomTabHideToolbarHandler"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public updateToolbarByOffsetY(Lcom/sec/android/app/sbrowser/tab/Tab;FF)Z
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    const-string v0, "CustomTabHideToolbarHandler"

    const/4 v1, 0x1

    if-nez p3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isLoading()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[updateToolbarByOffsetY] show view toolbar, topControlsOffsetYPix = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomBar()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isLoading()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[updateToolbarByOffsetY] hide view toolbar, topControlsOffsetYPix = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideTopBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomBar()V

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
