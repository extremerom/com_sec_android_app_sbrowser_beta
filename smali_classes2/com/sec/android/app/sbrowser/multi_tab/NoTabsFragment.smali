.class public Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;,
        Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field private mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

.field private mContentLayout:Landroid/view/View;

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

.field private mIsDarkModeEnabled:Z

.field private mIsSecretModeButtonClicked:Z

.field private mIsSecretModeEnabled:Z

.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

.field private mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

.field private mNoTabsImage:Landroid/view/View;

.field private mNoTabsSubTitle:Landroid/widget/TextView;

.field private mNoTabsTextView:Landroid/widget/TextView;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mParentView:Landroid/view/View;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field private mTitleView:Landroid/widget/TextView;

.field private mToolbar:Landroid/view/View;

.field private mToolbarMoreButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private getCurrentState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_NIGHT_NO_TAB:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_SECRET_NO_TAB:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_NORMAL_NO_TAB:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->lambda$onSecretClicked$2()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->lambda$onResume$0()V

    return-void
.end method

.method private inflateBottomBarArea()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b09d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0, p0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->initialize(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private inflateContentArea()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0807

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mContentLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0809

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsImage:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b080b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b080c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsTextView:Landroid/widget/TextView;

    return-void
.end method

.method private inflateToolbarArea()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0808

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b080f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbar:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b080e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b080a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbar:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/s;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/s;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setTooltip(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->lambda$inflateToolbarArea$1(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    return-object p0
.end method

.method private synthetic lambda$inflateToolbarArea$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->showMoreMenu()V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSecretClicked$2()V
    .locals 2

    const-string v0, "NoTabsFragment"

    const-string v1, "[onSecretClicked] sIsSecretModeButtonClicked is set to false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeButtonClicked:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    return-void
.end method

.method private setContentBackground(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mContentLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f060cea

    const v2, 0x7f060d10

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-eqz v1, :cond_2

    const v1, 0x7f060cec

    const v2, 0x7f060d12

    goto :goto_0

    :cond_2
    const v1, 0x7f060ceb

    const v2, 0x7f060d11

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsImage:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->resetAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsSubTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->resetAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->resetAnimation(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsSubTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsImage:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->startNoItemsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsSubTitle:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->startNoItemsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mNoTabsTextView:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->startNoItemsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setLetterBoxColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060cea

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f060cec

    goto :goto_0

    :cond_1
    const v1, 0x7f060ceb

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLetterBoxColor(Landroid/content/Context;I)V

    return-void
.end method

.method private setNavigationBarColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT_NO_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_NO_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NORMAL_NO_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method

.method private setStatusBarColor()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    if-eqz v3, :cond_1

    const v0, 0x7f060cea

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f060cec

    goto :goto_1

    :cond_2
    const v0, 0x7f060ceb

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    return-void
.end method

.method private setToolbarBackground()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbar:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    const v2, 0x7f08074f

    if-eqz v1, :cond_1

    const v1, 0x7f060cea

    const v3, 0x7f060ce3

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-eqz v1, :cond_2

    const v1, 0x7f060cec

    const v3, 0x7f060ce8

    goto :goto_0

    :cond_2
    const v1, 0x7f060ceb

    const v3, 0x7f060ce5

    const v2, 0x7f080750

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbar:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->updateToolbarMargin()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateNoTabsFragment(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsDarkModeEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setStatusBarColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setToolbarBackground()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setContentBackground(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setLetterBoxColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->setNavigationBarColor()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->getCurrentState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateSecretModeButtonText()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->showReopenClosedTabMenu()V

    :cond_2
    return-void
.end method

.method private updateToolbarMargin()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b080f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->updateNoTabsFragment(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[dispatchKeyEvent] event : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NoTabsFragment"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;->isUndoAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;->reopenClosedTab()V

    return v3

    :cond_3
    return v1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->showMoreMenu()V

    return v3

    :cond_4
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7ffffffc -> :sswitch_2
        -0x7fffffd7 -> :sswitch_2
        -0x7fffff91 -> :sswitch_2
        -0x5fffffd0 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0x20000042 -> :sswitch_0
    .end sparse-switch
.end method

.method public filterOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0b02b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0b048c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0b0233

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f0b0deb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;->isUndoAvailable()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f0b0c4d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->needToShowTabSyncOption(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_0

    :cond_5
    move p0, v1

    :goto_0
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    const p0, 0x7f0b0acd

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    const p0, 0x7f0b0562

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    const p0, 0x7f0b00a2

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const p0, 0x7f0b09eb

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    const p0, 0x7f0b0105

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    :goto_1
    return-void
.end method

.method public getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->getCurrentState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    return p0
.end method

.method public onAllTabsClicked()V
    .locals 0

    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->updateNoTabsFragment(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;->onAttached()V

    :cond_0
    const p0, 0x7f0e051f

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;->onDetached()V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->i(Landroidx/fragment/app/J;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {v0, p0}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->dismissPopupMenu()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onNewTabClicked()V
    .locals 3

    const-string v0, "NoTabsFragment"

    const-string v1, "[onNewTabClicked]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    invoke-interface {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;->onNewTabButtonClick(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/f0;->G()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->T()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onNewTabClicked] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->updateNoTabsFragment(Z)V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/x;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/x;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->i(Landroidx/fragment/app/J;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_1
    return-void
.end method

.method public onSecretClicked()V
    .locals 4

    const-string v0, "NoTabsFragment"

    const-string v1, "[onSecretClicked]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez v1, :cond_0

    const-string p0, "[onSecretClicked] now on animation"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canUseSecretMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "[onSecretClicked] cannot use secretmode : Return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f141090

    invoke-static {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->migrateDataIfRequired(Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "[onSecretClicked] startSdpMigration : Return!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "[onSecretClicked] turn off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretMode(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const-string v1, "[onSecretClicked] turn on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeButtonClicked:Z

    if-eqz v1, :cond_4

    const-string p0, "[onSecretClicked] duplicated onClick event"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mIsSecretModeButtonClicked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretMode(Landroid/app/Activity;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onSyncedTabsClicked()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->inflateToolbarArea()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->inflateContentArea()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->inflateBottomBarArea()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->updateNoTabsFragment(Z)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->G()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->S()V

    :cond_2
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;

    return-void
.end method

.method public showMoreMenu()V
    .locals 3

    const-string v0, "[showMoreMenu]"

    const-string v1, "NoTabsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz v0, :cond_0

    const-string p0, "[showMoreMenu] more menu is already showing"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "4102"

    goto :goto_0

    :cond_1
    const-string v0, "4002"

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mToolbarMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->showPopupMenu(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public showReopenClosedTabMenu(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f0b0deb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;->isUndoAvailable()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
