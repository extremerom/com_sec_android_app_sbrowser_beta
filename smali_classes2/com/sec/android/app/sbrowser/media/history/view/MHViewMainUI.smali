.class public Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;


# instance fields
.field private mActionModeAnimRunning:Z

.field private mActionModeType:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

.field private final mActivity:Landroid/app/Activity;

.field private mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

.field private mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

.field private final mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

.field private mDataSetChanged:Z

.field private mDeleteDialog:Lm/l;

.field private mInActionMode:Z

.field private mIsEnterPressed:Z

.field private mIsShiftPressed:Z

.field private mMHList:Landroidx/recyclerview/widget/RecyclerView;

.field private mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

.field private mMHViewListDecor:Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

.field private mPenDragEndIndex:I

.field private mPenDragStartIndex:I

.field private mPrevSelectedIndex:I

.field private final mRvShiftHandler:Landroid/os/Handler;

.field private mTouchActionDowned:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;->DEFAULT:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeType:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeAnimRunning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDataSetChanged:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$startActionMode$7()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$finishActionMode$5()V

    return-void
.end method

.method private bindLeftOutListItems()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v5

    if-ne v4, v1, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    int-to-double v0, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    if-lez v4, :cond_3

    sub-int v1, v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->notifyItemRangeChanged(II)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->notifyItemRangeChanged(II)V

    :cond_4
    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$onDeleteButtonClicked$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$initializeList$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$onDeleteButtonClicked$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$setOnContextMenuItemClickListener$8(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private finishActionMode()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->bindLeftOutListItems()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->finishActionMode()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewListDecor:Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/history/view/f;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/media/history/view/f;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->startCheckBoxAnimation(ZLjava/lang/Runnable;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;->DEFAULT:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setActionModeType(Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->emptySelectedItemList()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDeleteDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDeleteDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_1
    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$deleteListItem$4()V

    return-void
.end method

.method private getChildAt(II)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-gtz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static synthetic h(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$onDeleteButtonClicked$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->lambda$scrollListToShowCheckedItem$6(I)V

    return-void
.end method

.method private initializeList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0e0f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryData(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/media/history/view/j;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/media/history/view/j;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewFactory;->createListAdapter(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->isDarkModeEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    check-cast v1, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->setListener(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setSeslSPenMultiSelectedListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setSeslLongPressMultiSelectionListener()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    return p0
.end method

.method private synthetic lambda$deleteListItem$4()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->finishActionMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->updateMainLayout(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$finishActionMode$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->finishActionMode()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeList$0()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onDeleteButtonClicked$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->preDeleteStarted()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->executeDelete()V

    return-void
.end method

.method private static synthetic lambda$onDeleteButtonClicked$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onDeleteButtonClicked$3(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->emptySelectedItemList()V

    :cond_0
    return-void
.end method

.method private lambda$scrollListToShowCheckedItem$6(I)V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method private synthetic lambda$setOnContextMenuItemClickListener$8(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->shareUrl(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->playVideo(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->emptySelectedItemList()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateItemSelectedList(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onDeleteButtonClicked()V

    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0e0a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$startActionMode$7()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeAnimRunning:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mTouchActionDowned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->startActionMode()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    return-object p0
.end method

.method private notifyItemRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    if-ltz p2, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    :cond_2
    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPenDragEndIndex:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPenDragStartIndex:I

    return p0
.end method

.method private playVideo(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->selectVideoHistory()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->playVideo(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPenDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPenDragStartIndex:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0b0742

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->addItemToSelectedList(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateActionBarText()V

    return-void
.end method

.method private setOnContextMenuItemClickListener(Landroid/view/MenuItem;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/view/g;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/media/history/view/g;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;I)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method private setSeslSPenMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method private updateMainLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewListDecor:Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->showNoHistoryLayout(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateAppbarLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelButtonClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->finishActionMode()V

    return-void
.end method

.method public clearModelList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->clearModelList()V

    return-void
.end method

.method public deleteListItem()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->updateThumbnail()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateHistoryList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->isSelectedAll()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->setClearHistory(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/media/history/view/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/media/history/view/f;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x258

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x42

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x71

    if-eq v1, v2, :cond_0

    const/16 v2, 0x72

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsEnterPressed:Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_7

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsEnterPressed:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsShiftPressed:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_7

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsShiftPressed:Z

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_b

    const p1, -0x7fffffe3

    if-eq v0, p1, :cond_a

    const p1, -0x7fffffe0

    if-eq v0, p1, :cond_9

    const p1, -0x7fffffd7

    if-eq v0, p1, :cond_8

    const/16 p1, 0x70

    if-eq v0, p1, :cond_9

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->isIdentifierActionPerformed()Z

    move-result p0

    if-eqz p0, :cond_b

    return v4

    :cond_9
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemCount()I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onDeleteButtonClicked()V

    return v4

    :cond_a
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->isSelectedAll()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->selectAllListItem(Z)V

    return v4

    :cond_b
    :goto_2
    return v3
.end method

.method public finish()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->finish()V

    return-void
.end method

.method public getActionModeType()Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeType:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getController()Lcom/sec/android/app/sbrowser/media/history/view/IMHController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    return-object p0
.end method

.method public getHistoryList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getHistoryList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getMediaHistoryList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemCount()I

    move-result p0

    return p0
.end method

.method public getToolbarTitle()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->getToolbarTitle()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public insertListItem()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->isMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->isPopOverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->finishActionMode()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryData(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->insertListItem(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->updateMainLayout(Z)V

    :cond_2
    return-void
.end method

.method public isDelayNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInActionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    return p0
.end method

.method public notifyDataSetChangedIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDataSetChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDataSetChanged:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->finishActionMode()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->onConfigurationChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewFactory;->createAppBarView(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->initializeList()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewFactory;->createBottomBarView(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewFactory;->createMHListDecor(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewListDecor:Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mController:Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->updateThumbnail()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 1

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemsList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f100030

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setOnContextMenuItemClickListener(Landroid/view/MenuItem;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->onCreateOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onDeleteButtonClicked()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDeleteDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120032

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1501c5

    invoke-direct {v2, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    iget-object v4, v2, Lm/k;->a:Lm/h;

    iput-boolean v3, v4, Lm/h;->m:Z

    iput-object v1, v4, Lm/h;->f:Ljava/lang/CharSequence;

    const v1, 0x7f14004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/sbrowser/media/history/view/h;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/media/history/view/h;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V

    invoke-virtual {v2, v1, v3}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/i;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V

    iput-object v0, v4, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDeleteDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->setSEP10Dialog(Lm/l;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDeleteDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDeleteDialog:Lm/l;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0600fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onDeleteCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->onDeleteCompleted()V

    :cond_0
    return-void
.end method

.method public onDeleteStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->deleteSelectedItems()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const v1, 0x7f0b0742

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsShiftPressed:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemCount()I

    move-result p1

    if-nez p1, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->handleShiftClick(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateItemSelectedList(I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateActionBarText()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    if-eqz v1, :cond_3

    move p2, v4

    :cond_3
    iput p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsShiftPressed:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->startActionMode()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->handleShiftClick(I)V

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getHistoryList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->playVideo(Landroid/os/Bundle;)V

    :goto_1
    return v2
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mTouchActionDowned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsEnterPressed:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const v1, 0x7f0b0742

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateItemSelectedList(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->startActionMode()V

    :cond_2
    iput p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateActionBarText()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mIsEnterPressed:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    :cond_3
    return v0
.end method

.method public onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mTouchActionDowned:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeAnimRunning:Z

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->notifyDataSetChangedIfRequired()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mTouchActionDowned:Z

    :goto_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->onResume(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->isShareIntentSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->setShareIntentSelected(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->finishActionMode()V

    :cond_0
    return-void
.end method

.method public onShareButtonClicked()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getHistoryList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->shareUrl(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->emptySelectedItemList()V

    :cond_2
    return-void
.end method

.method public scrollListToShowCheckedItem(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->isAppbarExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->collapseAppbar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v1, LG6/c;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public selectAllListItem(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mPrevSelectedIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const v3, 0x7f0b0742

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->bindLeftOutListItems()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->selectAllItems(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateActionBarText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mBottomBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    return-void
.end method

.method public setActionModeType(Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeType:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    return-void
.end method

.method public startActionMode()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistoryActionMode()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->bindLeftOutListItems()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mInActionMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mAppBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->startActionMode()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mActionModeAnimRunning:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewListDecor:Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/history/view/f;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/media/history/view/f;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->startCheckBoxAnimation(ZLjava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mDataSetChanged:Z

    return-void
.end method

.method public updateItemSelectedList(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->mMHViewAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateItemSelectedList(I)V

    return-void
.end method
