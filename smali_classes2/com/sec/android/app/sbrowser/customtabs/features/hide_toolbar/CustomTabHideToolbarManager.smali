.class public Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

.field private final mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

.field private final mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

.field private mIsContentResized:Z

.field private final mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

.field private final mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;)V
    .locals 3
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/c;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;I)V

    invoke-direct {v0, p3, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/c;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;I)V

    invoke-direct {v0, p4, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->lambda$finishFindOnPage$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->lambda$onLoadFinished$0(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method private getBottomBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibleHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTopBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldTopBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibleHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

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

.method private synthetic lambda$finishFindOnPage$1()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    if-nez v0, :cond_1

    const-string v0, "CustomTabHideToolbarManager"

    const-string v1, "[finishFindOnPage] set bottom bar visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->convertBitmapToolbarToView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureBottomBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void
.end method

.method private setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isNoUiMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x2

    :cond_4
    :goto_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isHideToolbarDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "[setBrowserControlsState] -> "

    const-string v0, "CustomTabHideToolbarManager"

    invoke-static {p2, p0, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->updateBrowserControlsState(IZ)V

    return-void
.end method

.method private shouldBitmapLayerDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isNoUiMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isHideToolbarDisabled()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public convertBitmapToolbarToView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "CustomTabHideToolbarManager"

    const-string v1, "[convertBitmapToolbarToView]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->resetTopControlViewPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->resetBottomControlViewPosition()V

    :cond_3
    :goto_0
    return-void
.end method

.method public disableHideToolbar(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideTopControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomControlView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void
.end method

.method public enableHideToolbar(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showControlViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureTopBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureBottomBar()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void
.end method

.method public finishFindOnPage()V
    .locals 4

    const-string v0, "CustomTabHideToolbarManager"

    const-string v1, "[finishFindOnPage]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public forceCaptureBottomBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->forceCapture()V

    return-void
.end method

.method public forceCaptureTopBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->forceCapture()V

    return-void
.end method

.method public isContentResized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    return p0
.end method

.method public isKeyboardOrClipboardShowing()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

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

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->resetTopControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->resetBottomControlViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->deliverMotionEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onBottomBarBitmapCaptured(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->setBitmapFromBottomBar(Lcom/sec/android/app/sbrowser/tab/Tab;Landroid/graphics/Bitmap;)Z

    move-result v0

    const-string v1, "CustomTabHideToolbarManager"

    if-nez v0, :cond_1

    const-string p1, "[onBottomBarBitmapCaptured] bitmap is not updated"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[onBottomBarBitmapCaptured] bitmap : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isKeyboardOrClipboardShowing()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CustomTabHideToolbarManager"

    if-eqz v1, :cond_3

    const-string v1, "[onContentViewSizeChanged] - handleForResizedContentView"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isTopInstanceInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[onContentViewSizeChanged] - do not hide bottom control view"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showControlViewIfNeeded()V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v4, 0x30

    if-ne v1, v4, :cond_2

    const-string v0, "[onContentViewSizeChanged] - adjust nothing soft input."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    return-void

    :cond_2
    const-string v1, "[onContentViewSizeChanged] - hide bottom bar due to keyboard or clipboard"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->onContentViewSizeChanged(Lcom/sec/android/app/sbrowser/tab/Tab;ZII)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    goto :goto_0

    :cond_3
    const-string v1, "[onContentViewSizeChanged] - restoreFromResizedContents"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v5

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->onContentViewSizeChanged(Lcom/sec/android/app/sbrowser/tab/Tab;ZII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[onContentViewSizeChanged] - should capture bottombar"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->forceCaptureBottomBar()V

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onDidEnableBitmapCompositionForLayer] composited = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", visible = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", layerType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CustomTabHideToolbarManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDidNavigateMainFrame()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "CustomTabHideToolbarManager"

    const-string v2, "[onDidNavigateMainFrame]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void
.end method

.method public onLoadFailed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "CustomTabHideToolbarManager"

    const-string v2, "[onLoadFailed]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void
.end method

.method public onLoadFinished()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CustomTabHideToolbarManager"

    const-string v2, "[onLoadFinished]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LGa/d;

    const/16 v3, 0x15

    invoke-direct {v2, v3, p0, v0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadStarted()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    const-string v2, "CustomTabHideToolbarManager"

    if-eqz v1, :cond_0

    const-string v0, "[onLoadStarted] show view toolbar"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopControlView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    :cond_2
    const-string v1, "[onLoadStarted] show bitmap toolbar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    :goto_0
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onOffsetsForFullscreenChanged] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomTabHideToolbarManager"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isNoUiMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;IIZ)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateToolbarByOffsetY(Lcom/sec/android/app/sbrowser/tab/Tab;FF)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->adjustToolbarScrollByTopControls(FF)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "CustomTabHideToolbarManager"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return-void
.end method

.method public onShow()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "CustomTabHideToolbarManager"

    const-string v2, "[onShow]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->onShow(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "CustomTabHideToolbarManager"

    const-string v2, "[onStop]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public onTabHidden()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    return-void
.end method

.method public onTakeFocus()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mIsContentResized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public onTalkBackStatusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "[onTalkBackStatusChanged] enabled : "

    const-string v2, "CustomTabHideToolbarManager"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->resetTopControlViewPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->resetBottomControlViewPosition()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onToggleFullscreenModeForTab(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "[onToggleFullscreenModeForTab] enterFullscreen : "

    const-string v2, "CustomTabHideToolbarManager"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1, v0, v1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideTopControlView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->hideBottomControlView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->disableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->disableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopControlView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    const/4 p1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->setBrowserControlsState(Lcom/sec/android/app/sbrowser/tab/Tab;IZ)V

    :goto_0
    return-void
.end method

.method public onTopBarBitmapCaptured(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->setBitmapFromTopBar(Lcom/sec/android/app/sbrowser/tab/Tab;Landroid/graphics/Bitmap;)Z

    move-result v0

    const-string v1, "CustomTabHideToolbarManager"

    if-nez v0, :cond_1

    const-string p1, "[onTopBarBitmapCaptured] bitmap is not updated"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[onTopBarBitmapCaptured] bitmap : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->resetCachedPixels()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->isInvalidTab(Lcom/sec/android/app/sbrowser/tab/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isFindOnPageRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "[onWindowFocusChanged] hasWindowFocus : "

    const-string v2, "CustomTabHideToolbarManager"

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getTopBarHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->getBottomBarHeight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->updateControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableTopBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->enableBottomBitmapLayer(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->isBitmapToolbarHidden()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showTopControlView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->showBottomControlView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public postCaptureBottomBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mBottomBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->postCapture()V

    return-void
.end method

.method public postCaptureTopBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->shouldBitmapLayerDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mTopBarCaptureHelper:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->postCapture()V

    return-void
.end method

.method public setBottomControlsHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->setBottomControlsHeight(Lcom/sec/android/app/sbrowser/tab/Tab;I)V

    return-void
.end method

.method public startFindOnPage()V
    .locals 2

    const-string v0, "CustomTabHideToolbarManager"

    const-string v1, "[startFindOnPage]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->mHandler:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarHandler;->startFindOnPage()V

    return-void
.end method
