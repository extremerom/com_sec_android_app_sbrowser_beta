.class public Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mActionModeType:I

.field private mActionbarAnimRunning:Z

.field private mActivity:Landroid/app/Activity;

.field private final mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

.field private final mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

.field private final mCheckboxAnimationDurationDelay:J

.field private mClearSelectedList:Z

.field private mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

.field private mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

.field private mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

.field private final mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

.field private mDeleteMoreMenuPopup:Lt/x0;

.field final mDialogDismissRunnable:Ljava/lang/Runnable;

.field private mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

.field private mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

.field private mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mDownloadListParent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mEmptyLayoutScroll:Landroidx/core/widget/NestedScrollView;

.field private mEmptyLayoutTextview:Landroid/widget/TextView;

.field private mEmptyLayoutView:Landroid/widget/LinearLayout;

.field private mIsInDeleteTransition:Z

.field private mIsToolbarFocusSetupDone:Z

.field private mLayoutDirection:I

.field private final mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

.field private mMoveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;

.field private mShouldShowOptionMenu:Z

.field private mTitle:Landroid/widget/TextView;

.field private mTouchActionDowned:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCheckboxAnimationDurationDelay:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsInDeleteTransition:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDialogDismissRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mClearSelectedList:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    new-instance v6, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    new-instance v5, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    new-instance v4, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    move-object v3, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;-><init>(Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$deleteItemFromContextMenu$0(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$setSelectionForFirstItem$9()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$recreateDeleteDialog$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->dismissDeleteConfirmDialog()V

    return-void
.end method

.method private dismissDeleteConfirmDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mClearSelectedList:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mClearSelectedList:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateActiveDeleteDialog(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$executeDeleteAction$6()V

    return-void
.end method

.method private executeDelete(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setHasTransientState(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsInDeleteTransition:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->deleteSelectedItems(ZLjava/util/List;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsInDeleteTransition:Z

    return-void
.end method

.method private executeMove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1004"

    const-string v2, "Permission to move downloads from secret mode to public download"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setHasTransientState(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsInDeleteTransition:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->moveSelectedItems(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$executeDeleteAction$4()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$executeMoveAction$7()V

    return-void
.end method

.method private getStartAndEndPositions()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_3

    if-ne v3, v1, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v3

    :cond_0
    if-ne v4, v1, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v4

    :cond_1
    if-eq v3, v1, :cond_2

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$showDeleteMoreMenuPopup$3(Lt/x0;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$showDeleteMoreMenuPopup$2(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private initDHSearchViewIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onCreate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->setDHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->sendDataToSearchClient()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$deleteItemFromContextMenu$1()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$executeDeleteAction$5()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->lambda$selectAllItems$8(III)V

    return-void
.end method

.method private synthetic lambda$deleteItemFromContextMenu$0(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeDelete(ZLjava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8835"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$deleteItemFromContextMenu$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "8836"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeDeleteAction$4()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeDelete(ZLjava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "8835"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeDeleteAction$5()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "8836"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeDeleteAction$6()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeDelete(ZLjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$executeMoveAction$7()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeMove(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$recreateDeleteDialog$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    check-cast p2, Landroidx/fragment/app/J;

    invoke-virtual {p2}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p2

    const-string p3, "DownloadHistoryDeleteDialog"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateActiveDeleteDialog(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V

    return-void
.end method

.method private synthetic lambda$selectAllItems$8(III)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    sub-int/2addr p1, p2

    add-int/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->notifyItemRangeChangedForSelection(II)V

    return-void
.end method

.method private synthetic lambda$setSelectionForFirstItem$9()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchEditTextData()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$showDeleteMoreMenuPopup$2(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b0432

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0436

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeDeleteAction(Z)V

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeDeleteAction(Z)V

    return v1
.end method

.method private synthetic lambda$showDeleteMoreMenuPopup$3(Lt/x0;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    return-object p0
.end method

.method private recreateDeleteDialog()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->getDialogMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->getDialogTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->getPositiveButtonMsg()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->getListener()Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/sec/android/app/sbrowser/backup/a;

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/backup/a;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private selectAllItems(Z)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setPreviousSelectIndex(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getStartAndEndPositions()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemForView(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const v5, 0x7f0b0441

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v5, 0x7f0b044d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14067d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14067e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-string v7, ", "

    invoke-static {v6, v7}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f140b8f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    add-int/lit8 p1, p1, 0x2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/download/ui/v;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/v;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;III)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectIfRequiredAndStartActionMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setActionModeType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p1, v1, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mClearSelectedList:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->startBottomBarDelete()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mClearSelectedList:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->startBottomBarRemoveFromHistory()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mClearSelectedList:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeMoveAction()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->startActionMode(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setupToolbarFocusHandling()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsToolbarFocusSetupDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->setupToolbarFocusHandling()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsToolbarFocusSetupDone:Z

    return-void
.end method

.method private showDeleteConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    check-cast p3, Landroidx/fragment/app/J;

    invoke-virtual {p3}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p3

    const-string p4, "DownloadHistoryDeleteDialog"

    invoke-virtual {p1, p3, p4}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateActiveDeleteDialog(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8834"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showMoveConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p1, p3, p4}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    check-cast p2, Landroidx/fragment/app/J;

    invoke-virtual {p2}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p2

    const-string p3, "DownloadHistoryDeleteDialog"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateActiveDeleteDialog(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V

    return-void
.end method


# virtual methods
.method public addViewToToolbar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->addViewToToolbar(Landroid/view/View;)V

    return-void
.end method

.method public adjustKeyboardForView()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->isShowingRecentSearch()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void
.end method

.method public deleteItemFromContextMenu(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120019

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140433

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/q;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDialogDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v2, p1, v4}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    move-result-object p1

    const-string v2, ""

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->showDeleteConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public executeDeleteAction(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120019

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140433

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDialogDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v1, v2, v4}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->showDeleteConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12001b

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140479

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-le v0, v3, :cond_2

    const v0, 0x7f140493

    goto :goto_0

    :cond_2
    const v0, 0x7f140495

    goto :goto_0

    :cond_3
    if-le v0, v3, :cond_4

    const v0, 0x7f140492

    goto :goto_0

    :cond_4
    const v0, 0x7f140494

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDialogDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v2, v4, v5}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->showDeleteConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p0, "DownloadHistoryUi"

    const-string p1, "Will not show dialog for already showing dialog or no item selected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public executeMoveAction()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12001a

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140480

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140481

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDialogDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v4, v3, v5, v6}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->showMoveConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "DownloadHistoryUi"

    const-string v0, "Already in action mode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public executeSelectAll(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->selectAllItems(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->checkSelectAllCheckbox(Z)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateSelectAllText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateAppBarInfo()V

    return-void
.end method

.method public filter(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-object p0
.end method

.method public getAllDownloadsList()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getAllDownloadsList()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationHelper()Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    return-object p0
.end method

.method public getAppBar()Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    return-object p0
.end method

.method public getBottomBar()Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    return-object p0
.end method

.method public getCurrentActionModeType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    return p0
.end method

.method public getCurrentFilterType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilterType()I

    move-result p0

    return p0
.end method

.method public getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getDownloadItemForView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemForView(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyScrollView()Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutScroll:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method public getFilteredCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result p0

    return p0
.end method

.method public getMainView()Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "302"

    goto :goto_0

    :cond_0
    const-string p0, "878"

    :goto_0
    return-object p0
.end method

.method public getSearchResultListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSearchResultListSize()I

    move-result p0

    return p0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public handleTouchEventOnRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->isVisible()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionbarAnimRunning:Z

    if-eqz p1, :cond_3

    return v0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/p;

    const/4 v1, 0x2

    invoke-direct {p2, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/p;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-interface {p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->postOnBottomBarHandler(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_4
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    :goto_0
    return v0
.end method

.method public hideActionModeIfNeeded()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setHasTransientState(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getStartAndEndPositions()Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0, v3}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iget v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHideSelectModeAnimation(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setIsActionModeShown(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->resetCheckedState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->setDownloadFilterEnabled(Z)V

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateToolbar(ZLandroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHeightToShift(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setPreviousSelectIndex(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    :cond_1
    return-void
.end method

.method public hideSearchView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->hideSearchView()V

    return-void
.end method

.method public isActionModeShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result p0

    return p0
.end method

.method public isSearchViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->isSearchViewVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectAllChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->isSelectAllChecked()Z

    move-result p0

    return p0
.end method

.method public isSelectAllDownloadList()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isSaveAllRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchActionDowned()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    return p0
.end method

.method public notifyAppBarHeightChangedWithDelay(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->notifyAppBarHeightChangedWithDelay(Z)V

    return-void
.end method

.method public notifyList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->hideActionModeIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->showKeyboard()V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->hideSearchView()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->updateWindowLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->applyExtendAppBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->notifyAppBarHeightChangedWithDelay(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->onConfigurationChanged()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mLayoutDirection:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->addRecyclerViewRoundCorners()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->recreateDeleteDialog()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0e01f0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b043b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onCreate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->applyExtendAppBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b0451

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadListParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isLaunchedFromMainMoreMenu()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isOpenedFromNotification()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadListParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LP0/h;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f3e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadListParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b0450

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onCreate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b049a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutScroll:Landroidx/core/widget/NestedScrollView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b049c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutView:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b049b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutTextview:Landroid/widget/TextView;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-direct {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setActionModeType(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->getAdapterListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setListener(Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onCreate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setRecyclerview(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mLayoutDirection:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->getMainListItemTouchListener()Landroidx/recyclerview/widget/N0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->addRecyclerViewRoundCorners()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->setDHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->onCreate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setSeslMultiSelectedListener()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setSeslLongPressMultiSelectionListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->getMainListItemTouchListener()Landroidx/recyclerview/widget/N0;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    return-void
.end method

.method public onFilterChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onFilterChanged(I)V

    return-void
.end method

.method public onMoveOperationCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMoveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->finishMoveOperation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMoveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsInDeleteTransition:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setHasTransientState(Z)V

    return-void
.end method

.method public onMoveOperationStart(I)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMoveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;

    return-void
.end method

.method public onMoveProgress()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMoveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->updateProgress()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0432

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8754"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->initDHSearchViewIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->showSearchView()V

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->executeDeleteAction(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->selectIfRequiredAndStartActionMode(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1003"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->selectIfRequiredAndStartActionMode(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->selectIfRequiredAndStartActionMode(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8775"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->hideSearchView()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b0435
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mLayoutDirection:I

    if-nez p0, :cond_0

    const p0, 0x7f010117

    goto :goto_0

    :cond_0
    const p0, 0x7f010116

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v1, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->onPrepareOptionsMenu(Landroid/view/Menu;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->setupToolbarFocusHandling()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchEditTextData()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->showKeyboard()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setShouldUiUpdate()V

    return-void
.end method

.method public onSelectionUpdated()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->hideActionModeIfNeeded()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSelectAllDownloadList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mIsInDeleteTransition:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSelectAllChecked()Z

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->checkSelectAllCheckbox(Z)Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateAppBarInfo()V

    :goto_1
    return-void
.end method

.method public onShareIntentLaunched()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->hideActionModeIfNeeded()V

    :cond_0
    return-void
.end method

.method public onToolbarKeyEventDown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->focusSpinner()V

    return-void
.end method

.method public onVoiceSearchResult(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->onVoiceSearchResult(Landroid/content/Intent;)V

    return-void
.end method

.method public openDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->addRecentSearchAndDismissKeyBoard()V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->checkReadStoragePermissionAndOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public removeSearchClientEntry(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->isSearchClientInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->removeSearchClientEntry(Ljava/lang/String;)V

    return-void
.end method

.method public removeViewFromToolbar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->removeViewFromToolbar(Landroid/view/View;)V

    return-void
.end method

.method public renameDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->showRename(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void
.end method

.method public requestSearchEditTextDataFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchEditTextData()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionbarAnimRunning:Z

    return-void
.end method

.method public setAppBarExpanded(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->setExpanded(Z)V

    return-void
.end method

.method public setGoToTopAndHoverBottomPadding(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->setGoToTopAndHoverBottomPadding(I)V

    return-void
.end method

.method public setIsShiftPressed(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSelectionListener:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setIsShiftPressed(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSelectionForFirstItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->startActionMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/t;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/t;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setShouldShowOptionMenu(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    return-void
.end method

.method public setTouchActionDowned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    return-void
.end method

.method public showDeleteMoreMenuPopup(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lt/x0;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f150200

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x11

    invoke-direct {v0, v1, p1, v2}, Lt/x0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    const p1, 0x7f10000c

    invoke-virtual {v0, p1}, Lt/x0;->inflate(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSelectAllDownloadList()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    invoke-virtual {p1}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f14046e

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/u;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/u;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/u;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/u;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDeleteMoreMenuPopup:Lt/x0;

    invoke-virtual {p0}, Lt/x0;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showDeleteTransition()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$DownloadDeleteTransition;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$DownloadDeleteTransition;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V

    invoke-virtual {v0, v1}, LY2/n0;->addListener(LY2/d0;)LY2/n0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->showKeyboard()V

    :cond_0
    return-void
.end method

.method public showHideSpinnerBar(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->showHideSpinnerBar(Z)V

    return-void
.end method

.method public showNoDownloadLayout(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutScroll:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadListParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->notifyAppBarHeightChangedWithDelay(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutTextview:Landroid/widget/TextView;

    const v0, 0x7f140548

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutTextview:Landroid/widget/TextView;

    const v0, 0x7f140800

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutTextview:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060bd3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutTextview:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f06020e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutScroll:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadListParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mEmptyLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public showSearchView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->initDHSearchViewIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->showSearchView()V

    return-void
.end method

.method public showSelectAllCheckBoxAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->removeViewFromToolbar(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->showSelectAllCheckBoxAnimation()V

    return-void
.end method

.method public smartSearchInsert(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->smartSearchInsert(Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public startActionMode(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setIsActionModeShown(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setActionModeType(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateActionbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->updateAppBarInfo()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->showSelectAllCheckBoxAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateSelectAllText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHAnimationHelper:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActionModeType:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTouchActionDowned:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setShowSelectModeAnimation(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->setDownloadFilterEnabled(Z)V

    return-void
.end method

.method public updateActiveDeleteDialog(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mCurrentActiveDialog:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    return-void
.end method

.method public updateAppBarInfo()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateAppBarInfo(Z)V

    return-void
.end method

.method public updateToolbar(ZLandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Lm/b;->q(Z)V

    invoke-virtual {v0, v2}, Lm/b;->n(Z)V

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0, v1}, Lm/b;->p(Z)V

    invoke-virtual {v0, p2}, Lm/b;->l(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v2}, Lm/b;->p(Z)V

    invoke-virtual {v0, p2}, Lm/b;->l(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mShouldShowOptionMenu:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lm/b;->q(Z)V

    invoke-virtual {v0, v2}, Lm/b;->n(Z)V

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0, v2}, Lm/b;->p(Z)V

    invoke-virtual {v0, p2}, Lm/b;->l(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->mDHSearchView:Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->getSearchView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->addViewToToolbar(Landroid/view/View;)V

    :goto_0
    return-void
.end method
