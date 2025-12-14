.class public Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBixbyInteractiveGuideListener:Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

.field private final mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

.field private mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

.field private final mCompactModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentControlsState:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mDefaultHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

.field private final mFocusModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

.field private mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

.field private mIsContentResized:Z

.field private mIsHideToolbarEnabled:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mSimpleModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

.field private final mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

.field private mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/d;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;I)V

    invoke-direct {v0, p3, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;-><init>(Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/d;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;I)V

    invoke-direct {v0, p4, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;-><init>(Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDefaultHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerFocus;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerFocus;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mFocusModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerSimple;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerSimple;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mSimpleModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerCompact;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerCompact;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mCompactModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->initBixbyInterativeGuide()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->lambda$onReaderPageVisibilityChanged$2(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->lambda$onLoadFinished$0(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->lambda$finishFindOnPage$1()V

    return-void
.end method

.method private disableForSplitTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getBottomBarHeight()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isSwipeViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getFixedBottombarHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isSplitTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibleHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTopBarHeight()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isSwipeViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getFixedToolbarHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isSplitTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldTopBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibleHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initBixbyInterativeGuide()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager$1;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBixbyInteractiveGuideListener:Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBixbyInteractiveGuideListener:Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addInteractiveGuideStateListener(Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HideToolbarManager"

    const-string v0, "initBixbyInterativeGuide : The Sbixby instance is NULL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isBixbyInteractiveGuideRunning()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->isInteractiveGuideRunning()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "HideToolbarManager"

    const-string v1, "isBixbyInteractiveGuideRunning : The Sbixby instance is NULL"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isFocusLayoutType()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isLandscapeOrTabletStyle()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$finishFindOnPage$1()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    if-nez v1, :cond_2

    const-string v1, "HideToolbarManager"

    const-string v2, "[finishFindOnPage] set bottom bar visible"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->convertBitmapToolbarToView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->showInfoBar()V

    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method private synthetic lambda$onReaderPageVisibilityChanged$2(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->hideTopControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->hideBottomControlView()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method private restoreFromResizedContents(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 5

    const-string v0, "[onContentViewSizeChanged] - restoreFromResizedContents"

    const-string v1, "HideToolbarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->showInfoBar()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v4

    invoke-interface {v0, p1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onContentViewSizeChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZII)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldBottomBarShow()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[onContentViewSizeChanged] - should capture bottombar"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->invalidateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    return-void
.end method

.method private shouldBitmapLayerDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isNewQuickAccessPage()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public convertBitmapToolbarToView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePageVisible()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "HideToolbarManager"

    const-string v1, "[convertBitmapToolbarToView]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    :cond_4
    :goto_0
    return-void
.end method

.method public enableHideToolbar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public finishFindOnPage()V
    .locals 4

    const-string v0, "HideToolbarManager"

    const-string v1, "[finishFindOnPage]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/c;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public forceCaptureBottomBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->forceCapture()V

    return-void
.end method

.method public forceCaptureTopBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->forceCapture()V

    return-void
.end method

.method public getCurrentControlState()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mCurrentControlsState:I

    return p0
.end method

.method public getCurrentHandler()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    return-object p0
.end method

.method public isContentResized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    return p0
.end method

.method public isHideToolbarEnabled()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsHideToolbarEnabled:Z

    return p0
.end method

.method public isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isKeyboardOrClipboardShowing()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isBrowserInFreeFormWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-lt v0, v2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lf1/E;->b()I

    move-result v0

    invoke-static {p0, v0}, Lf1/E;->q(Landroid/view/WindowInsets;I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    return v1
.end method

.method public isLocationBarEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isLocationBarEditMode()Z

    move-result p0

    return p0
.end method

.method public isToolbarFixed()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isToolBarFixed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isSplitTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isResultViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isBixbyInteractiveGuideRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldEnableCustomHeader()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public onAfterStatusBarChanged()V
    .locals 2

    const-string v0, "HideToolbarManager"

    const-string v1, "[onAfterStatusBarChanged]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    return-void
.end method

.method public onBeforeStatusBarChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onBeforeStatusBarChanged]"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showControlViewIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->deliverMotionEvent(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onBottomBarBitmapCaptured(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->setBitmapFromBottomBar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/graphics/Bitmap;)Z

    move-result p0

    const-string v0, "HideToolbarManager"

    if-nez p0, :cond_1

    const-string p0, "[onBottomBarBitmapCaptured] bitmap is not updated"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[onBottomBarBitmapCaptured] bitmap : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isToolbarFixed()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateToolbarByBottomOffsetY(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->adjustToolbarScrollByBottomControls(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onToolbarVisibilityChanged] orientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v3, "HideToolbarManager"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onConfigurationChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isKeyboardOrClipboardShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isLocationBarEditMode()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[onContentViewSizeChanged] - handleForResizedContentView"

    const-string v2, "HideToolbarManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isTopInstanceInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[onContentViewSizeChanged] - do not hide bottom control view"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showControlViewIfNeeded()V

    invoke-virtual {p0, v0, v4, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    const-string v1, "[onContentViewSizeChanged] - adjust nothing soft input."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->restoreFromResizedContents(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->shouldHideTopBarForContents()Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v5}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-virtual {p0, v0, v4, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :cond_4
    const-string v1, "[onContentViewSizeChanged] - hide bottom bar due to keyboard or clipboard"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v5, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onContentViewSizeChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZII)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->restoreFromResizedContents(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onCurrentTabChanged]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onCurrentTabChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureBottomBar()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBixbyInteractiveGuideListener:Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBixbyInteractiveGuideListener:Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->removeInteractiveGuideStateListener(Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBixbyInteractiveGuideListener:Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->onDestroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->onDestroy()V

    return-void
.end method

.method public onDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "HideToolbarManager"

    const-string v1, "[onDidNavigateMainFrame]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public onDragEntered()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onDragEntered]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onExtractionSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->convertBitmapToolbarToView()V

    return-void
.end method

.method public onFixToolbarSettingChanged()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isToolBarFixed()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onFixToolbarSettingChanged] enabled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HideToolbarManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setToolbarFixed(Z)V

    return-void
.end method

.method public onFullscreenImmersiveModeChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onFullscreenImmersiveModeChanged] enabled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HideToolbarManager"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1, v0, v1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :goto_0
    return-void
.end method

.method public onInputUrl()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onInputUrl]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public onLoadFailed(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "HideToolbarManager"

    const-string v1, "[onLoadFailed]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public onLoadFinished()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onLoadFinished]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/hide_toolbar/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/e;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadStarted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    const-string v2, "HideToolbarManager"

    if-eqz v1, :cond_0

    const-string v0, "[onLoadStarted] show view toolbar"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    :cond_2
    const-string v1, "[onLoadStarted] show bitmap toolbar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :goto_0
    return-void
.end method

.method public onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "[onNativePageVisibilityChanged] visible : "

    const-string v1, "HideToolbarManager"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureTopBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    cmpl-float v2, p3, v1

    const/4 v3, 0x0

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-interface {v0, p1, v3, v3, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IIZ)V

    :cond_4
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isToolbarFixed()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateToolbarByOffsetY(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->adjustToolbarScrollByTopControls(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;FF)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onOpenInNewTabBackground(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onOpenInNewTabBackground] tab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HideToolbarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public onPWAStatusChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onPWAStatusChanged] tab "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HideToolbarManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isPWAInstalling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/c;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReaderAnimationEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    return-void
.end method

.method public onReaderPageVisibilityChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "[onReaderPageVisibilityChanged] visible : "

    const-string v2, "HideToolbarManager"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isToolbarFixed()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/e;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    :goto_0
    return-void
.end method

.method public onResultViewVisibilityChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setToolbarFixed(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "HideToolbarManager"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    const-string v2, "HideToolbarManager"

    if-nez v1, :cond_1

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "[onShow]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onShow(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result p0

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "[onShow] shown tab is not current tab"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSmartTipShow()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "HideToolbarManager"

    const-string v2, "[onSmartTipShow]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_3
    return-void
.end method

.method public onSplitModeFinished()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onSplitModeFinished] split mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HideToolbarManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureBottomBar()V

    return-void
.end method

.method public onSplitModeStarted()V
    .locals 2

    const-string v0, "HideToolbarManager"

    const-string v1, "[onSplitModeStarted]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->disableForSplitTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getInstantTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->disableForSplitTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onStop]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public onSwipeViewRemoved()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onSwipeViewRemoved]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    return-void
.end method

.method public onTakeFocus()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public onTalkBackStatusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "[onTalkBackStatusChanged] enabled : "

    const-string v2, "HideToolbarManager"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[onToggleFullscreenModeForTab] enterFullscreen : "

    const-string v1, "HideToolbarManager"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2, p1, v0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->hideTopControlView()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->hideBottomControlView()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onToolbarEditModeFinished()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onToolbarEditModeFinished]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->shouldBottomBarShow()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureBottomBar()V

    return-void
.end method

.method public onToolbarEditModeStarted()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "HideToolbarManager"

    const-string v2, "[onToolbarEditModeStarted]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onToolbarHeightChanged()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isNoTabsShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->forceCapture()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onToolbarVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->onToolbarVisibilityChanged(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    return-void
.end method

.method public onTopBarBitmapCaptured(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->setBitmapFromTopBar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Landroid/graphics/Bitmap;)Z

    move-result p0

    const-string v0, "HideToolbarManager"

    if-nez p0, :cond_1

    const-string p0, "[onTopBarBitmapCaptured] bitmap is not updated"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[onTopBarBitmapCaptured] bitmap : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onTransBarLoadingUpdated(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isToolBarFixed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    const-string v3, "[onTransBarLoadingUpdated] enabled : "

    const-string v4, "HideToolbarManager"

    invoke-static {v3, v4, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {p1, v0, v1, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePageVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "[onWindowFocusChanged] hasWindowFocus : "

    const-string v2, "HideToolbarManager"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    :cond_4
    :goto_0
    return-void
.end method

.method public postCaptureBottomBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->postCapture()V

    return-void
.end method

.method public postCaptureTopBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->postCapture()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBottomBarCaptureHelper(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    return-void
.end method

.method public setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isToolbarFixed()Z

    move-result v0

    if-eqz v0, :cond_2

    move p2, v1

    :cond_2
    :goto_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsHideToolbarEnabled:Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsHideToolbarEnabled:Z

    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mCurrentControlsState:I

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[setBrowserControlsState] for ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideToolbarManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateBrowserControlsState(IZ)V

    return-void
.end method

.method public setHideToolbarHandler(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    return-void
.end method

.method public setIsContentResized(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mIsContentResized:Z

    return-void
.end method

.method public setToolbarFixed(Z)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showTopControlView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetTopControlViewPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setTopBarCaptureHelper(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;

    return-void
.end method

.method public shouldHideTopBarForContents()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isKeyboardOrClipboardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startFindOnPage()V
    .locals 2

    const-string v0, "HideToolbarManager"

    const-string v1, "[startFindOnPage]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->startFindOnPage()V

    return-void
.end method

.method public startFindOnPageWithTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[startFindOnPageWithTab] tab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HideToolbarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    return-void
.end method

.method public toggleHideToolbarMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mCompactModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isFocusLayoutType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isLandscapeOrTabletStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mSimpleModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mFocusModeHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDefaultHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[toggleHideToolbarMode] mode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HideToolbarManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->forceCaptureBottomBar()V

    return-void
.end method

.method public updateBottomBarForSplitOverSheet(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isToolbarFixed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->resetBottomControlViewPosition()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->showBottomControlView()V

    :cond_2
    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureBottomBar()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->isToolbarFixed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->hideBottomControlView()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->hideBottomControlView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->getBottomBarHeight()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;II)V

    return-void
.end method
