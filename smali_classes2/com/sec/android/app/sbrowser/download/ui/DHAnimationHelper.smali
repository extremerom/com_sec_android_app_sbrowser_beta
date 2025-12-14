.class public Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

.field private mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

.field private mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

.field private mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mHeightToShift:I

.field private mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRvShiftHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mRvShiftHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->lambda$scrollListIfRequired$0(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-object p0
.end method

.method private lambda$scrollListIfRequired$0(I)V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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


# virtual methods
.method public scrollListIfRequired()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mHeightToShift:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mHeightToShift:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->isAppBarExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->collapseAppBar()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v2, LG6/c;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-void
.end method

.method public setHeightToShift(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mHeightToShift:I

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mHeightToShift:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mHeightToShift:I

    goto :goto_0

    :cond_1
    sub-int v4, v0, v2

    if-le v3, v4, :cond_2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mHeightToShift:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setHideSelectModeAnimation(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDHListView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setIsAnimating(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    const/4 p1, 0x0

    invoke-interface {p0, v1, v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->startActionModeAnimation(LY2/d0;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setRecyclerview(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setShowSelectModeAnimation(IZ)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDHListView()Landroid/view/ViewGroup;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;->startActionModeAnimation(LY2/d0;Landroid/view/ViewGroup;Z)V

    return-void
.end method
