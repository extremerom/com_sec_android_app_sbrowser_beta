.class public Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

.field private mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

.field mDHAdapterListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

.field private mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

.field private mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mDragEndIndex:I

.field private final mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragStartIndex:I

.field private mIsFirstLongPressIndex:I

.field private mIsLongPressDragging:Z

.field private mIsSecretMode:Z

.field private mIsShiftPressed:Ljava/lang/Boolean;

.field private mLastClickTime:J

.field private mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

.field private mPrevSelectedIndex:I

.field private mSeslLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsFirstLongPressIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDragList:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mLastClickTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsLongPressDragging:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mPrevSelectedIndex:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsShiftPressed:Ljava/lang/Boolean;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDHAdapterListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->handleShiftClick(I)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Lcom/sec/android/app/sbrowser/download/ui/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->showSecretModeDisclaimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->updateBottomBar()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->lambda$showSecretModeDisclaimer$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->lambda$showSecretModeDisclaimer$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    return-object p0
.end method

.method private calculateHeightToShiftForMultiSelect(Landroid/view/View;)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070149

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v0, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    sub-int v3, v0, p0

    if-le v2, v3, :cond_1

    sub-int/2addr v0, p0

    iget p0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDragEndIndex:I

    return p0
.end method

.method private getAnimationHelper()Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getAnimationHelper()Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    move-result-object p0

    return-object p0
.end method

.method private getChildAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsLongPressDragging:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsSecretMode:Z

    return p0
.end method

.method private static synthetic lambda$showSecretModeDisclaimer$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showSecretModeDisclaimer$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->setShouldShowSecretModeDisclaimer(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsShiftPressed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mLastClickTime:J

    return-wide v0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mPrevSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/X0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mSeslLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDragStartIndex:I

    return-void
.end method

.method private setCheckByShiftClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private showSecretModeDisclaimer(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lm/k;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f140e23

    invoke-virtual {v0, p0}, Lm/k;->e(I)V

    const p0, 0x7f140e22

    invoke-virtual {v0, p0}, Lm/k;->a(I)V

    new-instance p0, Lcom/sec/android/app/sbrowser/download/ui/x;

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/x;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f14084e

    invoke-virtual {v0, p1, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/d;-><init>(I)V

    iget-object v0, p0, Lm/k;->a:Lm/h;

    iput-object p1, v0, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsLongPressDragging:Z

    return-void
.end method

.method private updateBottomBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getCurrentActionModeType()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isTouchActionDowned()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mLastClickTime:J

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mPrevSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->calculateHeightToShiftForMultiSelect(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->getAnimationHelper()Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAdapterListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDHAdapterListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public isSelectAllDownloadList()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getAppBar()Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mAppBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getBottomBar()Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mBottomBarView:Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getMainView()Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mMainView:Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsSecretMode:Z

    return-void
.end method

.method public setIsShiftPressed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mIsShiftPressed:Ljava/lang/Boolean;

    return-void
.end method

.method public setPreviousSelectIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mPrevSelectedIndex:I

    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mSeslLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mSeslLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    :cond_0
    return-void
.end method

.method public setSeslMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->mDownloadHistoryListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method
