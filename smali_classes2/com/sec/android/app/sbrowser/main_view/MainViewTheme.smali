.class public Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method private canChangeStatusBarThemeColor(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabClosing()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->isFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method private isFullScreenMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isNewQuickAccessPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getLetterBoxColor()I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v4

    const v5, 0x7f06007d

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    if-ne v4, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    if-ne v4, v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    if-ne v4, v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public getStatusBarColor()I
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v5

    if-eqz v5, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v7

    const/4 v8, 0x2

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    if-eq v7, v8, :cond_5

    move v9, v3

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBackgroundColor()I

    move-result p0

    return p0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->isNewQuickAccessPage()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result v2

    if-lez v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isSolidColorLightThemed()Z

    move-result v9

    :goto_3
    invoke-static {v0, v9}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_8
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d51

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto/16 :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d52

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto/16 :goto_4

    :cond_a
    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d55

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    if-ne v7, v8, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d53

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x3

    if-ne v7, v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d54

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_4

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getIndicatorColor()I

    move-result v1

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d8e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    const v0, 0x7f060d50

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getStatusBarColor, bgColor = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__MainViewTheme"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public notifyLetterBoxColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->getLetterBoxColor()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLetterBoxColor(Landroid/content/Context;I)V

    return-void
.end method

.method public notifyStatusBarThemeColorChanged(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->canChangeStatusBarThemeColor(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->getStatusBarColor()I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-string v0, "si__MainViewTheme"

    const-string v1, "notifyStatusBarThemeColorChanged, setStatusBarColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTheme;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    return-void
.end method
