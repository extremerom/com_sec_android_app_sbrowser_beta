.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;
.super Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

.field private mAdapterListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

.field private mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

.field private mByPassActionMode:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

.field private mGroupCount:I

.field private mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

.field private mHistoryContainer:Landroid/widget/LinearLayout;

.field private mHistoryContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

.field private mHistoryItemNums:[I

.field private mHistoryItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

.field private mIsDeleteCall:Z

.field private mIsFirstLaunch:Z

.field private mIsFirstLongPressIndex:I

.field private mIsLongPressDragging:Z

.field private mIsShareCall:Z

.field private mIsShiftPressed:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/D0;

.field private mLayoutDirection:I

.field private mMainHistoryLayout:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

.field private mNoHistoryLayout:Landroid/widget/LinearLayout;

.field private mOptionsMenuSelected:Z

.field private mPrevSelectedIndex:I

.field private mSelectedItemsCountByCategory:[I

.field private final mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mOptionsMenuSelected:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mLayoutDirection:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsFirstLaunch:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mContainer:Landroid/view/ViewGroup;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsLongPressDragging:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mPrevSelectedIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsFirstLongPressIndex:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShiftPressed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    const/16 v0, 0x5c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedItemsCountByCategory:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemsMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mAdapterListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsLongPressDragging:Z

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mOptionsMenuSelected:Z

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mPrevSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedItemsCountByCategory:[I

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->handleShiftClick(II)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->isLastView(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->refreshActionMenu()V

    return-void
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/view/ContextMenu;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->selectItemForContextMenu(Landroid/view/ContextMenu;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    return-void
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setCheckByShiftClick(II)V

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->showConfirmDialog()V

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->startActionMode()V

    return-void
.end method

.method public static synthetic access$002(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showSelectAllCheckBoxAnimation(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsHideBottomBarAnimation:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->startCheckBoxAnimation(Z)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$2100(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setLongPressDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    return p0
.end method

.method public static synthetic access$2300(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideSearchViewWithDelay()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$2502(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    return p1
.end method

.method public static synthetic access$2600(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideSearchViewWithDelay()V

    return-void
.end method

.method public static synthetic access$2800(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private calculateHistoryNumPerGroup(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->calculateHistoryNumPerGroup(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->lambda$startActionMode$4()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->lambda$setHistoryData$3()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->lambda$onFinishDeleteMode$5()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->lambda$initializeListView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->lambda$initializeListView$2(Landroid/view/View;)V

    return-void
.end method

.method private handleDelete(Landroid/view/KeyEvent;Z)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShareCall:Z

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->handleDelete(Landroid/view/KeyEvent;ZZZLjava/util/ArrayList;Z)Z

    move-result p0

    return p0
.end method

.method private handleDpadDown(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->handleDpadDown(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private handleKeyCodeA(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->handleKeyCodeA(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method private handleOneItemSelection(Landroid/view/MenuItem;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b03dd

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->selectAllHistoryItem(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->showConfirmDialog()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsDeleteCall:Z

    :cond_0
    return-void
.end method

.method private handleShiftClick(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mPrevSelectedIndex:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mAdapterListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->handleShiftClick(IIILcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->lambda$inflateVideoHistoryPane$0()V

    return-void
.end method

.method private inflateVideoHistoryPane(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/history/view/e;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/e;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    return-void
.end method

.method private initializeListView(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0454

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    const v1, 0x7f0b05d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    const v1, 0x7f0b07e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    const v1, 0x7f0b05cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->initializeBottomBar()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    const v4, 0x7f0b047f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarMarginView:Landroid/view/View;

    const v3, 0x7f0b01bb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    if-nez v4, :cond_2

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarMarginView:Landroid/view/View;

    invoke-direct {v4, v3, v5}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/d;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setShareButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/d;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setDeleteButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showBottomBar()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->inflateVideoHistoryPane(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->refreshActionMenu()V

    :cond_6
    return-void
.end method

.method private isLastView(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemPosition(II)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getTotalItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mAdapterListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    return-object p0
.end method

.method private synthetic lambda$inflateVideoHistoryPane$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->launchVideoHistory()V

    return-void
.end method

.method private synthetic lambda$initializeListView$1(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->shareHistoryData()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "311"

    const-string v2, "3210"

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCrownUxAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeListView$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->showConfirmDialog()V

    return-void
.end method

.method private synthetic lambda$onFinishDeleteMode$5()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->startCheckBoxAnimation(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setHistoryData$3()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startActionMode$4()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    :cond_0
    return-void
.end method

.method private loadNoHistoryLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "loadNoHistoryLayout : "

    const-string v1, "HistoryBaseUi"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private onOptionMenuCreate(Landroid/view/Menu;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f10000f

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setMenu(Landroid/view/Menu;)V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    const p0, 0x7f0b0b78

    invoke-interface {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setColorForActionBarIcon(ILandroid/view/Menu;)V

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x7f140f8f

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method private onOptionMenuSelect(Landroid/view/MenuItem;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b03dd

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mOptionsMenuSelected:Z

    if-nez v0, :cond_7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsDeleteCall:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->handleOneItemSelection(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mOptionsMenuSelected:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->startDeleteMode(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->selectAllHistoryItem(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setSelectedItemCount(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b02a9

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->deleteHistoryData(Z)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b0b78

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsLongPressDragging:Z

    return p0
.end method

.method private refreshActionMenu()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShareCall:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsDeleteCall:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getNonShareableUrlCount()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showBottomBar()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->isSelectAll()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setDeleteText(Z)V

    :cond_4
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShiftPressed:Z

    return p0
.end method

.method private selectItemForContextMenu(Landroid/view/ContextMenu;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->createContextMenuForSelectedItem(Landroid/app/Activity;Landroid/view/ContextMenu;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Z)V

    return-void
.end method

.method private setCheckByShiftClick(II)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemsMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedItemsCountByCategory:[I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setCheckByShiftClick(IILjava/util/ArrayList;Ljava/util/HashMap;[I)V

    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->showConfirmDialog(Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method private startActionMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->startDeleteMode(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/c;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startTransitionAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mPrevSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedItemsCountByCategory:[I

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mGroupCount:I

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemNums:[I

    return-void
.end method


# virtual methods
.method public addHistoryItemFromContextMenu(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createHistoryBaseUiHelperInstance()V
    .locals 8

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    new-instance v7, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setSeslMultiSelectedListener()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setSeslLongPressMultiSelectionListener()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x1d

    if-eq v0, v4, :cond_8

    const/16 v4, 0x20

    if-eq v0, v4, :cond_7

    const/16 v4, 0x52

    if-eq v0, v4, :cond_6

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_4

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "dispatchKeyEvent-keycode = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not handled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HistoryBaseUi"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0, p1, v3}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->handleKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result p0

    if-ne p0, v4, :cond_9

    const p0, 0x7f0b055d

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result p0

    if-ne p0, v4, :cond_9

    const p0, 0x7f0b01fe

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->handleDpadDown(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v3

    :pswitch_4
    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->requestFocus()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShiftPressed:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_9

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShiftPressed:Z

    goto :goto_1

    :cond_6
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p0, :cond_9

    return v3

    :cond_7
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->handleDelete(Landroid/view/KeyEvent;Z)Z

    move-result p0

    if-eqz p0, :cond_9

    return v3

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->handleKeyCodeA(Landroid/view/KeyEvent;)V

    :cond_9
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->dispatchMoreKeyEvent(Landroid/app/Activity;Landroid/view/Menu;Z)Z

    move-result p0

    return p0
.end method

.method public enableBottomBarButtons(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setEnabled(Z)V

    return-void
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result p0

    return p0
.end method

.method public getSelectedList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleHistoryItemClick(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->launchSelectedUrl(Ljava/lang/String;I)V

    return-void
.end method

.method public initializeForLayoutDirectionChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "HistoryBaseUi"

    const-string v0, "initializeForLayoutDirectionChange :: mMainHistoryLayout is NULL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v1, 0x7f0b05cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public isSelectAll()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getTotalItemCount()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public onAppBarHeightChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->appBarHeightChanged(ILandroid/view/ViewGroup;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->backPressed(Z)Z

    move-result p0

    return p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "share_intent_launch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isShareIntentSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    :cond_0
    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 1

    const-string p0, "311"

    const-string v0, "3214"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->updateActionbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "HistoryBaseUi"

    if-eqz v0, :cond_1

    const-string v0, "onConfigurationChanged - MultiWindowMode inflating the views"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->initializeListView(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "onConfigurationChanged - No MultiWindowMode skipping inflation"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->loadNoHistoryLayout(Z)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->initializeForLayoutDirectionChange()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->isSelectAll()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setDeleteText(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->resetLayoutHeight(Landroid/widget/LinearLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->resetLayoutHeight(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mLayoutDirection:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->initializeListView(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMainHistoryLayout:Landroid/view/View;

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedItemsCountByCategory:[I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->deleteButtonClicked(Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;[I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->destroy(Landroidx/recyclerview/widget/N0;)V

    return-void
.end method

.method public onDialogDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->dialogDismissed(Z)V

    return-void
.end method

.method public onFinishDeleteMode()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->selectAllHistoryItem(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setActionModeEnabled(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsShareCall:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsDeleteCall:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mOptionsMenuSelected:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mPrevSelectedIndex:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mByPassActionMode:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/history/view/c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/c;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->setSearchMenuEnabled(Landroid/view/Menu;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    return-void
.end method

.method public onOptionMenu(Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$8;->$SwitchMap$com$sec$android$app$sbrowser$common$sites$history$model$HistoryConstants$OptionMenuAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onOptionMenuSelect(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onOptionMenuCreate(Landroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    return-void
.end method

.method public onSelectAll(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Select"

    goto :goto_0

    :cond_0
    const-string v0, "Deselect"

    :goto_0
    const-string v1, "311"

    const-string v2, "3209"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mPrevSelectedIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->selectAllHistoryItem(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->refreshActionMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsDeleteAnimOnGoing:Z

    return p0
.end method

.method public onViewCreated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez p0, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    :cond_0
    return-void
.end method

.method public performItemTouchAction()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->refreshActionMenu()V

    return-void
.end method

.method public resetScrollPositionIfNecessary()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedHistoryItem:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sGroupPosition:I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupCount()I

    move-result v0

    sget v2, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sTotalGroup:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupCount()I

    move-result v0

    sget v2, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sTotalGroup:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->onHeaderClick(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedHistoryItem:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getHistoryItemPos(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_3
    const-string p0, "HistoryBaseUi"

    const-string v0, "resetScrollPositionIfNecessary:History Item not found in the list"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedHistoryItem:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    :cond_4
    :goto_1
    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setActionModeTitleAlpha(F)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    return-void
.end method

.method public setContextMenuDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    return-void
.end method

.method public setHistoryCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHistoryCount(I)V

    return-void
.end method

.method public setHistoryData(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HistoryBaseUi"

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const-string p1, "setHistoryData: historyItemList is null, returning early."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->loadNoHistoryLayout(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->calculateHistoryNumPerGroup(Ljava/util/List;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->loadNoHistoryLayout(Z)V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->startTransitionAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->loadNoHistoryLayout(Z)V

    :goto_0
    const-string v2, "0043"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-nez v2, :cond_6

    const-string v2, "setHistoryData create HistoryAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mAdapterListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    invoke-direct {v0, v2, v4, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/D0;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mGroupCount:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemNums:[I

    invoke-virtual {v0, p1, v2, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHistoryData(Ljava/util/List;I[I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mNestedOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsScrolling:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/e;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->startTransitionAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mGroupCount:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemNums:[I

    invoke-virtual {v0, p1, v2, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHistoryData(Ljava/util/List;I[I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setExpAdapter(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getRoundedCornerColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->addListItemsDecoration(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemCount()I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsFirstLaunch:Z

    if-eqz p1, :cond_c

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mIsFirstLaunch:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->onHeaderClick(I)V

    move p1, v3

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryItemNums:[I

    array-length v2, v0

    if-ge v3, v2, :cond_c

    aget v0, v0, v3

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    add-int/2addr p1, v0

    const/16 v0, 0xf

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->onHeaderClick(I)V

    move v1, v2

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method public setHistoryDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mHistoryBaseUiHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setHistoryUIDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;)V

    return-void
.end method

.method public setHistorySelectedItemCount()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setSelectedItemCount(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->refreshActionMenu()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    return-void
.end method

.method public setMenuItemVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->setMenuItemVisibility(ZLandroid/view/Menu;Z)V

    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public updateBottomBar()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->refreshActionMenu()V

    return-void
.end method

.method public updateHeaderOnSelectAll(Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x5c

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mSelectedItemsCountByCategory:[I

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateOnSelectAllHistoryItem(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const v3, 0x7f0b0b66

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-nez v3, :cond_0

    const v3, 0x7f0b01fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/CheckBox;

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {v3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    return-void
.end method
