.class public abstract Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;


# instance fields
.field protected mCloseDialog:Lm/l;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentGroup:Ljava/lang/String;

.field protected mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

.field protected mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

.field mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

.field protected volatile mIsCloseAllTabsAnimation:Z

.field protected volatile mIsCloseTabAnimation:Z

.field protected mIsFirstIntroAnimation:Z

.field protected volatile mIsMultiTabIntroAnimating:Z

.field protected volatile mIsMultiTabOutroAnimating:Z

.field protected mIsSavedState:Z

.field protected mIsSecretModeEnabled:Z

.field protected mMode:Ljava/lang/String;

.field protected mModeBeforeEditMode:Ljava/lang/String;

.field protected mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

.field protected mMultiWindow:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

.field protected mNoItemImage:Landroid/view/View;

.field protected mNoItemSubtitle:Landroid/widget/TextView;

.field protected mNoItemText:Landroid/widget/TextView;

.field protected mNoResult:Landroid/view/View;

.field protected mNoTab:Landroid/view/View;

.field protected mRecents:Landroid/view/View;

.field protected mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field protected mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field protected mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

.field protected final mTabLoaderDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

.field mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

.field private mWaitCountForEndAction:I

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getTabLoaderDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoaderDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    return-void
.end method

.method public static getViewState(Landroid/content/Context;ZZ)Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_NIGHT_NO_TAB:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_NIGHT:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_SECRET_NO_TAB:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_SECRET:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    :goto_1
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_NORMAL_NO_TAB:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;->MULTI_TAB_NORMAL:Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    :goto_2
    return-object p0
.end method

.method private getWindowTopOffset()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    const/4 p0, 0x1

    aget p0, v1, p0

    if-eqz p0, :cond_2

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic h(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$onCreateView$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private hideNoResults(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic i(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$onCreateView$2(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$showCloseConfirmDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$showCloseConfirmDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$performEndAction$9(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onCreateView$2(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreateView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreateView$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreateView$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$performEndAction$9(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReadyToShow()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWaitCountForEndAction:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWaitCountForEndAction:I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWaitCountForEndAction:I

    if-ne p0, v1, :cond_2

    const-string p0, "MultiTabViewBase"

    const-string p1, "It takes long to perform end action of multi tab view "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWaitCountForEndAction:I

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$setCurrentTabOnTabLoader$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setCurrentTabOnTabLoader$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->closeMultiTab()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showCloseConfirmDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->closeSelected()V

    return-void
.end method

.method private static synthetic lambda$showCloseConfirmDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic m(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$onCreateView$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$setCurrentTabOnTabLoader$1()V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$setCurrentTabOnTabLoader$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->lambda$onCreateView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private showNoResults(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->clearAllTextHighlight()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateGroupPath()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->setGroupPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateGroupNavigateVisibility()V

    return-void
.end method


# virtual methods
.method public beginFragmentTransaction(Landroidx/fragment/app/f0;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/f0;->z(Z)Z

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->E()V

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    const p1, 0x1020002

    const-string v2, "main_fragment"

    invoke-virtual {v1, p1, p0, v2}, Landroidx/fragment/app/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v0}, Landroidx/fragment/app/a;->f(ZZ)I

    return-void
.end method

.method public closeAllTabsOnTabLoader()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->closeAllTabs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showNoTabViewIfRequired(Z)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->refreshTabList()V

    :cond_1
    return-void
.end method

.method public closeGroupList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCurrentGroup(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->refreshTabList()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabGroupIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setLastVisitedGroupPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabs(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method public closeMultipleTabsOnTabLoader(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->closeMultipleTabs(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateNavigationBarBackground()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showNoTabViewIfRequired(Z)Z

    return-void
.end method

.method public closeTabOnTabLoader(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateNavigationBarBackground()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showNoTabViewIfRequired(Z)Z

    return-void
.end method

.method public destroyViews()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->destroyTabViews()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->destroyListAdaptor()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->stopLoader()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    :cond_1
    return-void
.end method

.method public fromCardView()Z
    .locals 1

    const-string v0, "mode_card"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getBackgroundColor(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)I

    move-result p0

    return p0
.end method

.method public getCurrentGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getViewState(Landroid/content/Context;ZZ)Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoaderDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMultiWindowHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiWindow:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getWindowTopOffset()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->getMultiWindowHeight(Landroid/app/Activity;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMultiWindowWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiWindow:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->getMultiWindowWidth(Landroid/app/Activity;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabLoaderDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;)V

    return-object v0
.end method

.method public getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-eq p1, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-direct {p0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getToolbarTextColor()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getToolbarTextColor(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)I

    move-result p0

    return p0
.end method

.method public goToRoot()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCurrentGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateTabStacks()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method public goToRootIfNoMemberInCurrentGroup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentShowingItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->goToRoot()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleNoTabs(Z)V
    .locals 0

    return-void
.end method

.method public hasClosableTabInCurrentOrChildGroup()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabCount()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLockedTabCount()I

    move-result p0

    if-le v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentShowingItemCount()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLockedTabCountInGroup(Ljava/lang/String;)I

    move-result p0

    if-le v0, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public initGroupPath()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0cad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/m;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->init(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateGroupPath()V

    return-void
.end method

.method public initTabMainView(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->clearForSwitchMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x788877d4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const v1, -0x7886679e

    if-eq v0, v1, :cond_3

    const v1, -0x78844246

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "mode_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "mode_grid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_1

    :cond_4
    const-string v0, "mode_card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v0, 0x7f0b09dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v0, 0x7f0b09dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v0, 0x7f0b09da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setLoader(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V

    return-void
.end method

.method public isCardView()Z
    .locals 1

    const-string v0, "mode_card"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDarkModeOn()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract isEditMode()Z
.end method

.method public isFirstIntroAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    return p0
.end method

.method public isGridView()Z
    .locals 1

    const-string v0, "mode_grid"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isGroupListShowing()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentGroup()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupPathShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

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

.method public isInRoot()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isListView()Z
    .locals 1

    const-string v0, "mode_list"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMultiTabAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabIntroAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseTabAnimation:Z

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

.method public isMultiTabModeChanging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isModeChanging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabOutroAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    return p0
.end method

.method public isMultiTabScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isMultiTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isMultiTabTouching()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isMultiTabTouching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedToChangeNavigationBarColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public isNeedToHandleNoTabs()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getSecretTabCount()I

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getNormalTabCount()I

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isNeedToUpdateTabsOnResume()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isTabStackAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSavedState:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->shouldLockScreenOnResume()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public isNightModeOn()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isNoResultShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

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

.method public isNoTabsShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

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

.method public abstract isSearchMode()Z
.end method

.method public isSecretModeChanging()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isSecretModeLocked()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabLockSupported()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->isTabLockSupported(Z)Z

    move-result p0

    return p0
.end method

.method public isWindowSizeChanged()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getMultiWindowWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWindowWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getMultiWindowHeight()I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWindowHeight:I

    if-eq v0, p0, :cond_0

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

.method public notifyAllTabsRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyAllTabsRemoved()V

    :cond_0
    return-void
.end method

.method public notifyUpdatedBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabIntroAnimating:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyUpdatedBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTabId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyUpdateNativePage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public notifyUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public notifyUpdatedThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyUpdatedThemeColor(II)V

    return-void
.end method

.method public notifyUpdatedTitle(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyUpdatedTitle(ILjava/lang/String;)V

    return-void
.end method

.method public notifyUpdatedUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifyUpdatedUrl(ILjava/lang/String;)V

    return-void
.end method

.method public onCloseTabRequest(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->dismissTabById(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getMultiWindowWidth()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWindowWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getMultiWindowHeight()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWindowHeight:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->G()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->S()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    new-instance p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoaderDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;)V

    const p3, 0x7f0e061a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const/16 p3, 0x3e8

    invoke-static {p1, p3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/A;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/A;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/common/main_view/b;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/main_view/b;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/j;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/j;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getMode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getModeFromOldPref()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    :cond_3
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->initTabMainView(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setMultiTabMode(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;->onCreated()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->addObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiWindow:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const p2, 0x7f0b0cf4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    return-object p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onMultiWindowStatusChanged()V

    return-void
.end method

.method public onMultiWindowStatusChanged()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MultiTabViewBase"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSavedState:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSavedState:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWindowWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mWindowHeight:I

    :cond_0
    return-void
.end method

.method public performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x10

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCurrentGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTabOnTabLoader(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/a;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    return-void
.end method

.method public setNavigationBarColorIfNecessary(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNightModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNeedToChangeNavigationBarColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColorForMultiTab(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public setStackViewVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setViewDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setCurrentGroup(Ljava/lang/String;)V

    return-void
.end method

.method public showCloseConfirmDialog(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedGroupCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isAnySelectedGroupHaveLockedMember()Z

    move-result v5

    new-instance v6, Lcom/sec/android/app/sbrowser/multi_tab/f;

    const/4 v1, 0x2

    invoke-direct {v6, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/f;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v1, 0x9

    invoke-direct {v7, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedGroup()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v5, v6, v7}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseTabsWithGroupDialog(Landroid/content/Context;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->closeSelected()V

    :goto_0
    return-void
.end method

.method public showGroupNameDialog(ILcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getGroupNameList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v2, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    const-string p0, ""

    invoke-virtual {p1, p3, p0, v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->showDialog(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/sec/android/app/sbrowser/tab_group/TabGroupRenameDialog;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getGroupNameList()Ljava/util/List;

    move-result-object v6

    if-ne p1, v2, :cond_4

    move v1, v3

    :cond_4
    invoke-direct {v4, v5, v6, p2, v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupRenameDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;Z)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v4, p3, v0, p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->showDialog(Landroid/view/View;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public showNoResultsViewIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSearchMode()Z

    move-result v1

    const-string v2, "MultiTabViewBase"

    if-nez v1, :cond_2

    const-string v1, "[showNoResultsViewIfNeeded] not Search mode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->hideNoResults(Landroid/app/Activity;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    if-nez v1, :cond_3

    const v1, 0x7f0b07f6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentShowingItemCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    const-string v3, "[showNoResultsViewIfNeeded] resultExist: "

    invoke-static {v3, v2, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->hideNoResults(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showNoResults(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method public showNoTabViewIfRequired(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNeedToHandleNoTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->handleNoTabs(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startCloseAllTabsAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoaderDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->closeAllTabs()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->startCloseAllTabsAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->onStartOutroAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->notifyToolbarColorChanged()V

    :cond_1
    return-void
.end method

.method public updateGroupNavigateVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->hide()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->show()V

    :goto_0
    return-void
.end method

.method public updateNavigationBarBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabShowing()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getMultiTabNavigationBarState(ZLcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method

.method public updateNoTabsView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b080d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v1, 0x7f060d10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v1, 0x7f060d12

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v1, 0x7f060d11

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateStatusBarBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getStatusBarColor()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateStatusBarBackgroundForMultiTab(Landroid/content/Context;ILcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    return-void
.end method

.method public updateTabCountInFloatingMenu()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0d19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07150f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getTabCountOfCurrentGroup()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract updateTabs(Z)V
.end method
