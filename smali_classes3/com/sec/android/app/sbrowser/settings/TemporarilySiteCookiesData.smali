.class public Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteListenerInterface;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;
    }
.end annotation


# instance fields
.field private mActionModeContainerView:Landroid/view/View;

.field private mActionModeView:Landroid/widget/LinearLayout;

.field private mActionbarAnimRunning:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field private final mBottomBarHandler:Landroid/os/Handler;

.field private mBottomBarMarginView:Landroid/view/View;

.field private mCancelButton:Landroid/view/View;

.field private mCheckStates:[Z

.field private mCountTextView:Landroid/widget/TextView;

.field private mCounter:I

.field private mDeleteAction:Landroid/view/MenuItem;

.field private mDeleteBottomBarButton:Landroid/widget/LinearLayout;

.field private mDeleteMenuItem:Landroid/widget/LinearLayout;

.field private mDeleteTextView:Landroid/widget/TextView;

.field private mDragEndIndex:I

.field private mDragStartIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mHeightToShift:I

.field private mIsActionMode:Z

.field private mIsDeleting:Z

.field private mIsLongPressDragging:Z

.field private mIsScrolling:Z

.field private mIsShiftPressed:Z

.field private mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mMainAppBarTitle:Landroid/widget/TextView;

.field private mNoItemBackground:Landroid/view/View;

.field private mOffsetChangeListener:Lc6/e;

.field private mPrevSelectedIndex:I

.field private mRvShiftHandler:Landroid/os/Handler;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private final mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTextDescription:Landroid/widget/TextView;

.field private mTouchActionDowned:Z

.field private mVisible:Z

.field private mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWebsiteDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsShiftPressed:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsLongPressDragging:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsScrolling:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsDeleting:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/p;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$3;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$6;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mOffsetChangeListener:Lc6/e;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDragEndIndex:I

    return p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    return p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsLongPressDragging:Z

    return p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsShiftPressed:Z

    return p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mNoItemBackground:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mTouchActionDowned:Z

    return p0
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionbarAnimRunning:Z

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDragStartIndex:I

    return-void
.end method

.method public static bridge synthetic O(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsLongPressDragging:Z

    return-void
.end method

.method public static bridge synthetic P(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic Q(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mTouchActionDowned:Z

    return-void
.end method

.method public static bridge synthetic R(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic S(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->displayWebsiteList(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic T(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->handleShiftClick(I)V

    return-void
.end method

.method public static bridge synthetic V(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->scrollListIfRequired()V

    return-void
.end method

.method public static bridge synthetic W(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setHeightToShift(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic X(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateBottomBar()V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateSelectAllCheckBox()V

    return-void
.end method

.method private displaySelectModeUI(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeContainerView:Landroid/view/View;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    return-void
.end method

.method private displayWebsiteList(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mNoItemBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setmCheckStates([Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setSeslOnMultiSelectedListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setSeslLongPressMultiSelectionListener()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->showNoItemLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method private getChildAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-lez p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v1, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p0, 0x7f140801

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f140655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, ", "

    invoke-static {v0, v1, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private handleSelectAllCheckBox()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    aput-boolean v5, v4, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getmGroupCount()I

    move-result v1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateSelectAllCheckBox()V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private hideBottomBar()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/Q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/Q;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$configureActionModeView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$hideBottomBar$2()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$configureActionModeView$3(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$configureActionModeView$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$configureActionModeView$4()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$configureActionModeView$5(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/Q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/Q;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$configureActionModeView$6(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140ce1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Select"

    goto :goto_0

    :cond_0
    const-string v1, "Deselect"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->handleSelectAllCheckBox()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$configureActionModeView$7(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->handleSelectAllCheckBox()V

    return-void
.end method

.method private synthetic lambda$hideBottomBar$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsDeleting:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->deleteSelectedData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140ce2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->destroyDeleteMode()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setIsActionMode(Z)V

    :cond_0
    return-void
.end method

.method private lambda$scrollListIfRequired$8(I)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$configureActionModeView$4()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$scrollListIfRequired$8(I)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$configureActionModeView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->lambda$configureActionModeView$6(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionbarAnimRunning:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private relayoutActionModeView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->configureActionModeView()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    return-object p0
.end method

.method private scrollListIfRequired()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHeightToShift:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHeightToShift:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->isAppbarExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->collapseAppbar()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v2, LG6/c;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setBottomBarDeleteText()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140434

    goto :goto_0

    :cond_0
    const v1, 0x7f140433

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    const-string v2, ", "

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1402b1

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    aget-boolean v1, v0, p1

    if-nez v1, :cond_2

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setHeightToShift(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHeightToShift:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHeightToShift:I

    goto :goto_0

    :cond_1
    sub-int v4, v0, v2

    if-le v3, v4, :cond_2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHeightToShift:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setOnSelectionMode()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->createDeleteMode()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->startCheckBoxAnimation(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getmGroupCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->handleSelectAllCheckBox()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateSelectAllCheckBox()V

    return-void
.end method

.method private setSelectAllCheckBoxContentDesc()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f141085

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showBottomBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$4;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method private showNoItemLayout()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mNoItemBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mNoItemBackground:Landroid/view/View;

    const v1, 0x7f0b0813

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSubTextDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSubTextDescription:Landroid/widget/TextView;

    const v0, 0x7f14080d

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateBottomBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140f5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mTouchActionDowned:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSelectAllCheckBox()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getmGroupCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mTouchActionDowned:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setBottomBarDeleteText()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateBottomBar()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    const v2, 0x7f14028a

    const v3, 0x7f140b8f

    const v4, 0x7f14105f

    const-string v5, ", "

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v2, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    const v6, 0x7f140289

    invoke-static {v2, v6, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v2, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setSelectAllCheckBoxContentDesc()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateAppBarInfo()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarMarginView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    return p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method public configureActionModeView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0913

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0aec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0b5f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0540

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeContainerView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/S;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/S;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/S;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/S;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/S;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/S;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getmGroupCount()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_MOCHA:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/S;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/settings/S;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->displaySelectModeUI(Z)V

    return-void
.end method

.method public createDeleteMode()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setIsActionMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->configureActionModeView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateSelectAllCheckBox()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->showSelectAllCheckBoxAnimation()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->startCheckBoxAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public deleteSelectedData()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->isHeader(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/website/Website;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->loadItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/website/Website;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setTemporaryAllowedStorage(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->showNoItemLayout()V

    :cond_8
    return-void
.end method

.method public destroyDeleteMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->displaySelectModeUI(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setIsActionMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->resetCheckBoxStates()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->showSelectAllCheckBoxAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->startCheckBoxAnimation(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->updateAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsDeleting:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mPrevSelectedIndex:I

    return-void
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140ce0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz p0, :cond_0

    const-string p0, "566"

    goto :goto_0

    :cond_0
    const-string p0, "565"

    :goto_0
    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->destroyDeleteMode()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->relayoutActionModeView()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getActionModeView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionModeView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-nez v0, :cond_0

    const v0, 0x7f100031

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0e4b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteAction:Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteAction:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->tintMenuIcon(Landroid/view/MenuItem;Landroid/app/Activity;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0e08e9

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b06a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0814

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getCollapsingToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mMainAppBarTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mNoItemBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0e0921

    invoke-virtual {p1, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0b0e4d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    const p3, 0x7f0b047f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarMarginView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, p3}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    const p3, 0x7f0b02da

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/S;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/S;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    const v3, 0x7f14004e

    const-string v4, ", "

    invoke-static {v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p3, 0x7f0b03e5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchStoragePreferences()V

    return-object p2
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->handleSelectAllCheckBox()V

    :cond_0
    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->deleteSelectedData()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->destroyDeleteMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setIsActionMode(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWebsiteDeleteList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b0e4b

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cdf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setOnSelectionMode()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteAction:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteTextView:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->setDeleteTextBackground(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsShiftPressed:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14092f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public resetCheckBoxStates()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCheckStates:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDeleteVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->showBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07135b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->hideBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071354

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    :cond_1
    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method public setSeslOnMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public showSelectAllCheckBoxAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActionbarAnimRunning:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$7;-><init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteUtils;->getChangeBounds(Z)LY2/i;

    move-result-object v3

    invoke-static {v2, v3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mWDRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0d2a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsDeleting:Z

    if-nez v5, :cond_3

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public updateAppBarInfo()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mMainAppBarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mIsActionMode:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140f5b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->mCounter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v1, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const p0, 0x7f14092f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
