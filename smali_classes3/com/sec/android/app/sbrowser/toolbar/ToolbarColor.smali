.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

.field private mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

.field private mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    return-void
.end method

.method private getButtonRippleResId(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isDarkTheme()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f080770

    goto :goto_1

    :cond_2
    :goto_0
    const p0, 0x7f080771

    :goto_1
    return p0
.end method

.method private getNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isNoTabsShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->needToSetNightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT_NO_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_NO_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NORMAL_NO_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabClosing()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->needToSetNightTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_3
    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NORMAL_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isReadAloudToolbarMaximized()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->needToSetNightTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT_READ_ALOUD:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_READ_ALOUD:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->isReaderThemeAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne v1, v4, :cond_8

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_BLACK_READ_ALOUD:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->isReaderThemeAvailable()Z

    move-result p0

    if-eqz p0, :cond_9

    if-ne v1, v3, :cond_9

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_SEPIA_READ_ALOUD:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NORMAL_READ_ALOUD:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_TRANSPARENT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_QUICKACCESS:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->needToSetNightTheme()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_e
    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->isReaderThemeAvailable()Z

    move-result v2

    if-eqz v2, :cond_10

    if-ne v1, v4, :cond_10

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_BLACK:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->isReaderThemeAvailable()Z

    move-result v2

    if-eqz v2, :cond_11

    if-ne v1, v3, :cond_11

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_SEPIA:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_FULLSCREEN_CONTENT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabClosing()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->isNavigationBarColorUpdateRequiredForQuickAccessEditMode()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_QUICKACCESS_EDIT_MODE:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :cond_14
    :goto_0
    return-object v0
.end method

.method private isNavigationBarColorUpdateRequiredForQuickAccessEditMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isCheckableBottomBarVisible()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isReaderThemeAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isMultiTabClosing()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToSetNightTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

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

.method private setIconColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    check-cast p1, Landroid/widget/ImageButton;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private setTabsGroupColor(Landroidx/appcompat/widget/AppCompatTextView;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getTabGroupTheme()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    const v0, 0x7f060d65

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f080778

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateNavigationBarColor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f060d67

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f060d60

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f060d68

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f060d61

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f060d62

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getMoreTextColor()I

    move-result p0

    return p0

    :cond_6
    const p1, 0x7f060d5d

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public setBackground()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v3

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTaskId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getGroupColorValue()I

    move-result v7

    new-instance v0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;-><init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInGroup()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    return-void
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarLeftItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->updateButtons(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarRightItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->updateButtons(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->updateNavigationBarColor()V

    return-void
.end method

.method public setBadgeColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b0d89

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setBrowserAssistColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b0d7b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    return-void
.end method

.method public setLeftButtonsManager(Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    return-void
.end method

.method public setMoreColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b0d91

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNotificationColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 2

    const v0, 0x7f0b0d78

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getButtonRippleResId(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setRightButtonsManager(Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    return-void
.end method

.method public setSettingsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b0d9b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setTabsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V
    .locals 1

    const v0, 0x7f0b0d18

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setTabsGroupColor(Landroidx/appcompat/widget/AppCompatTextView;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f080777

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateButtons(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;",
            "Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f0b067b

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setNotificationColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0b0078

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setTabsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    goto :goto_1

    :cond_3
    const v2, 0x7f0b0050

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setBrowserAssistColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_4
    const v2, 0x7f0b0073

    if-ne v0, v2, :cond_5

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setSettingsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_5
    const v2, 0x7f0b0069

    if-ne v0, v2, :cond_6

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setMoreColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_6
    const v2, 0x7f0b005d

    if-ne v0, v2, :cond_7

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setBadgeColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSIXIconUpdated()V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setIconColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    :goto_1
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->getButtonRippleResId(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_9
    return-void
.end method
