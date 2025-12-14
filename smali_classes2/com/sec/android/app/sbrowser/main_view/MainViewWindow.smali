.class Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;
.super Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDecorFitsSystemWindows:Z

.field private mIsCustomHeaderEnabled:Z

.field private mIsInsetsAnimationRunning:Z

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mPreviousCutout:Landroid/view/DisplayCutout;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/Y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/Y;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mPreviousCutout:Landroid/view/DisplayCutout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mDecorFitsSystemWindows:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsInsetsAnimationRunning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateCutoutMode()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->lambda$new$0()V

    return-void
.end method

.method private findLargestUnoccludedInsetRect(Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 9

    invoke-static {p1}, LA2/e;->j(Landroid/view/WindowInsets;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {}, Lf1/E;->z()I

    move-result v0

    invoke-static {p1, v0}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {}, Lf1/E;->z()I

    move-result v1

    invoke-static {p1, v1}, LA2/e;->o(Landroid/view/WindowInsets;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "MainViewWindow"

    const-string v1, "[findLargestUnoccludedInsetRect] the whole bar is customizable"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    invoke-direct {p1, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_1

    move v4, p0

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, v7

    if-le v8, v5, :cond_2

    iget v5, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v3, v7, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move v5, v8

    :cond_2
    iget v4, v6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    if-le v7, v5, :cond_4

    add-int v5, v4, v7

    iget v8, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v3, v4, v2, v5, v8}, Landroid/graphics/Rect;->set(IIII)V

    move v5, v7

    :cond_4
    iget v4, v6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-le v4, v5, :cond_7

    iget p0, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v3, v2, v2, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    sub-int/2addr p0, v4

    if-le p0, v5, :cond_7

    add-int/2addr p0, v4

    iget p1, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v3, v4, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    :goto_2
    return-object v3
.end method

.method private getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    return-object p0
.end method

.method private getTabBarView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method private isCaptionHeaderEnabled(Landroid/view/WindowInsets;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->g(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->top:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewQuickAccessNativePage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSoftInputAdjustResize()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToolbarAtBottom()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

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

.method private static synthetic lambda$new$0()V
    .locals 0

    return-void
.end method

.method private onImeHeightChanged(Lf1/w0;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lf1/w0;->a:Lf1/u0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lf1/u0;->o(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v1

    iget v1, v1, LX0/b;->d:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lf1/u0;->f(I)LX0/b;

    move-result-object p1

    iget p1, p1, LX0/b;->d:I

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int v0, v1, p1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onImeInsetsChanged(I)V

    return-void

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onImeInsetsChanged(I)V

    return-void
.end method

.method private removeInsetsAnimationCallbackIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isToolbarAtBottom()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MainViewWindow"

    const-string v1, "removeInsetsAnimationCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->detach()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onImeInsetsChanged(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsInsetsAnimationRunning:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendSALoggingForCustomHeader(Z)V
    .locals 2

    const-string v0, "201"

    const-string v1, "202"

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v0, v1

    :cond_0
    const-string p0, "4600"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v0, v1

    :cond_2
    const-string p0, "4601"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setDecorFitsSystemWindows(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mDecorFitsSystemWindows:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "setDecorFitsSystemWindows: "

    const-string v1, "MainViewWindow"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mDecorFitsSystemWindows:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateInsetsRootView(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-static {v0, p1}, LG5/W2;->c(Landroid/view/Window;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onDecorFitsSystemWindowsChanged(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onDecorFitsSystemWindowsChanged()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onDecorFitsSystemWindowsChanged(Z)V

    return-void
.end method

.method private setInsetsAnimationCallbackIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isToolbarAtBottom()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MainViewWindow"

    const-string v1, "setInsetsAnimationCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->onImeHeightChanged(Lf1/w0;)V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->detach()V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->attach()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isNewQuickAccessNativePage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    :cond_4
    :goto_0
    return-void
.end method

.method private setOnApplyWindowInsetsListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private showTabBarOnSystemBar(Landroid/view/WindowInsets;)V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getTabBarView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->findLargestUnoccludedInsetRect(Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p1}, LA2/e;->j(Landroid/view/WindowInsets;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    const v4, 0x7f0714e5

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    iget p1, v1, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateCutoutMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v1, :cond_3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    return-void
.end method

.method private updateInsetsRootView(Landroid/view/WindowInsets;)V
    .locals 4
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mDecorFitsSystemWindows:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isSoftInputAdjustResize()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8f

    goto :goto_0

    :cond_1
    const/16 v1, 0x87

    :goto_0
    invoke-static {p1, v1}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Insets;->left:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/graphics/Insets;->top:I

    :goto_1
    iget p0, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    return-void
.end method


# virtual methods
.method public decorFitsSystemWindows()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mDecorFitsSystemWindows:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    invoke-static {p2}, LG5/g3;->b(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mPreviousCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getFindOnPage()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateCutOutMarginsVisibility(Z)V

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mPreviousCutout:Landroid/view/DisplayCutout;

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateInsetsRootView(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onApplyWindowInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsInsetsAnimationRunning:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isToolbarAtBottom()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onImeInsetsChanged(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->onImeHeightChanged(Lf1/w0;)V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateCustomHeader(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onEnd(Lf1/l0;)V
    .locals 0
    .param p1    # Lf1/l0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->removeInsetsAnimationCallbackIfNeeded()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsInsetsAnimationRunning:Z

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->setOnApplyWindowInsetsListener()V

    return-void
.end method

.method public onPrepare(Lf1/l0;)V
    .locals 0
    .param p1    # Lf1/l0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsInsetsAnimationRunning:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->removeInsetsAnimationCallbackIfNeeded()V

    return-void
.end method

.method public onProgress(Lf1/w0;Ljava/util/List;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf1/w0;",
            "Ljava/util/List<",
            "Lf1/l0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->onImeHeightChanged(Lf1/w0;)V

    return-void
.end method

.method public onUrlEditModeFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsInsetsAnimationRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->removeInsetsAnimationCallbackIfNeeded()V

    :cond_0
    return-void
.end method

.method public onUrlEditModeStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->setInsetsAnimationCallbackIfNeeded()V

    return-void
.end method

.method public shouldEnableCustomHeader()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isCaptionHeaderEnabled(Landroid/view/WindowInsets;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_0
    return v1
.end method

.method public updateCustomHeader(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateCustomHeader] isTabBarVisible  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldEnableCustomHeader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->shouldEnableCustomHeader()Z

    move-result v1

    const-string v2, "MainViewWindow"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->shouldEnableCustomHeader()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getTabBarView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->sendSALoggingForCustomHeader(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->getTabBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0714c4

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->sendSALoggingForCustomHeader(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->setDecorFitsSystemWindows(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-static {p1}, Lf1/E;->i(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->v(Landroid/view/WindowInsetsController;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->D(Landroid/view/WindowInsetsController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->showTabBarOnSystemBar(Landroid/view/WindowInsets;)V

    return-void

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->sendSALoggingForCustomHeader(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mIsCustomHeaderEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method public updateDecorFitsSystemWindows()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->shouldEnableCustomHeader()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->isNewQuickAccessNativePage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    const-string v0, "updateDecorFitsSystemWindows: "

    const-string v2, "MainViewWindow"

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public updateWindowMode()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateCutoutMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateDecorFitsSystemWindows()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->setInsetsAnimationCallbackIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->setOnApplyWindowInsetsListener()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->updateCustomHeader(Z)V

    return-void
.end method
