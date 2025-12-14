.class public Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;


# instance fields
.field private mAddOnsBadge:Landroid/view/View;

.field private mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mBackgroundResource:I

.field private mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

.field private mBottombarMainLayout:Landroid/widget/LinearLayout;

.field private mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBrowsingAssistAnimationShown:Z

.field private mBrowsingAssistImage:Landroid/view/View;

.field private mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

.field private mHasThemeColor:Z

.field private mInstanceId:I

.field private mIsEnabled:Z

.field private mIsHighContrast:Z

.field private mIsNightMode:Z

.field private mIsReaderPage:Z

.field protected mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastUpdatedUnreadNotificationCount:I

.field private mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

.field private mMenuIconColor:I

.field private mMenuTextColor:I

.field private mMoreBadge:Landroid/view/View;

.field private mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mSettingsBadge:Landroid/view/View;

.field private mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTaskId:I

.field private mUnreadNotificationCountBadge:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMenuTextColor:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMenuIconColor:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBackgroundResource:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsNightMode:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mHasThemeColor:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsHighContrast:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsReaderPage:Z

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->lambda$updateBottombarButtons$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->lambda$updateBrowsingAssistAnimationVisibility$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->lambda$updateBottombarButtons$1(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private createBadgeView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b01d7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->lambda$updateBottombarButtons$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private forceCaptureIfNeeded(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCapture()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistImage:Landroid/view/View;

    return-object p0
.end method

.method private getConstantState(Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getIntelligenceIconFileName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isOneUi7Style()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "affordance"

    goto :goto_0

    :cond_0
    const-string p0, "icon"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dark"

    goto :goto_1

    :cond_1
    const-string v0, "light"

    :goto_1
    const-string v1, "intelligence_"

    const-string v2, "_"

    const-string v3, ".json"

    invoke-static {v1, p0, v2, v0, v3}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    return-object p0
.end method

.method private hideBrowsingAssistAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistImage:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    return p0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTaskId:I

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    const-string p1, "[NotificationManager] Bottombar registered to notification count listener"

    const-string v0, "si__BottomBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mInstanceId:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mInstanceId:I

    const-string p0, "[NotificationManager] activity null unable to get instance id"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private isMoreBadgeVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

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

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$updateBottombarButtons$0(ILandroid/view/View;)V
    .locals 2

    const v0, 0x7f0b006b

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isNightModeToastNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->showNightModeToast(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarButtonClicked(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateBottombarButtons$1(ILandroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarButtonLongClicked(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateBottombarButtons$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p1, :cond_2

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarHeightChanged()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateBrowsingAssistAnimationVisibility$3()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isBrowsingAssistAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-object p0
.end method

.method private makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v3

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTaskId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isResultViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getGroupColorValue()I

    move-result v7

    new-instance p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;-><init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;I)V

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimationShown:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCaptureIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->hideBrowsingAssistAnimation()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->shouldRefreshBitmap(II)Z

    move-result p0

    return p0
.end method

.method private setButtonsBackground(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f08039e

    goto :goto_0

    :cond_1
    const p1, 0x7f0803a1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private shouldAddNavigationMargin()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldRefreshBitmap(II)Z
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    if-eq p1, p2, :cond_0

    return p0

    :cond_0
    if-gt p1, v0, :cond_1

    if-gt p2, v0, :cond_2

    :cond_1
    if-gt p2, v0, :cond_3

    if-le p1, v0, :cond_3

    :cond_2
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private updateAddOnsBadgeVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getNewExtensionCount()I

    move-result v1

    const v2, 0x7f0b005d

    const v3, 0x7f141058

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBadgeVisibility(Landroid/view/View;III)V

    return-void
.end method

.method private updateBadgeVisibility(Landroid/view/View;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f14105a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateBrowsingAssistAnimationColor()V
    .locals 3

    new-instance v0, Lz3/D;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lz3/D;-><init>(I)V

    new-instance v1, LE3/f;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LE3/f;-><init>([Ljava/lang/String;)V

    new-instance v2, Lo3/e;

    invoke-direct {v2, v0}, Lo3/e;-><init>(Lz3/D;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v0, Lz3/w;->F:Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    invoke-virtual {p0, v1, v0, v2}, Lz3/t;->a(LE3/f;Landroid/graphics/ColorFilter;Lo3/e;)V

    return-void
.end method

.method private updateBrowsingAssistAnimationVisibility()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isBrowsingAssistAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimationShown:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistImage:Landroid/view/View;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sBrowsingAssistAnimationShown:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAnimationCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateBrowsingAssistBadgeVisibility: animationCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAnimationCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__BottomBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getIntelligenceIconFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "updateBrowsingAssistBadgeVisibility can\'t parse json"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object v1, v1, Lz3/t;->b:LL3/c;

    invoke-virtual {v1}, LL3/c;->removeAllListeners()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBrowsingAssistAnimationColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object v0, v0, Lz3/t;->b:LL3/c;

    invoke-virtual {v0, v1}, LL3/c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/f;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateHeight(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07023a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNotificationBadge(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->shouldShowNotificationBadge(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f14083b

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    const-string v3, ", "

    const/4 v4, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f140823

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f140824

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14082d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNotificationsVisited()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f14105b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14105a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateSettingsBadgeVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getSettingsBadgeCount()I

    move-result v1

    const v2, 0x7f0b0073

    const v3, 0x7f140052

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBadgeVisibility(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->applySecretModeStatus(Z)V

    :cond_0
    return-void
.end method

.method public canForceCapture()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public cancelBrowsingAssistAnimationIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->hideBrowsingAssistAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    :cond_0
    return-void
.end method

.method public changeMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateHeight()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->postCapture()V

    return-void
.end method

.method public clearBottombarButtons()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->didRemoveVisionTextView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->didRemoveObjectCaptureView()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableBottomBarButtons(Z)V
    .locals 5

    const-string v0, "[enableBottomBarButtons] enable : "

    const-string v1, "si__BottomBar"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getIdByButton(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateButtonState(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    const v3, 0x7f0b0069

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isMoreBadgeVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f14105e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f14105a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableTabsHoverPopup(Z)V

    return-void
.end method

.method public enableTabsHoverPopup(Z)V
    .locals 3

    const-string v0, "[enableTabsHoverPopup] : "

    const-string v1, "si__BottomBar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getTabsButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140296

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public focusInLeft()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getFirstEnabledButton()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public focusInRight()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getLastEnabledButton()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public focusOnTabs()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public forceCapture()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerForceCapture()V

    :cond_1
    return-void
.end method

.method public getAiButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getAiButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundResource()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBackgroundResource:I

    return p0
.end method

.method public getBackwardButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getBackwardButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBlurRect()Landroid/graphics/Rect;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getBlurRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBottomBarHeightBasedOnConfiguration()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getButton(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFixedHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->shouldAddNavigationMargin()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getForwardButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getForwardButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMaxVisibleHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMenuIconColor()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMenuIconColor:I

    return p0
.end method

.method public getMenuTextColor()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMenuTextColor:I

    return p0
.end method

.method public getMoreMenuButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getMoreMenuButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTabsCountString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getToolbarButtons()Ljava/util/List;
    .locals 3
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getVisibleHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
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

.method public initialize(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setDelegate(Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setListener(Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V

    return-void
.end method

.method public invalidateLayout()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    return p0
.end method

.method public isMenuContainerShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToolbarItemLeft(I)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getAllToolbarItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-ge v2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    xor-int p0, v1, v0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public notifyBackForwardStatusChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->canCurrentTabGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setBackwardButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->canCurrentTabGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setForwardButtonEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_1
    return-void
.end method

.method public notifyBackgroundColorChanged(Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInGroup()Z

    move-result v6

    invoke-virtual {p0, v5, p1, v6}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;ZZ)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsNightMode:Z

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mHasThemeColor:Z

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsHighContrast:Z

    if-ne p1, v4, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsReaderPage:Z

    if-eq p1, v2, :cond_3

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsReaderPage:Z

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0xc8

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsNightMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mHasThemeColor:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsHighContrast:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsReaderPage:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/f;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;I)V

    int-to-long v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public notifyMultiTabCountChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->makeThemeParam()Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInGroup()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setTabsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTabCountOfCurrentGroup()I

    move-result v0

    const-string v1, "notifyMultiTabCountChanged, tabCount = "

    const-string v2, "si__BottomBar"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCapture()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_3
    return-void
.end method

.method public notifyReadAloudStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    return-void
.end method

.method public notifyReadHighlightsAloudStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public notifySummarizeStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mInstanceId:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->registerListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;I)V

    return-void
.end method

.method public onContentBlockerStateChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onContentBlockerStateChanged()V

    :cond_0
    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onCurrentTabChanged()V

    return-void
.end method

.method public onDecorFitsSystemWindowsChanged(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateHeight(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mInstanceId:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->unRegisterListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b01d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->changeMode()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onHighContrastModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onHighContrastModeChanged()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLoadFailed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadFailed()V

    :cond_0
    return-void
.end method

.method public onLoadFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadFinished()V

    :cond_0
    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadStarted()V

    return-void
.end method

.method public onMyanmarFontChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateMyanmarFontButton()V

    return-void
.end method

.method public onNightModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateNightModeButton()V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[NotificationManager] Updated notification count: "

    const-string v1, "si__BottomBar"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-eqz p1, :cond_0

    const v0, 0x7f0b067b

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateNotificationBadge(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string p0, "[NotificationManager] Unable to set badge null/ icon view null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onNotificationShowPrefChanged()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "si__BottomBar"

    const-string v1, "[NotificationManager] show preference changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mLastUpdatedUnreadNotificationCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->onNotificationCountChanged(I)V

    :cond_0
    return-void
.end method

.method public onPcVersionChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    return-void
.end method

.method public onReaderPageVisibilityChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onReaderPageVisibilityChanged()V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 7

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

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, p0

    :goto_0
    check-cast v5, Landroid/view/View;

    invoke-static {v5, v1, v2, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resolveTargetView(Landroid/view/View;[III)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onSIXIconUpdated()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSIXIconUpdated()V

    return-void
.end method

.method public onSplitModeStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSplitModeStatusChanged()V

    return-void
.end method

.method public postCapture()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->triggerPostCapture()V

    :cond_1
    return-void
.end method

.method public requestBitmap()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public resetMultiTabCount()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-virtual {v0, p1, p3}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isResultViewShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getBackgroundColorResultView(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-virtual {p3, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getBackgroundColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setButtonsBackground(Z)V

    return-void
.end method

.method public setBackwardButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setBackwardButtonEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    const-string v0, "setEnabled = "

    const-string v1, "si__BottomBar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->enableBottomBarButtons(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    return-void
.end method

.method public setForwardButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setForwardButtonEnabled(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisibilitySuper(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldCaptureBitmap()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public shouldCaptureLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateBottombarButtons()V
    .locals 13

    const-string v0, "si__BottomBar"

    const-string v1, "[CustomizeToolbar] updateBottombarButtons()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->clearBottombarButtons()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getAllToolbarItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_e

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f0b0078

    const v8, 0x7f0b067b

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e006d

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b0d18

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070243

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v9, v10, v11, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "language = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "my"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "te_IN"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070246

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070244

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070242

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v9, v3, v10, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_3
    const v7, 0x7f0b0050

    if-ne v6, v7, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e0066

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01cb

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistImage:Landroid/view/View;

    const v9, 0x7f0b01cc

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    goto/16 :goto_1

    :cond_4
    const v7, 0x7f0b0073

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e006c

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01de

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsBadge:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_1

    :cond_5
    const v7, 0x7f0b0069

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e006a

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01db

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_1

    :cond_6
    if-ne v6, v8, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e006b

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01cf

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    const v10, 0x7f0b0841

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getConstantState(Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mUnreadNotificationCountBadge:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateNotificationBadge(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    const v7, 0x7f0b005d

    if-ne v6, v7, :cond_9

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->createBadgeView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01d0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsBadge:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e0068

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01d5

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getConstantState(Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0e0069

    invoke-virtual {v7, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getConstantState(Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    if-eqz v9, :cond_b

    move-object v10, v7

    check-cast v10, Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-eqz v9, :cond_c

    new-instance v9, Laa/a;

    const/4 v10, 0x4

    invoke-direct {v9, v6, v10, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;

    const/4 v10, 0x2

    invoke-direct {v9, v6, v10, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    if-ne v6, v8, :cond_d

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateNotificationBadge(Landroid/view/View;)V

    :cond_d
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v8, v7, v6}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->addButton(Landroid/view/View;I)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v5, v7, v6, v8}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateButtonState(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mBottombarColor:Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setBackground()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonByIndex(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/e;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyMultiTabCountChanged()V

    :cond_f
    return-void
.end method

.method public updateBottombarLayout()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->getFixedHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateBrowsingAssistButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    return-void
.end method

.method public updateHeight()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->shouldAddNavigationMargin()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateHeight(Z)V

    return-void
.end method

.method public updateOptionMenuBadgeVisibility(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateSettingsBadgeVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateAddOnsBadgeVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBrowsingAssistAnimationVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-eqz v0, :cond_1

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->mMoreBadge:Landroid/view/View;

    if-nez v1, :cond_2

    const-string p0, "si__BottomBar"

    const-string p1, "updateOptionMenuBadgeVisibility(), mMoreBadge is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v2, 0x7f14105e

    if-lez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14105a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method
