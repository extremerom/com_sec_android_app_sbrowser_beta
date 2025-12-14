.class public Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field private mActionModeView:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAppBarOffset:I

.field private mAppBarOffsetChangeCallback:Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mContentsView:Landroid/widget/LinearLayout;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mFeatureName:Ljava/lang/String;

.field private mIsSyncButtonVisited:Z

.field mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

.field private mShouldExpandAppBar:Z

.field private mShouldShowSyncButton:Z

.field private mStartFragmentName:Ljava/lang/String;

.field private mSubTitleButton:Landroid/widget/Button;

.field private mSubTitleText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleContainer:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->lambda$updateSubtitleButtonVisibility$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->lambda$updateInformativeBarInfo$2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->lambda$collapseAppbar$0(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private isAppBarSyncResultShownToday()Z
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "pref_settings_syncresult_shown_today"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method private isCloudPackageUpdateNeeded()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isQuickAccessSyncSupported()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isCloudPackageUpdateAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->getQuickAccessCountNeedToSync()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$collapseAppbar$0(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lc6/r;->v(I)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->disableCollapse()V

    return-void
.end method

.method private synthetic lambda$updateInformativeBarInfo$2(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->launchRelatedActivities(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSubtitleButtonVisibility$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->launchRelatedActivities(Ljava/lang/String;)V

    return-void
.end method

.method private launchRelatedActivities(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SyncRemain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SuggestSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MakeSamsungAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const-string v0, "PCPromotionButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "501"

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_promotion_setting_button_pressed"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getPromotionUrlForSetting()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openWebPageInNewTab(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p0, "5512"

    const-string p1, "Setting"

    invoke-static {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    check-cast p0, Lm/n;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->startFragment(Lm/n;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "5402"

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->showNewFeatureInAppBarInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->isCloudPackageUpdateNeeded()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->launchGalaxyAppsForSamsungCloud()V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->showSetting(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method private onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;ILandroidx/fragment/app/Fragment;)V
    .locals 9

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarOffset:I

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v2

    :cond_0
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v0, p2

    const v3, 0x3f8ccccd    # 1.1f

    sub-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    const v4, 0x3f59999a    # 0.85f

    sub-float/2addr v0, v4

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v3, v5

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v6, p2, v4

    if-gtz v6, :cond_2

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v7

    if-ltz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lt/k0;

    instance-of v7, p3, Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    const/4 v8, -0x1

    if-eqz v7, :cond_3

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_3

    iput v8, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p3

    const/4 v7, 0x1

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAppBarState()Lc6/f;

    move-result-object p1

    iget p1, p1, Lc6/f;->a:I

    if-ne p1, v7, :cond_4

    move v2, v7

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setSubTitleVisiblity(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setSubTitleVisiblity(Z)V

    :goto_0
    iput v4, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    if-gez v6, :cond_8

    const/4 p3, 0x5

    if-le v1, p3, :cond_8

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setSubTitleVisiblity(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p3, p1

    if-gtz p3, :cond_7

    return-void

    :cond_7
    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_8
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setSubTitleVisiblity(Z)V

    iput v8, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarOffsetChangeCallback:Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarOffsetChangeCallback:Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;->onOffsetChanged(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarOffsetChangeCallback:Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;->onTitleBarAlphaChanged(F)V

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->notifyAppBarHeightChanged()V

    return-void
.end method

.method private resetAppBarHeight()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0712bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v3, 0x3ec7ae14    # 0.39f

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setAppBarColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const p1, 0x7f060bb3

    goto :goto_0

    :cond_0
    const p1, 0x7f060bb2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setSubTitleVisiblity(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateInformativeBarInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldExpandAppBar:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    const-string v1, "PCPromotionSetting"

    const-string v2, "MakeSamsungAccount"

    if-eqz v0, :cond_7

    const-string v0, "SuggestSync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "AllSynced"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldExpandAppBar:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const p3, 0x7f140ec8

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140ec9

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string v0, "SyncRemain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140eda

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateSyncSuggestStatusInPreference()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v3, 0x7f140a1f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140ef9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140b3e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140ef7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->showNewFeatureInAppBarInfo()Ljava/lang/String;

    move-result-object v0

    const-string v3, "501"

    const-string v4, "5401"

    invoke-static {v3, v4, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140f12

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateSyncSuggestStatusInPreference()V

    :cond_7
    :goto_1
    if-nez p3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->expandAppBar()V

    :cond_8
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140dda

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_9
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140f11

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const p3, 0x7f140b40

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/I;

    invoke-direct {p3, p0, p2}, Lcom/sec/android/app/sbrowser/settings/I;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_b
    :goto_3
    const-string p0, "SettingsAppBar"

    const-string p1, "Incorrect featureName  or startFragmentName"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSyncSuggestStatusInPreference()V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_settings_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_settings_sync_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addViewToToolbar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public collapseAppbar()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget-object v0, v0, LR0/d;->a:LR0/c;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/J;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/J;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    neg-int p0, p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    const-wide/16 v0, 0x226

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public collapseAppbarWithoutAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public disableCollapse()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc6/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0715d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public expandAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldExpandAppBar:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->resetAppBarHeight()V

    return-void
.end method

.method public getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public getSyncButtonVisitedStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    return p0
.end method

.method public handleKeyCode(Landroid/view/KeyEvent;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActionModeView:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAppbarExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarOffset:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroidx/fragment/app/Fragment;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lt/k0;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v3, 0x7f070021

    const v4, 0x7f070020

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_1
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->disableCollapse()V

    :cond_4
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;ILandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onResume(ZLjava/lang/String;ZLandroid/app/Activity;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateNewFeatureList()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->showSettingsAppBarInfo(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isUpdateInformativeAppBar(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setSyncButton(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setCollapsingTitleImportant()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    const-string p1, "PCPromotionSetting"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "5510"

    const-string p1, "Setting"

    const-string p2, "501"

    invoke-static {p2, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public removeViewFromToolbar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setAppBarOffsetChangeCallback(Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarOffsetChangeCallback:Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;

    return-void
.end method

.method public setCollapsingTitleImportant()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public setSyncButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldShowSyncButton:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showSettingsAppBarInfo(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SettingsAppBar"

    if-nez v0, :cond_0

    const-string p0, "initialFragment is not SettingsFragment! but called by "

    const-string p2, " then returns."

    invoke-static {p0, p1, p2, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateNewFeatureList()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Incorrect Preference key name = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->shouldShowSamsungCloudAppBarInfo(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldShowSyncButton:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    const v0, 0x7f140da4

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140daf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140dae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->getAllCountNeedToSync()I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->isAppBarSyncResultShownToday()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldShowSyncButton:Z

    return-void

    :cond_5
    const-string p1, "AllSynced"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isWednesdayAndFirstVisit(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "SyncRemain"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isMondayAndFirstVisit(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    if-nez p1, :cond_8

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldShowSyncButton:Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isMondayAndFirstVisit(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    if-nez p1, :cond_c

    const-string p1, "SuggestSync"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isMondayAndFirstVisit(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    if-nez p1, :cond_a

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldShowSyncButton:Z

    return-void

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSettingsDayUtil:Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsDayUtil;->isMondayAndFirstVisit(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mIsSyncButtonVisited:Z

    if-nez p1, :cond_c

    const-string p1, "MakeSamsungAccount"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140dab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateInformativeBarInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateNewFeatureList()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->createListOfNewFeatures()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->showNewFeatureInAppBarInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v1, v4

    goto :goto_1

    :sswitch_0
    const-string v1, "Notification Manager"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "pc_promotion_link_visited"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :sswitch_2
    const-string v5, "pref_nbadge_contents_push"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140f88

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const-string v1, "PCPromotionSetting"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    const-string v1, "PCPromotionButton"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140a0b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    :goto_2
    return v0

    :cond_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x2631af1 -> :sswitch_2
        0x5e10dcd -> :sswitch_1
        0x1c30e578 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSubtitleButtonVisibility()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateNewFeatureList()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mStartFragmentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140f11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mFeatureName:Ljava/lang/String;

    const-string v2, "PCPromotionSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140b40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mShouldShowSyncButton:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140f14

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public viewInit()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0b31

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b02cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitleContainer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0da3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b02c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0b33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0b40

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0bfe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0d6c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mSubTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0b30

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActionModeView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b02c6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0712db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0b34

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAboutFragment(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAboutFragment(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->disableCollapse()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d8d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mContentsView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080236

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setAppBarColor(Z)V

    return-void
.end method
