.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBaseLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mShadow:Landroid/view/View;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mBaseLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->lambda$showShadow$0()V

    return-void
.end method

.method private getShadow()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mShadow:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mBaseLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0d9f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mShadow:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mShadow:Landroid/view/View;

    return-object p0
.end method

.method private isNeedToHideToolbarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNeedToHideToolbarShadow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showShadow$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method private setBgColorFilter(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showShadow()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/w;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/w;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setZ(F)V

    :goto_0
    return-void
.end method

.method private updateToolbarShadowColorsIfNeeded()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isSecretModeEnabled()Z

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;-><init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->updateToolbarShadowColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    return-void
.end method


# virtual methods
.method public getColorId(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabBarShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v2

    const v3, 0x7f060d59

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const v3, 0x7f060d4a

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const v3, 0x7f060d4c

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_4

    const p0, 0x7f060d5c

    return p0

    :cond_4
    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    const v3, 0x7f060d4d

    :cond_5
    return v3

    :cond_6
    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    const p0, 0x7f060d4e

    goto :goto_0

    :cond_7
    const p0, 0x7f060d5b

    :goto_0
    return p0

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v0, :cond_9

    const v3, 0x7f060d4b

    :cond_9
    return v3

    :cond_a
    if-eqz v0, :cond_b

    const v3, 0x7f060d49

    :cond_b
    return v3

    :cond_c
    const p0, 0x7f060d5a

    return p0
.end method

.method public hideShadow()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public showShadowIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->isNeedToHideToolbarShadow()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadow()V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateToolbarShadow()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->hideShadow()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v1, 0x7f0b0d8d

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->hideShadow()V

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadow()V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTransBarContainerShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    const v1, 0x7f0b0da4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadow()V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const v1, 0x7f0b0d79

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadow()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v1

    const v2, 0x7f0b0d94

    if-nez v1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const v2, 0x7f0b0da1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadow()V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->isNeedToHideToolbarShadow()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->hideShadow()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadow()V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->updateToolbarShadowColorsIfNeeded()V

    return-void
.end method

.method public updateToolbarShadowColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getColorId(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getThemeColor()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getThemeColor()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->setBgColorFilter(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
