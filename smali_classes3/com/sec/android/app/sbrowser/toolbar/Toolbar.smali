.class public Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
.super Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;


# instance fields
.field protected mBaseLayout:Landroid/widget/LinearLayout;

.field protected mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

.field protected mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

.field protected mOuterLayout:Landroid/widget/LinearLayout;

.field protected mOuterMarginLayout:Landroid/widget/LinearLayout;

.field protected mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

.field protected mToolbarMainLayout:Landroid/widget/RelativeLayout;

.field protected mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

.field protected mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

.field protected mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    return-void
.end method

.method private getTopMarginForMultiWindowHandle()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->lambda$onFinishInflate$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private handleTransBarVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isSIXEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded()V

    return-void
.end method

.method private isOuterMarginShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSIXEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    return v1
.end method

.method private isTranslatorEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportMainSwitch()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessDefaultMobileLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-ne p3, p7, :cond_4

    if-eq p5, p9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, "height changed: top: "

    const-string p2, " oldTop: "

    const-string p4, " bottom: "

    invoke-static {p3, p7, p1, p2, p4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " oldBottom: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "si__Toolbar"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarHeightChanged()V

    :cond_5
    :goto_1
    return-void
.end method

.method private makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;
    .locals 12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v3

    :goto_1
    move-object v9, v3

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v6

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTaskId:I

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getGroupColorValue()I

    move-result v10

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result p0

    if-eqz p0, :cond_3

    move v11, v2

    goto :goto_4

    :cond_3
    move v11, v1

    :goto_4
    new-instance p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;-><init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;IZ)V

    return-object p0
.end method

.method private onTransBarLoadingStatusChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->doNotStoreCurrentPage()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->handleTransBarVisibility()V

    return-void
.end method

.method private setVisibilityOfLandscapeViewIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->shouldUpdateButtons()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtonsInternal()V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded(Z)V

    return-void
.end method

.method private shouldInvisibleExtraBar()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->shouldEnableCustomHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p0

    return p0
.end method

.method private shouldShowBookmarkBar()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isHideBookmarkBarCondition()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateTabBarLayout()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->shouldEnableCustomHeader()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getCurrentThemeColor()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    :cond_1
    return-void
.end method

.method private updateToolbarButtonsInternal()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateToolbarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->updateHistoryNaviAnchorView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyMultiTabCountChanged()V

    return-void
.end method


# virtual methods
.method public canForceCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public captureToolbarBitmap()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0715d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTopMarginForMultiWindowHandle()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowingWithTwoLine()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0714c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStatesRecursive(Landroid/view/ViewGroup;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "si__Toolbar"

    const-string v0, "ViewUtils.captureBitmap failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public changeMode()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->changeMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->postCaptureBitmap()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarChangeMode()V

    return-void
.end method

.method public disableReaderButton()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->enableReaderButton(Z)V

    return-void
.end method

.method public disableSplitSwitcher()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->disableSplitSwitcher()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveVisionTextView()Z

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveObjectCaptureView()Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public enableBookmarkBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->isBookmarkBarEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableBookmarkBarContainerWithVisibility(Z)V

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_0
    return-void
.end method

.method public enableTransBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->isTransBarEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->enableTransBarContainerWithVisibility(Z)V

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_0
    return-void
.end method

.method public focusInLeft()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getFirstEnabledButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->focusInLeft()V

    :goto_0
    return-void
.end method

.method public focusInRight()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getLastEnabledButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowingWithOneLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusNewTabButton()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->focusInRight()V

    :goto_0
    return-void
.end method

.method public focusOutFromFindOnPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowingWithTwoLine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public forceCapture()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerForceCapture()V

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getBaseLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBaseLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getBlurRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBlurRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    return-object p0
.end method

.method public getCurrentThemeColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentThemeColor()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    return-object p0
.end method

.method public getMaxVisibleHeight()I
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessDefaultMobileLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0715d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTopMarginForMultiWindowHandle()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0714c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071646

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    add-int/2addr v0, v2

    move v1, v6

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/2addr v0, v3

    move v1, v6

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v6

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_4
    move v6, v1

    :goto_0
    if-eqz v6, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOuterLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public getReaderThemeColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_0

    const-string p0, "si__Toolbar"

    const-string v0, "getReaderThemeColor mTabDelegate is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result p0

    return p0
.end method

.method public getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    return-object p0
.end method

.method public getToolbarButtons()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getAllButtonsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getLocationBarButtons()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getTabBarButtons()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->getBookmarkBarButtons()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public getToolbarMainLayout()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarMainLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    return-object p0
.end method

.method public getVisibleHeight()I
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessDefaultMobileLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTopMarginForMultiWindowHandle()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071646

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    add-int/2addr v0, v1

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    add-int/2addr v0, v2

    move v1, v6

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransbarPopupType(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    add-int/2addr v0, v3

    move v1, v6

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isOuterMarginShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_8
    move v6, v1

    :goto_1
    if-eqz v6, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getVisibleWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public hideShadow()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->hideShadow()V

    return-void
.end method

.method public hideTopProgressBar()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public invalidateLayout()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isBookmarkBarContainerShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBottomBarShowing()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public isHideBookmarkBarCondition()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isNewQuickAccessDefaultMobileLayout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewQuickAccessPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result p0

    return p0
.end method

.method public isNewQuickAccessPortraitLayout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickAccessPage()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTaskId:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isTabBarShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isTabBarShowingWithOneLine()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabBarShowingWithTwoLine()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransBarContainerShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBackForwardStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->canCurrentTabGoBack()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setBackwardButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->canCurrentTabGoForward()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setForwardButtonEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    return-void
.end method

.method public notifyBackgroundColorChanged()V
    .locals 3

    const-string v0, "si__Toolbar"

    const-string v1, "notifyBackgroundColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInGroup()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/w;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/w;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->notifyBackgroundColorChanged()V

    :cond_1
    return-void
.end method

.method public notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyLoadingStatusChanged(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onTransBarLoadingStatusChanged()V

    return-void
.end method

.method public notifyMultiTabCountChanged()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInGroup()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setTabsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTabCountOfCurrentGroup()I

    move-result v0

    const-string v1, "notifyMultiTabCountChanged, tabCount = "

    const-string v2, "si__Toolbar"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%d"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->forceCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyReadAloudStatusChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateReadAloudButtonEnabled()V

    return-void
.end method

.method public notifyReadHighlightsAloudStatusChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateReadHighlightsAloudButtonEnabled()V

    return-void
.end method

.method public notifySummarizeStatusChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateSummaryButtonEnabled()V

    return-void
.end method

.method public notifyTransBarClose()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->notifyTransBarClose()V

    return-void
.end method

.method public notifyTransBarInstanceUpdate(ZLandroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onPause(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public notifyTransBarOffsetsForFullscreenChanged(FFZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onOffsetsForFullscreenChanged(FFZZ)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public onDecorFitsSystemWindowsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarHeight()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onFinishInflate()V

    const v0, 0x7f0b0d8d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarMainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0d94

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0d8a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBaseLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0d95

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarMainLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarMainLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->addEditModeListener(Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/e;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0b0da2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0d7a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadow()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onImeInsetsChanged(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateSearchWindowPosition()V

    return-void
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onPenEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v4, v1, v3

    add-int/2addr v2, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, p0

    :goto_0
    check-cast v5, Landroid/view/View;

    invoke-static {v5, v1, v2, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resolveTargetView(Landroid/view/View;[III)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public postCaptureBitmap()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_0
    return-void
.end method

.method public refreshBookmarkBarDataSet()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->shouldShowBookmarkBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    return-void
.end method

.method public requestBitmap()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateTextFieldColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateTextFieldBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->updateToolbarShadowColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBackgroundColor()I

    move-result p0

    if-eq p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBaseLayoutAccessibilityEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setDelegate(Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;)V

    return-void
.end method

.method public setFocusUrlBar()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setFocusUrlBarInLocationBar()V

    return-void
.end method

.method public setForceVisibility(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLoadStartProgress(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setLoadStartProgress(Ljava/lang/String;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->updateProgress(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->updateProgressBar(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setProgress(I)V

    return-void
.end method

.method public setProgressbarVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setProgressbarVisibility(Z)V

    return-void
.end method

.method public setTabBarVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->enableTabBarContainer(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateLocationBarMargin()V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method

.method public setTopProgressDrawable()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setTopProgressDrawable()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->showProgressbar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->hideProgressbar()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    move p1, v1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessDefaultMobileLayout()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, p1

    :cond_5
    :goto_1
    invoke-super {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onVisibilityChanged(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded()V

    return-void
.end method

.method public setVisibilityOfLandscapeViewIfNeeded(Z)V
    .locals 3

    const-string v0, "setVisibilityOfLandscapeViewIfNeeded(), Landscape: "

    const-string v1, "si__Toolbar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getAllButtonsList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string p1, "setVisibilityOfLandscapeViewIfNeeded(), No toolbar button"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isReaderProgressVisible()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTextFieldBackgroundVisibility()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateLocationBarMargin()V

    return-void
.end method

.method public shouldCaptureBitmap()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarProgressBar:Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressbarVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isReaderProgressVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isPWAInstalling()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public shouldCaptureLater()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->shouldCaptureLater()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->shouldCaptureLater()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->shouldCaptureLater()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->shouldCaptureLater()Z

    move-result p0

    return p0
.end method

.method public showExtraBarIfNeeded()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->handleTransBarVisibility()V

    return-void
.end method

.method public showReconnectToOnlinePopup()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->showReconnectToOnlinePopup(Landroid/view/View;)V

    return-void
.end method

.method public showShadowIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadowIfNeeded()V

    return-void
.end method

.method public updateBookmarkBarVisibility(Z)V
    .locals 2

    const-string v0, "updateBookmarkBarVisibility : "

    const-string v1, "si__Toolbar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->shouldInvisibleExtraBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadow()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    if-nez p1, :cond_1

    const p1, 0x7f0b0d7a

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onBookmarkBarInflated()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyVisibilityChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->enableBookmarkBar(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mBookmarkBarContainer:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayoutPosition()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessPortraitLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarHeight()V

    :cond_4
    return-void
.end method

.method public updateCutOutMarginsVisibility()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility(Z)V

    return-void
.end method

.method public updateCutOutMarginsVisibility(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeightIgnoringVisibility(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->updateCutOutMarginsVisibility(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->forceCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTabBarVisibility(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateTabBarVisibility : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__Toolbar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "updateTabBarVisibility : isDesktopMode - true"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->shouldInvisibleExtraBar()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    const p1, 0x7f0b0da2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onTabBarInflated()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadow()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result p1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setTabBarVisibility(Z)V

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setProgressbarVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTabBar:Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayoutPosition()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isNewQuickAccessPortraitLayout()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarHeight()V

    :cond_6
    return-void
.end method

.method public updateTextFieldBackgroundVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateTextFieldBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    return-void
.end method

.method public updateToolbarButtons()V
    .locals 2

    const-string v0, "si__Toolbar"

    const-string v1, "[CustomizeToolbar] updateToolbarButtons()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtonsInternal()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded()V

    return-void
.end method

.method public updateToolbarLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateToolbarLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarLayout()V

    return-void
.end method

.method public updateToolbarLayoutPosition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateToolbarLayoutPosition()V

    return-void
.end method

.method public updateToolbarShadow()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->updateToolbarShadow()V

    return-void
.end method

.method public updateToolbarShadowColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->updateToolbarShadowColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    return-void
.end method

.method public updateTransBarBtnStatus(Z)V
    .locals 2

    const-string v0, "updateTransBarBtnStatus : "

    const-string v1, "si__Toolbar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->updateTransBarBtnStatus(Z)V

    :cond_0
    return-void
.end method

.method public updateTransBarChangeMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isSIXEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->notifyChangeMode()V

    :cond_0
    return-void
.end method

.method public updateTransBarSpinnerUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onUpdateLangList()V

    :cond_0
    return-void
.end method

.method public updateTransBarVisibility(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledTrans()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "updateTransBarVisibility : "

    const-string v1, "si__Toolbar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTranslatorEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isSIXEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledTrans()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    const/4 v1, 0x1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransbarPopupType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v2, 0x7f0b06c8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    goto :goto_0

    :cond_1
    const p1, 0x7f0b0da5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewStub;

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransbarV2(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0e08fe

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto :goto_1

    :cond_2
    const v3, 0x7f0e08fd

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v3, v2, p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onTransBarInflated(Landroid/view/ViewStub;Landroid/view/View;)V

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->flushEntry()V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onVisibilityDelayed(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->enableTransBar(Z)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mTransBarContainer:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onVisibilityDelayed(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->notifyTransBarClose()V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadow()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayoutPosition()V

    return-void
.end method
