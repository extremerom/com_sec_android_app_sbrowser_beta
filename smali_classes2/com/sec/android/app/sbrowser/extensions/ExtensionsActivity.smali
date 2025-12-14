.class public Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lw2/y;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lc6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;,
        Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$KeyPressCallback;
    }
.end annotation


# static fields
.field private static sExtensionsActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningFragment:Ljava/lang/String;


# instance fields
.field private mActionHomeCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;

.field private mActionModeView:Landroid/widget/LinearLayout;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mContentsView:Landroid/widget/LinearLayout;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mInitialFragment:Ljava/lang/String;

.field private mIsSubFragmentActivity:Z

.field private mKeyPressedCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$KeyPressCallback;

.field private mLayoutMargin:I

.field private mListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mListView:Landroid/widget/ListView;

.field private mMainActivityId:Ljava/lang/String;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPrevOrientation:I

.field private mScreenId:Ljava/lang/String;

.field private mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleContainer:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mActionHomeCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mPrevOrientation:I

    return-void
.end method

.method private addEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "empty_category_for_bottom_space"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private addListItemsDecoration()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method private applyExtendAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->resetAppBarHeight()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mLayoutMargin:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setExtensionsLayout(Z)V

    return-void
.end method

.method private initViews()V
    .locals 3

    invoke-direct {p0, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setWideScreenLayoutOnConfig(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setStatusBarColorOrTheme()V

    const v0, 0x7f0e020b

    :try_start_0
    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to setContentView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtensionsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const v0, 0x7f0b0b40

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0b0b31

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0b0da3

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0b02cb

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitleContainer:Landroid/widget/TextView;

    const v0, 0x7f0b0b33

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0b0b30

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mActionModeView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b02ee

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mContentsView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->isFocusedOnToolbar()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->applyExtendAppBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    const v0, 0x7f14050d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setTitle(I)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mPrevOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mContentsView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f080236

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private initializeContentBlocker()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->initializeForMenu(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    :cond_0
    return-void
.end method

.method private resetAppBarHeight()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0712bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

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

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setActionBarDisplayOptions()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private setCollapsingTitleImportant()V
    .locals 1

    const v0, 0x7f0b02cb

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

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

.method private setExtensionsLayout(Z)V
    .locals 5

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mLayoutMargin:I

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0b0b34

    invoke-virtual {p0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LR0/d;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071303

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_2
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    const v0, 0x7f0b0e4d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method private setLightStatusBarTheme()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    return-void
.end method

.method private setSecretModeConfiguration(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    new-instance p1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    return-void
.end method

.method private setStatusBarColorOrTheme()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    const v0, 0x7f060d8e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setLightStatusBarTheme()V

    :goto_0
    return-void
.end method

.method private setWideScreenLayoutOnConfig(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExtensionsActivity"

    const-string v1, "OOS tablet and manually call updatelayout once"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mLayoutMargin:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMarginLayout(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setExtensionsLayout(Z)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private startFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sRunningFragment:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "sbrowser.extensions.show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.extensions.show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sput-object p1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sRunningFragment:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->isFocusedOnToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mKeyPressedCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$KeyPressCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$KeyPressCallback;->onBackPressed()V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getMainActivityId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mMainActivityId:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method public isFocusedOnToolbar()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mPrevOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mPrevOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->applyExtendAppBar()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    const v2, 0x7f070021

    const v3, 0x7f070020

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lt/k0;

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SBrowserMainActivityContextId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mMainActivityId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setSecretModeConfiguration(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setActionBarDisplayOptions()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sbrowser.extensions.show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sbrowser.extensions.show_fragment_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sbrowser.extensions.show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-class v3, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mIsSubFragmentActivity:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "singleTask"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mIsSubFragmentActivity:Z

    :cond_2
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    const-string v0, "601"

    if-nez p1, :cond_3

    const-class p1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mScreenId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "ContentBlockerPreferenceFragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    const-string v2, "ContentBlockPreferenceFragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    const-class p1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "sbrowser.content_block.launched_from_third_party"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v1, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_5
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mScreenId:Ljava/lang/String;

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    const v2, 0x7f0b02ee

    invoke-virtual {v1, v2, p1, v0}, Landroidx/fragment/app/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v3}, Landroidx/fragment/app/a;->f(ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtensionsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->initializeContentBlocker()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->initViews()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lm/n;->onDestroy()V

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p0, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->onDestroy(I)V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    :cond_4
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitleContainer:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lt/k0;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_2
    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    return-void

    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mContentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->G()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->S()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mActionHomeCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;->onActionHome()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sRunningFragment:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sRunningFragment:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lw2/A;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->startFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->updateCurrentFragment()V

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mIsSubFragmentActivity:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eq v2, p0, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    const v4, 0x7f010117

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->sExtensionsActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setCollapsingTitleImportant()V

    return-void
.end method

.method public setActionHomeCallback(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mActionHomeCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;

    return-void
.end method

.method public setKeyPressedCallback(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$KeyPressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mKeyPressedCallback:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$KeyPressCallback;

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitleContainer:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleWithString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitleContainer:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mTitleContainer:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateCurrentFragment()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/o0;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lw2/A;

    if-eqz v1, :cond_2

    check-cast v0, Lw2/A;

    invoke-virtual {v0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lw2/A;

    invoke-virtual {v0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->addEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->addListItemsDecoration()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->mListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->addListItemsDecoration()V

    :cond_2
    :goto_0
    return-void
.end method
