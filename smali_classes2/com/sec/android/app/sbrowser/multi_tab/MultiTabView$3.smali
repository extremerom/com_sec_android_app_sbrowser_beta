.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getTabMainViewDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->lambda$setCloseDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$setCloseDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    return-void
.end method


# virtual methods
.method public cancelMoveMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->cancelMoveGroup()V

    return-void
.end method

.method public exitEditMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithList()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->isNoTabsShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->exitSearchMode()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->restoreSearchToolbarFromEditMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->activateSearchFilter()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->dismissDialogs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableViews(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateGroupNavigateVisibility()V

    :cond_3
    return-void
.end method

.method public exitSearchMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitSearchMode()V

    return-void
.end method

.method public extendAppBarWithAnim(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public fromCardView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->fromCardView()Z

    move-result p0

    return p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    return-object p0
.end method

.method public getAppBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->getAppBarHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getContentHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCoordinatorContentHeight()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b07a1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCoordinatorLayout()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    return-object p0
.end method

.method public getCurrentGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCurrentTabId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTabId()I

    move-result p0

    return p0
.end method

.method public getGroupColor(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupPathHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->getGroupPathHeight()I

    move-result p0

    return p0
.end method

.method public getLatestReopenedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getLatestReopenedPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiTabBottomBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRecents()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    return-object p0
.end method

.method public getScrollPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mScrollPosition:I

    return p0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->getSearchFilter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShareButtonPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->getShareButtonPosition()I

    move-result p0

    return p0
.end method

.method public getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getToolbarBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public goToRootIfNoMemberInCurrentGroup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->goToRootIfNoMemberInCurrentGroup()V

    return-void
.end method

.method public groupMoved()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->exitMoveMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->exitMoveMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateGroupNavigateVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableViews(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->switchViewMode(Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    return-void
.end method

.method public handleNoTabs()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->handleNoTabs(Z)V

    return-void
.end method

.method public isAppBarExtended()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->isAppBarExtended()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCardView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result p0

    return p0
.end method

.method public isEditModeFromSearch()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    return p0
.end method

.method public isFirstIntroAnimationShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isGridView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGridView()Z

    move-result p0

    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->isHideStatusBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabAdded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public isMultiTabAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result p0

    return p0
.end method

.method public isMultiTabDetached()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p0

    return p0
.end method

.method public isMultiTabModeChanging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result p0

    return p0
.end method

.method public isMultiTabOutroAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    return p0
.end method

.method public isMultiTabRemoving()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isNoBottomButtonExceptShare()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isNoButtonExceptShare()Z

    move-result p0

    return p0
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method public isSearchBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result p0

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    return p0
.end method

.method public moveTabOrder(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->moveTabOrder(II)V

    return-void
.end method

.method public onConfirmGroupDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->onConfirmGroupDialog()V

    return-void
.end method

.method public onTabGroupChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->onTabGroupChanged(Ljava/util/List;)V

    return-void
.end method

.method public onTouchContent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    return-void
.end method

.method public reorderGroup(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->reorderGroup(Ljava/lang/String;IZ)V

    return-void
.end method

.method public reorderTabWithGroup(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->reorderTabWithGroup(IIZ)V

    return-void
.end method

.method public resetContainerHeight()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->resetContainerHeight()V

    return-void
.end method

.method public searchTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->searchTabs()V

    return-void
.end method

.method public searchTabsUsingSearchApi(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->H(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->H(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->H(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->searchTabs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateSearchedListUsingSearchApi(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->showSimilarResultMessage(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->clearAllTextHighlight()V

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->showNoResultsViewIfNeeded()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->showSimilarResultMessage(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->showNoResultsViewIfNeeded()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendSALoggingForTabClick(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->isSecretModeEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForTabClick(ZZZLjava/lang/String;)V

    return-void
.end method

.method public setBottomButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setBottomButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCloseDialog(Lm/l;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setCurrentGroup(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setCurrentGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->setGroupPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableViews(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateGroupNavigateVisibility()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showGroupListButtons(ZLjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->showAllTabsButton(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateBottomBarBackground()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    :cond_3
    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setEditToolbarTitle(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setEditToolbarTitle(I)V

    return-void
.end method

.method public setFirstIntroAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    return-void
.end method

.method public setMultiTabAnimating(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabIntroAnimating:Z

    return-void
.end method

.method public setMultiTabOutroAnimating(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    return-void
.end method

.method public setNavigationBarColorIfNecessary(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setNavigationBarColorIfNecessary(Z)V

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mScrollPosition:I

    return-void
.end method

.method public setSelectAllCheck(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->setSelectAllCheck(Z)V

    :cond_0
    return-void
.end method

.method public setShareButtonState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->enableShare(Z)V

    :cond_0
    return-void
.end method

.method public setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public shouldIgnoreClicked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->shouldIgnoreClicked()Z

    move-result p0

    return p0
.end method

.method public showCreateGroupDialog(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showGroupNameDialog(ILcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;Landroid/view/View;)V

    return-void
.end method

.method public showNoTabViewIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNeedToHandleNoTabs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->handleNoTabs(Z)V

    return-void
.end method

.method public showSimilarResultMessage(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateButtonsBySelect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateButtonsBySelect()V

    return-void
.end method

.method public updateSearchData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabDataToSamsungSearch()V

    return-void
.end method

.method public updateTabCountInFloatingMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->access$001(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    return-void
.end method
