.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;,
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;,
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$RoleDescriptionAccessibilityDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private final mActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

.field private mAnimDuration:I

.field private final mContext:Landroid/content/Context;

.field private final mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mIconFetchHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mIsMakeOverNewUIEnabled:Z

.field private mLastSelectedItem:I

.field private mTabSyncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;"
        }
    .end annotation
.end field

.field private final mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

.field private mViewDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mAnimDuration:I

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIconFetchHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mLastSelectedItem:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIsMakeOverNewUIEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;->getUi()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setViewData()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$sortTabByGroup$1(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$onBindCategoryViewHolder$3(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$onBindCategoryViewHolder$4(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private canShowUrl(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private collapseGroup(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getType()I

    move-result v2

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method private collapseGroup(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->collapseGroup(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupDivider:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$onBindNormalViewHolder$6(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$onBindCategoryViewHolder$5(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private expandGroup(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V
    .locals 5

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    add-int v3, p1, v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    return-void
.end method

.method private expandGroup(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->expandGroup(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupDivider:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$sortTabByGroup$0(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->lambda$onBindCategoryViewHolder$2(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private getCheckboxWidth()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071552

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07156f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071551

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method private getChildAt(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method private getCorner(II)I
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/16 p0, 0xf

    return p0

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    if-eqz v0, :cond_4

    const/16 p0, 0xc

    :cond_4
    return p0
.end method

.method private getHideSelectModeAnimListener(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method private getItemCountForAnimation(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getShowSelectModeListener(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private handleIconRequestForNewUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V
    .locals 2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mFavIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mFavIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIconFetchHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIsAnimating:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->runHideSelectModeAnim()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindCategoryViewHolder$2(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setBackgroundByCheck(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$onBindCategoryViewHolder$3(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->onGroupItemClick(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindCategoryViewHolder$4(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->onGroupIndicatorClick(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindCategoryViewHolder$5(ILandroid/view/View;)Z
    .locals 1

    const-string p2, "[header:onLongClick] position: "

    const-string v0, "TabSyncListAdapter"

    invoke-static {p1, p2, v0}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isEditMode()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    return v0
.end method

.method private synthetic lambda$onBindNormalViewHolder$6(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;->onClick(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sortTabByGroup$0(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$sortTabByGroup$1(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->runShowSelectModeAnim()Z

    move-result p0

    return p0
.end method

.method private onBindCategoryViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V
    .locals 11

    move-object v6, p1

    check-cast v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    iput-object p3, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isEditMode()Z

    move-result v1

    const/4 v3, 0x4

    const/4 v7, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupIndex()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(Z)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v6, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setBackgroundByCheck(Landroid/view/View;Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v6, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, v7, v4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;ZZ)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v6, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;ZZ)V

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$RoleDescriptionAccessibilityDelegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14058d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$RoleDescriptionAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :goto_1
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/d;

    invoke-direct {v0, p0, v6}, Lcom/sec/android/app/sbrowser/tab_sync/d;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v9, Lcom/sec/android/app/sbrowser/tab_sync/e;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab_sync/e;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v8, p1

    check-cast v8, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    iget-object v9, v8, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    new-instance v10, Lcom/sec/android/app/sbrowser/tab_sync/e;

    const/4 v5, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab_sync/e;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, v8, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v7

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setGroupIndicatorContentDescription(Landroid/view/View;Z)V

    return-void
.end method

.method private onBindNormalViewHolder(Landroidx/recyclerview/widget/h1;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setGroupView(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;)V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setUrlView(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getCorner()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildDivider:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIsMakeOverNewUIEnabled:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->handleIconRequestForNewUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_sync/f;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/tab_sync/f;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    if-eq v1, p2, :cond_5

    const/16 p2, 0xc

    const/high16 v4, 0x41900000    # 18.0f

    if-eq v1, p2, :cond_4

    const/16 p2, 0xf

    if-eq v1, p2, :cond_3

    const p2, 0x7f080758

    :goto_2
    move v2, v4

    goto :goto_3

    :cond_3
    const p2, 0x7f080759

    move v0, v2

    goto :goto_3

    :cond_4
    const p2, 0x7f080757

    move v0, v2

    goto :goto_2

    :cond_5
    const p2, 0x7f080755

    :goto_3
    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p2, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p2, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3, v1, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private onGroupIndicatorClick(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2

    const-string v0, "[onGroupIndicatorClick] position: "

    const-string v1, "TabSyncListAdapter"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p4, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->onGroupIndicatorClickInEditMode(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->toggleGroupItem(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V

    return-void
.end method

.method private onGroupIndicatorClickInEditMode(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCountDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->toggle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupIndex()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    iput-boolean p2, p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->handleSelectAll()V

    return-void
.end method

.method private onGroupItemClick(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2

    const-string v0, "[onGroupItemClick] position: "

    const-string v1, "TabSyncListAdapter"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->onGroupItemClickInEditMode(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->toggleGroupItem(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V

    return-void
.end method

.method private onGroupItemClickInEditMode(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;)V
    .locals 1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isShiftKeyPressed()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setLastSelectedItem(I)V

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectWithShift(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCountDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->toggle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupIndex()I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p4

    iput-boolean p4, p2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setLastSelectedItem(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->handleSelectAll()V

    return-void
.end method

.method private runHideSelectModeAnim()Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getCheckboxWidth()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    neg-int v2, v2

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getItemCountForAnimation(I)I

    move-result v0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIsAnimating:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x190

    :goto_0
    iput v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mAnimDuration:I

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-direct {p0, v2, v1, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->runHideSelectModeAnimOnItem(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private runHideSelectModeAnimOnItem(III)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b03e4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxOutroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "translationX"

    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mAnimDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getHideSelectModeAnimListener(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private runShowAnimOnItem(IZIIII)V
    .locals 3

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b03e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b064a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    if-eqz v0, :cond_1

    iput-boolean p2, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    :cond_1
    sub-int/2addr p1, p2

    if-ne p6, p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->updateSelectAllLayoutNoDelay()V

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    neg-int p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p2, p4

    invoke-virtual {v1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p3, p5

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mAnimDuration:I

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getShowSelectModeListener(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private runShowSelectModeAnim()Z
    .locals 13

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getItemCountForAnimation(I)I

    move-result v0

    const-string v1, "[showAnim] grpCount : "

    const-string v2, "TabSyncListAdapter"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isActionModeWithSelectAll()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v3

    :goto_1
    const-string v1, "[showAnim] shouldCheckAll : "

    invoke-static {v1, v2, v9}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->updateSelectAllLayoutNoDelay()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getCheckboxWidth()I

    move-result v10

    neg-int v1, v10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    move v11, v10

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->showActionBarCheckBox(Z)V

    move v12, v8

    :goto_3
    if-ge v12, v0, :cond_4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move v3, v9

    move v4, v10

    move v5, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->runShowAnimOnItem(IZIIII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    return v8
.end method

.method private selectWithShiftPerItem(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setLastSelectedItem(I)V

    iget-boolean p2, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectListItem(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBackgroundByCheck(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f0803c0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f0803be

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private setGroupIndicatorContentDescription(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f14032c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f140501

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setGroupView(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildGroup:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildGroup:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupColor()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getGroupColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060d2f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0, v0}, LX0/a;->c(II)I

    move-result p0

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildGroup:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildGroup:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildGroup:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private setItemCorners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getCorner(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->setCorner(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUrlView(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildUrl:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->canShowUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setViewData()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setViewDataGroup(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setViewDataChild(ILcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;I)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;
    .locals 7

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->tabSyncList:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;->groupName:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;->groupColor:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO$TabSyncItems;->url:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object p2
.end method

.method private setViewDataGroup(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->deviceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->tabSyncList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-direct {p0, p1, v0, v4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setViewDataChild(ILcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;I)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->sortTabByGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setItemCorners(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private sortTabByGroup(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/g;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private toggleGroupItem(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;ZZ)V

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->expandGroup(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->collapseGroup(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V

    :goto_0
    iget-object p1, p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setGroupIndicatorContentDescription(Landroid/view/View;Z)V

    if-nez v0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 p0, 0x1

    :goto_1
    const-string p2, "403"

    const-string v0, "4041"

    invoke-static {p2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public clearCheckBoxStates()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iput-boolean v1, v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0x7f0b03e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public collapseAllGroups()V
    .locals 4

    const-string v0, "[collapseAllGroups]"

    const-string v1, "TabSyncListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const-string v2, "[collapseAllGroups] i: "

    invoke-static {v0, v2, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->collapseGroup(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public deleteGroup(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getGroupIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge p1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->setGroupIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public expandAllGroups()V
    .locals 3

    const-string v0, "TabSyncListAdapter"

    const-string v1, "[expandAllGroups]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getType()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getInvisibleChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->expandGroup(ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getItemViewType] Exception\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TabSyncListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedCount()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getSelectedCountDescription(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140801

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140655

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12005f

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTabSyncListData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->onBindNormalViewHolder(Landroidx/recyclerview/widget/h1;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->onBindCategoryViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mIsMakeOverNewUIEnabled:Z

    const/4 v2, 0x0

    if-nez p2, :cond_1

    if-eqz v1, :cond_0

    const p2, 0x7f0e08da

    goto :goto_0

    :cond_0
    const p2, 0x7f0e08d9

    :goto_0
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    if-eqz v1, :cond_2

    const p2, 0x7f0e08dc

    goto :goto_1

    :cond_2
    const p2, 0x7f0e08db

    :goto_1
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public selectAll(Z)V
    .locals 6

    const-string v0, "[selectAll] isChecked : "

    const-string v1, "TabSyncListAdapter"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setLastSelectedItem(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-boolean v4, v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    if-eq v4, p1, :cond_1

    iput-boolean p1, v3, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const v5, 0x7f0b03e4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[selectAll] IndexOutOfBoundsException: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_6
    :goto_3
    return-void
.end method

.method public selectListItem(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(Z)V

    return-void
.end method

.method public selectWithShift(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mLastSelectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    move v0, p2

    move p2, v2

    :goto_0
    if-gt p2, v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectWithShiftPerItem(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->handleSelectAll()V

    const/4 p0, 0x1

    return p0
.end method

.method public setHeaderIndicatorAnimation(Landroid/view/View;ZZ)V
    .locals 0

    const p0, 0x7f0b055d

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p3, :cond_2

    const-wide/16 p1, 0xc8

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public setHideSelectModeAnimation()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectAll(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setLastSelectedItem(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mLastSelectedItem:I

    return-void
.end method

.method public setShowSelectModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mExpandableListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setTabSyncListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->mTabSyncList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setViewData()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
